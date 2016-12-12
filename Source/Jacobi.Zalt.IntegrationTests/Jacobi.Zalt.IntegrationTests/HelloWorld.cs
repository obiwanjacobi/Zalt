using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jacobi.Zim80.Test;
using Jacobi.Zim80;
using System.Linq;
using FluentAssertions;

namespace Jacobi.Zalt.IntegrationTests
{
    [TestClass]
    [DeploymentItem(OutPath + HelloWorldBin)]
    public class HelloWorld : IntegrationTest
    {
        private const string HelloWorldBin = "helloworld_CODE.bin";

        private SimulationModel _model;

        [TestInitialize]
        public void TestInitialize()
        {
            var builder = CreateModelBuilder(HelloWorldBin);
            var ioAddress = new BusTap(8);
            ioAddress.ConnectTo(builder.Model.Address);
            builder.AddOutputPort(ioAddress, builder.Model.Data, 0x20, "ConsoleOut");

            builder.AddLogicAnalyzer(false);
            builder.Model.LogicAnalyzer.ConnectInput(
                builder.Model.OutputPorts.Values.First().PortEnable.DigitalSignal);
            builder.Model.LogicAnalyzer.Start();

            _model = builder.Model;
        }

        [TestMethod]
        public void Printf_HelloWorld()
        {
            RunTest(_model, 0x009D);

            var consoleOut = _model.OutputPorts.Values.First().DataStream.ToString();
            consoleOut.Should().Be("Zalt says hello to Z88dk!");
        }
    }
}

using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jacobi.Zim80.Test;
using Jacobi.Zim80;
using System.Linq;
using FluentAssertions;
using System.Text;

namespace Jacobi.Zalt.IntegrationTests
{
    [TestClass]
    [DeploymentItem(OutPath + EchoBin)]
    public class Echo : IntegrationTest
    {
        private const string EchoBin = "echo_CODE.bin";
        private const string Message = "Hello Zalt!";

        private SimulationModel _model;

        [TestInitialize]
        public void TestInitialize()
        {
            var builder = CreateModelBuilder(EchoBin);
            //var ioAddress = new BusTap(8);
            //ioAddress.ConnectTo(builder.Model.Address);
            var ioAddress = builder.Model.Address;
            var outputPort = builder.AddOutputPort(ioAddress, builder.Model.Data, 0x20, "ConsoleOut");
            var inputPort = builder.AddInputPort(ioAddress, builder.Model.Data, 0x20, "ConsoleIn");
            inputPort.DataBuffer.Write(Encoding.ASCII.GetBytes(Message));

            builder.AddLogicAnalyzer();
            LogExecutionPath(builder.Model);

            _model = builder.Model;
        }

        [TestMethod]
        public void Echo_GetPutChar()
        {
            RunTest(_model);

            var consoleOut = _model.OutputPorts.Values.First().DataStream.ToString();
            consoleOut.Should().Be(Message);
        }
    }
}

using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jacobi.Zim80.Test;
using FluentAssertions;

namespace Jacobi.Zalt.IntegrationTests
{
    [TestClass]
    [DeploymentItem(OutPath + RingBufferBin)]
    public class RingBuffer : IntegrationTest
    {
        private const string RingBufferBin = "RingBuffer_WriteRead_CODE.bin";

        private SimulationModel _model;

        [TestInitialize]
        public void TestInitialize()
        {
            var builder = CreateModelBuilder(RingBufferBin);
            LogExecutionPath(builder.Model);

            _model = builder.Model;
        }

        [TestMethod]
        public void RingBuffer_WriteRead()
        {
            RunTest(_model);

            // isEmpty1
            _model.Memory.Get(0x08E3).Should().Be(1);
            // isEmpty2
            _model.Memory.Get(0x08E4).Should().Be(1);
            // isFull
            _model.Memory.Get(0x08E5).Should().Be(0);
            // count
            _model.Memory.Get(0x08E6).Should().Be(1);
            // val
            _model.Memory.Get(0x08E7).Should().Be(42);
        }
    }
}

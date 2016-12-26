using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jacobi.Zim80.Test;
using FluentAssertions;

namespace Jacobi.Zalt.IntegrationTests
{
    [TestClass]
    [DeploymentItem(OutPath + HeapBin)]
    public class Heap : IntegrationTest
    {
        private const string HeapBin = "Heap_test_CODE.bin";

        private SimulationModel _model;

        [TestInitialize]
        public void TestInitialize()
        {
            var builder = CreateModelBuilder(HeapBin);
            LogExecutionPath(builder.Model);

            _model = builder.Model;
        }

        [TestMethod]
        public void Heap_MallocFree()
        {
            RunTest(_model);

            var memPtr = 0x07C5;
            var mem = _model.Memory.Get2(memPtr);
            mem.Should().NotBe(0);
            _model.Memory.Get(mem).Should().Be(0);
            _model.Memory.Get(mem + 1).Should().Be(1);
            _model.Memory.Get(mem + 98).Should().Be(98);
            _model.Memory.Get(mem + 99).Should().Be(99);
        }
    }
}

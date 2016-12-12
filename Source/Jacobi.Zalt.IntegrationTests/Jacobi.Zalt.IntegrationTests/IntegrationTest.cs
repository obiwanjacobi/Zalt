using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Jacobi.Zim80.Test;
using Jacobi.Zim80.Diagnostics;
using System.IO;
using Jacobi.Zim80.CpuZ80;
using System.Text;

namespace Jacobi.Zalt.IntegrationTests
{
    public class IntegrationTest
    {
        public const string OutPath = @"";

        public TestContext TestContext { get; set; }

        protected void RunTest(SimulationModel model, ushort endAddress)
        {
            bool stop = false;
            model.Cpu.InstructionExecuted += (s, e) => {
                stop = e.Opcode.Address == endAddress;
            };

            model.ClockGen.SquareWave((c) => stop);

            if (model.LogicAnalyzer != null)
            {
                model.LogicAnalyzer.Stop();
                Console.WriteLine(model.LogicAnalyzer.ToWaveJson());
            }
        }

        protected SimulationModel CreateModel(string file)
        {
            var builder = new SimulationModelBuilder();
            builder.AddCpuClockGen();
            builder.AddCpuMemory();
            builder.AddLogicAnalyzer();

            builder.Model.Cpu.InstructionExecuted += Cpu_InstructionExecuted;

            var bytes = LoadFile(file);
            builder.Model.Memory.Write(bytes);

            return builder.Model;
        }

        protected SimulationModelBuilder CreateModelBuilder(string file)
        {
            var builder = new SimulationModelBuilder();
            builder.AddCpuClockGen();
            builder.AddCpuMemory();

            builder.Model.Cpu.InstructionExecuted += Cpu_InstructionExecuted;

            var bytes = LoadFile(file);
            builder.Model.Memory.Write(bytes);

            return builder;
        }

        private void Cpu_InstructionExecuted(object sender, Zim80.CpuZ80.InstructionExecutedEventArgs e)
        {
            var cpu = (Zim80.CpuZ80.CpuZ80)sender;

            TestContext.WriteLine(
                "{0:X4}" + 
                    new string('\t', 1) + 
                    e.Opcode.Text + 
                    new string('\t', 4 - (e.Opcode.Text.Length / 4)) +
                    FormatContext(cpu), 
                e.Opcode.Address);
        }

        private string FormatContext(CpuZ80 cpu)
        {
            var builder = new StringBuilder();
            
            builder.AppendFormat("{0}-", cpu.Registers.Flags.Z ? " Z" : "NZ");
            builder.AppendFormat("{0}-", cpu.Registers.Flags.C ? " C" : "NC");
            builder.AppendFormat("{0}-", cpu.Registers.Flags.PV ? "PE" : "PO");
            builder.AppendFormat("{0}, ", cpu.Registers.Flags.S ? "N" : "P");

            builder.AppendFormat("a:{0:X2}, ", cpu.Registers.A);
            builder.AppendFormat("bc:{0:X4}, ", cpu.Registers.BC);
            builder.AppendFormat("de:{0:X4}, ", cpu.Registers.DE);
            builder.AppendFormat("hl:{0:X4}, ", cpu.Registers.HL);
            builder.AppendFormat("ix:{0:X4}, ", cpu.Registers.IX);
            builder.AppendFormat("iy:{0:X4}, ", cpu.Registers.IY);
            builder.AppendFormat("sp:{0:X4}, ", cpu.Registers.SP);
            builder.AppendFormat("pc:{0:X4} | ", cpu.Registers.PC);
            builder.AppendFormat("af':{0:X4}, ", cpu.Registers.AlternateSet.AF);
            builder.AppendFormat("bc':{0:X4}, ", cpu.Registers.AlternateSet.BC);
            builder.AppendFormat("de':{0:X4}, ", cpu.Registers.AlternateSet.DE);
            builder.AppendFormat("hl':{0:X4}, ", cpu.Registers.AlternateSet.HL);
            return builder.ToString();
        }

        protected byte[] LoadFile(string file)
        {
            var path = Path.Combine(TestContext.TestDeploymentDir, file);
            return File.ReadAllBytes(path);
        }
    }
}

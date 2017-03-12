﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HackVMTranslator
{
    class Program
    {
        static void Main(string[] args)
        {
            bool setupMemoryMapping = false; // this is for testing purposes only, should be false for release
            string srcExt = ".vm";
            string destExt = ".asm";
            string errMsg = "no file found: ";
            string file = args[0];
            string path = "";
            int error = 0;
            string[] input;
            List<string> output = new List<string>();
            //SymbolTable table = SymbolTable.Instance;

            try
            {
                path = Path.GetFullPath(file);
            }
            catch (Exception e)
            {
                Console.WriteLine(errMsg + path);
                error = 1;
                return;
            }

            if (path.EndsWith(srcExt, System.StringComparison.CurrentCultureIgnoreCase))
            {
                input = System.IO.File.ReadAllLines(path);
            }
            else
            {
                Console.WriteLine(errMsg + path);
                error = 1;
                return;
            }

            Parser parser = new Parser(input);
            parser.RemoveComments();
            Code coder = new Code();

            int iteration = 0;
            if (setupMemoryMapping)
            {
                string memoryMapping = "";
                memoryMapping += "@256 // Setup Memory Mapping\nD=A\n@SP\nM=D\n@300\nD=A\n@LCL\nM=D\n";
                memoryMapping += "@400\nD=A\n@ARG\nM=D\n@3000\nD=A\n@THIS\nM=D\n@3010\nD=A\n@THAT\nM=D";
                output.Add(memoryMapping);
            }
            while (true)
            {
                iteration++;
                if (parser.HasMoreCommands())
                {
                    string code = "";
                    parser.Advance();
                    code = coder.CodeCommand(parser.GetCurCommand(), parser.GetCurDestination(), parser.GetCurValue(), parser.GetCurLabel());
                    //Console.WriteLine("cur command:" + parser.GetCurCommand() + " dest:" + parser.GetCurDestination() + " val:" + parser.GetCurValue());
                    output.Add(code);
                }
                else break;
            }
            string[] codeArray = output.ToArray();
            path = path.Replace(srcExt, destExt);
            Console.WriteLine("dest path: " + path);
            System.IO.File.WriteAllLines(path, codeArray);

            Console.WriteLine("\nFinal code");
            foreach (string line in output)
            {
                Console.WriteLine(line);
            }
            //Console.ReadKey(); // Pause to show the results
        }
    }
}

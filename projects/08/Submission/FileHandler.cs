﻿using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HackVMTranslator
{
    class FileHandler
    {
        bool stepByStep = false;
        string srcExt;
        string destExt;
        string[] files;
        string[] fileNames;
        string[] currentFileLines;
        List<string> lines;
        FileAttributes attr;
        bool isValid;
        bool isProgram; // if we compile mulitple files we add bootstrap code
        int currentIndex;
        string destFileName;

        public FileHandler(string[] args)
        {
            isValid = false;
            isProgram = false;
            srcExt = "vm";
            destExt = "asm";
            lines = new List<string>();
            currentIndex = -1;

            try { attr = File.GetAttributes(@args[0]); }
            catch (Exception e)
            {
                Console.WriteLine("Invalid file or folder path, press Enter to quit");
                Console.ReadKey();
                return;
            }

            //detect whether its a directory or file
            if ((attr & FileAttributes.Directory) == FileAttributes.Directory)
            { // Handle directory
                //Console.WriteLine("working on dir");
                files = Directory.GetFiles(@args[0], "*." + srcExt);
                destFileName = Path.GetFullPath(@args[0]);
                //destFileName = Path.GetDirectoryName(@args[0]).ToString();
                if (destFileName.EndsWith(@"\"))
                {
                    
                //    Console.WriteLine("path ends with slash ");
                } else
                {
                    //destFileName += @"\";
                    destFileName += Path.DirectorySeparatorChar;
                //    Console.WriteLine("path ends with nothing ");
                }
                
                //Console.WriteLine("destFileName " + destFileName);
                string dirName = new DirectoryInfo(@args[0]).Name;
                destFileName += dirName;
                destFileName += "." + destExt;
                isProgram = true;

                //Console.WriteLine("Folder destFileName " + destFileName);
                //Console.ReadKey();
            }
            else
            { // Handle file
                files = new string[1];
                files[0] = args[0];
                destFileName = args[0];
                try
                {
                    destFileName = destFileName.Replace("vm", "asm");
                }
                catch (Exception e)
                {
                    Console.WriteLine("Can't replace extension");
                    return;
                }
                //Console.WriteLine("File destFileName " + destFileName);
                //Console.ReadKey();

            }
            fileNames = new string[files.Length];
            for (int i=0; i< files.Length; i++)
            {
                fileNames[i] = Path.GetFileNameWithoutExtension(files[i]);       
                //Console.WriteLine(fileNames[i]);
            }
            isValid = true;
            return;
        }
        public bool IsValid()
        {
            return isValid;
        }
        
        public void AddLine(string line)
        {
            lines.Add(line);
            if (stepByStep)
            {
                Console.WriteLine(line);
                Console.WriteLine("-----------------------------------------------------");
                Console.ReadKey();
            }
            return;
        }

        public void AddLines(string[] lines)
        {
            foreach(string line in lines)
            {
                AddLine(line);
            }
            return;
        }

        public bool HasMoreFiles()
        {
            if ((files.Length - 1) - currentIndex > 0)
            {
                return true;
            }
            return false;
        }
        public string[] Advance()
        {
            if (HasMoreFiles())
            {
                currentIndex++;
                currentFileLines = File.ReadAllLines(files[currentIndex]);
                return currentFileLines;
            }
            else return null;
        }

        public string GetCurFileName()
        {
            if (currentIndex > -1)
            { return fileNames[currentIndex]; }
            else { return "BOOTSTRAP"; }
        }

        public bool SaveFile()
        {
            string[] codeArray = lines.ToArray();
            File.WriteAllLines(destFileName, codeArray);
            return true;
        }

        public bool IsProgram()
        { return isProgram; }
    }
}

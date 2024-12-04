using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E02VarijableTipoviPodataka
    {
        public static void izvedi()
        {

            //Console.WriteLine("Hello E02");

            // deklaracija varijable
            int i; // i je od increment 


            Console.Write("upisi broj :");
            //  dodjeljivanje vrijednosti

           // i = Console.ReadLine(); ovo ne radi jer je desno string a lijevo int

            i=int.Parse(Console.ReadLine());

            //koristenje vrijednosti 
            Console.WriteLine("upisali ste {0}, i evo ga jos jednom {1} ", i,i);


            // bit - logicka vrijednost 

            bool LogickaVrijednost;

            Console.Write("Unesi True ili False: ");

            LogickaVrijednost = bool.Parse(Console.ReadLine());

            Console.WriteLine("unijeli ste {0}", LogickaVrijednost);

            //float - decimalni broj 

            Console.Write("Unesi broj (, za decimalni dio):");

            Console.WriteLine(float.Parse(Console.ReadLine()));

            float broj = 3.14F; //zato sto je to float 

            Console.Write("unesi ime: ");

            string ime = Console.ReadLine();

            Console.WriteLine("Unio sam \n{0}\n{1}\n{2}\n{3}",

                i,LogickaVrijednost,broj,ime);










        }






    }
}

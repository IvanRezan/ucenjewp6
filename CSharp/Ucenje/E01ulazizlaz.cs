using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E01ulazizlaz
    {
     public static void Izvedi()
        {
            // Ovo je izlaz
            Console.Write("Unesi svoje ime: ");

            // Ulaz podataka u program
            String Ime = Console.ReadLine();

            Console.WriteLine("Unijeli ste " + Ime);

            //formatirani nacin ispisa
            Console.WriteLine( "Uniejli ste {0}. Bravo!", Ime);
        }   
 
     

 



    }
}

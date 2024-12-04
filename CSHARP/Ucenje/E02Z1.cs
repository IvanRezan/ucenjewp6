

namespace Ucenje
{     // Napisite program koji unosi ime i broj godina 

    // program ispisuje ; osoba xxxx ima yy godina
    internal class E02Z1
    {


        public static void Izvedi()
        {

            Console.WriteLine("Upisi ime : ");
            string Ime = Console.ReadLine();
            Console.WriteLine("Upsi broj godina");
            int godine = int.Parse(Console.ReadLine());

            Console.WriteLine("osoba {0} ima {1} godina.", Ime, godine);



        }

    }
    
    
    
    
    
    

    
}

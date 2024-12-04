using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class EO3Operator


    {
        public static void izvedi()
        {
            //Console.WriteLine("EO3");
            // operatori za rad s varijablama 
            // = je dodjeljivanje vrijednost 
            // == provjera jednakosti 

            int i = 7; // sada zamislimo da je korisnik unio 7 

            Console.WriteLine(i == 6);

            // operatori +, -,*, /
            int k = 2, l = 1;
            Console.WriteLine(l / k); // djeljenje 2 int daje int 

            // mehanizam cast --> interpretacija broja u drugom tipu podatka

            Console.WriteLine(l / (float)k);

            // != nije jednako 

            Console.WriteLine(i != k);

            // operator modulo % 

            Console.WriteLine("5%2={0}", 5 % 2);
            Console.WriteLine("4%2={0}", 4 % 2);
            // AUTUMATSKO FORMATIRANJE ctr+K+D

            // uvecavanje za 1 


            int b = 0;

            // uvecaj za 1 

            b = b + 1;

            // krace 

            b += 1;

            // najkrace

            b++;

            Console.WriteLine(b);

            // gornja tri primjera vrijede i za  -, prva dva godrnja vrijed i za * i / 

            // increment i decrement ( i++ i i--) 

            b = 0;

            // b++ prvo koristi pa uveca 

            Console.WriteLine(b++);

            //7++b prvo uveca pa koristi

            Console.WriteLine(++b);


            // isto vrijedi i za b-- te --b

            int t = 0, c = 1;
            t = c++ + t; // t = 1, c = 2
            c += ++t; // c = 4, t = 2 
            Console.WriteLine(c+t); // 6
                                    











        }


    }
}

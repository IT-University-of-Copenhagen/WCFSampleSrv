using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WCFClient.ServiceReference;

namespace WCFClient
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceClient client = new ServiceClient();
            Console.Write("Enter a number: ");
            Console.WriteLine(client.GetData(Int32.Parse(Console.ReadLine())));
            Console.Write("Write something: ");
            CompositeType compositeType = new CompositeType()
            {
                BoolValue = true,
                StringValue = Console.ReadLine()
            };
            Console.WriteLine(client.GetDataUsingDataContract(compositeType).StringValue);
            Console.ReadKey();
            client.Close();
        }
    }
}

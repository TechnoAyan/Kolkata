using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Proper
    {
        static void Main(string[] args)
        {
            person ps = new person();
            ps.id = 1;
            ps.name = "Amit Kumar";
            Console.WriteLine("Name: {0} and Id: {1}",
               ps.name,ps.id );
            //customer cus = new customer();
            //cus.setid(1);
            //cus.setname("Raj Singh");
            //Console.WriteLine("Id:- {0}\n and Name:-{1}",
            // cus.getid(), cus.getname());

        }
    }
    class customer
    {
        private int _id;
        private string _name;
        public void setid(int id)
        {
            _id = id;
        }
        public int getid()
        {
            return _id;
        }
        public void setname(string name)
        {
            _name = name;
        }
        public string getname()
        {
            return _name;
        }
    }

    class person
    {
        private int p_id;
        private string p_name;
        public int id
        {
            set
            {
                p_id = value;
            }
            get
            {
                return p_id;
            }
        }
        public string name
        {
            set
            {
                p_name = value;
            }
            get
            {
                return p_name;
            }
        }
    }
}

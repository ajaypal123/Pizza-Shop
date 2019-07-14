using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pizza_Shop
{
    public class register
    {
        Pizzadata dataclass = new Pizzadata();
        Reg Regclass = new Reg();
        LoginTable lg = new LoginTable();
        public void InsertRegister(string name, string age)
        {
            Regclass.Name = name;
            Regclass.Age = age;
           
            

            dataclass.Regs.Add(Regclass);
            dataclass.SaveChanges();



        }
        public void InsertLogin(string Username,string Password)
        {

            lg.username  = Username;
            lg.password = Password;

            dataclass.LoginTables.Add(lg);
            dataclass.SaveChanges();

        }
    }
}
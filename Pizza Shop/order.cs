using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pizza_Shop
{
    public class order
    {
        Pizzadata dataobj = new Pizzadata();
        pizza obj_pizza = new pizza();
        public void OrderAdd(int B_id, string onions, string capsicum, string chicken, string beef)
        {
            obj_pizza.B_id  = B_id;
            obj_pizza.onions = onions;
            obj_pizza.capsicum = capsicum;//puts data in table
            obj_pizza.chicken  = chicken;
            obj_pizza.beef = beef;
          

            dataobj.pizzas.Add(obj_pizza);
            dataobj.SaveChanges();




        }
        public void CompleteOrder(int P_id)
        {

            using (Pizzadata get = new Pizzadata())
            {


                pizza  obj = get.pizzas .First(x => x.P_id == P_id);
                get.pizzas.Remove(obj);
                get.SaveChanges();//delete from tabel


            }

        }
        public void OrderUpdate(int P_id,int B_id, string onions, string capsicum, string chicken, string beef)
        {
            using (var OBJ_up = new Pizzadata())
            {
                var result = OBJ_up.pizzas.SingleOrDefault(b => b.P_id == P_id);
                if (result != null)
                {
                    result.B_id = B_id;
                    result.onions = onions;
                    result.capsicum = capsicum;
                    result.chicken = chicken;//update from table
                    result.beef = beef;

                    OBJ_up.SaveChanges();

                }



            }
        }
    }
}
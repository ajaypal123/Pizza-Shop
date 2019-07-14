using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Shop
{
    public partial class LoginPage : System.Web.UI.Page
    {
        Pizzadata db = new Pizzadata();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbt_Click(object sender, EventArgs e)
        {
            

            string pdata = (from c in db.LoginTables
                            where c.username == usertextbox.Text && c.password == passwordtextbox.Text
                            select c.username).FirstOrDefault();
            if (pdata != null)
            {
                Response.Redirect("pizza.aspx");
            }
            else

            {
                string script = "alert('please cheack your username and password');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
        }

        protected void RegButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}
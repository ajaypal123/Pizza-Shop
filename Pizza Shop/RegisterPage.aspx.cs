using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Shop
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        register obj = new register();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegRegButton_Click(object sender, EventArgs e)
        {
            obj.InsertLogin(reguser.Text, regpass.Text);
            obj.InsertRegister(Regname.Text, Agereg.Text);
            Response.Redirect("LoginPage.aspx");

        }

        protected void RegLoginbt_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}
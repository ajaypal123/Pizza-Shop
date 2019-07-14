using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Shop
{
    public partial class pizza1 : System.Web.UI.Page
    {
        order objorder = new order();
        Pizzadata dataclass = new Pizzadata();

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewpizza.DataSource = dataclass.pizzas.ToList();
            GridViewpizza.DataBind();
            GridViewsauce.DataSource = dataclass.sauces.ToList();
            GridViewsauce.DataBind();
        }

        protected void Buttonorder_Click(object sender, EventArgs e)
        {
            int k=0;
            if(TextBoxonions.Text=="yes")//checks if the letter is yes 
            {
                k = k + 1;
            }
            if (TextBoxcapsicum.Text == "yes")//checks if the letter is yes 
            {
                k = k + 1;
            }
            if (TextBoxbeef.Text == "yes")//checks if the letter is yes 
            {
                k = k + 1;
            }
            if (TextBoxchicken.Text == "yes")//checks if the letter is yes 
            {
                k = k + 1;
            }
            if (TextBoxonions.Text == "no")//checks if the letter is no
            {
                k = k + 1;
            }
            if (TextBoxcapsicum.Text == "no")//checks if the letter is no
            {
                k = k + 1;
            }
            if (TextBoxbeef.Text == "no")//checks if the letter is no
            {
                k = k + 1;
            }
            if (TextBoxchicken.Text == "no")//checks if the letter is no
            {
                k = k + 1;
            }
            if (k == 4)
            {
                objorder.OrderAdd(Convert.ToInt32(TextBoxsauce.Text), TextBoxonions.Text, TextBoxcapsicum.Text, TextBoxchicken.Text, TextBoxbeef.Text);
                GridViewpizza.DataSource = dataclass.pizzas.ToList();
                GridViewpizza.DataBind();
                Response.Redirect("pizza.aspx");

            }
            else
            {
                string script = "alert('please write yes or no in lowercase in Topping textbox');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }


           
        }

        protected void Buttonupdate_Click(object sender, EventArgs e)
        {
            objorder.OrderUpdate (Convert.ToInt32(TextBoxorder.Text), Convert.ToInt32(TextBoxsauce.Text), TextBoxonions.Text, TextBoxcapsicum.Text, TextBoxchicken.Text, TextBoxbeef.Text);
            GridViewpizza.DataSource = dataclass.pizzas.ToList();
            GridViewpizza.DataBind();
            Response.Redirect("pizza.aspx");

        }

        protected void Buttoncomplete_Click(object sender, EventArgs e)
        {
            objorder.CompleteOrder(Convert.ToInt32(TextBoxorder.Text));
            GridViewpizza.DataSource = dataclass.pizzas.ToList();
            GridViewpizza.DataBind();
                Response.Redirect("pizza.aspx");
        }

        protected void GridViewsauce_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxsauce.Text = GridViewsauce.SelectedRow.Cells[1].Text;

        }

        protected void GridViewpizza_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxorder.Text = GridViewpizza.SelectedRow.Cells[1].Text;
            TextBoxsauce.Text = GridViewpizza.SelectedRow.Cells[2].Text;
            TextBoxonions.Text = GridViewpizza.SelectedRow.Cells[3].Text;
            TextBoxcapsicum.Text = GridViewpizza.SelectedRow.Cells[4].Text;//fills the textbox when selecting
            TextBoxchicken.Text = GridViewpizza.SelectedRow.Cells[5].Text;
            TextBoxbeef.Text = GridViewpizza.SelectedRow.Cells[6].Text;
        }

        protected void Buttonlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_store
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";

            //login  session 
            if (Session["uname"] != null)
            {
                Label3.Text = "Logged in as " + Session["uname"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label3.Text = "Hello you can Login Here ";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
        }


      

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("loginRegis.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
            Label3.Text = "You Have Sucessfully Logged Out ";
        }
    }
}
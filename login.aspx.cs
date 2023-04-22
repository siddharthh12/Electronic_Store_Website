using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_store
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-HQ3IFGKP;Initial Catalog=electronicStore;Integrated Security=True");
                string uid = txtEmail.Text;
                string pass = txtPass.Text;
                con.Open();
                string qry = "select * from loginRegis where Email='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["uname"] = txtEmail.Text;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Label1.Text = "enter correct email and password ";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
    }


        
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_store
{
    public partial class regis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlDataReader dr;
            SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-HQ3IFGKP;Initial Catalog=electronicStore;Integrated Security=True");
            SqlCommand cmd;
            cmd = new SqlCommand("Insert into loginRegis(FName,LName,Email,Address,Password) values(@FName,@LName,@Email,@Address,@Password)");

            cmd.Parameters.AddWithValue("@FName", txtFName.Text);
            cmd.Parameters.AddWithValue("@LName", txtLName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Password", txtPass.Text);
            cmd.Connection = cn;

            cn.Open();
            dr = cmd.ExecuteReader();

            Response.Redirect("home.aspx");

            {
                Label1.Text = "Succesfully Registerd";

            }
            cn.Close();
        }

    }

}
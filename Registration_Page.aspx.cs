using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
            con.Open();
            string checkuser = "select count(*) from Table where Username = '"+txtUsername.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already exists.");
            }
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
            con.Open();
            string InsertQuery = "insert into Table.dbo (ID,Username,Email,Password,Address) values (@ID ,@Username ,@Email ,@Password ,Address)";
            SqlCommand com = new SqlCommand(InsertQuery, con);
            com.Parameters.AddWithValue("@ID", newGuid.ToString());
            com.Parameters.AddWithValue("@Username", txtUsername.Text);
            com.Parameters.AddWithValue("@Email", txtEmail.Text);
            com.Parameters.AddWithValue("@Password", txtPassword.Text);
            com.Parameters.AddWithValue("@Address", txtAddress.Text);

            com.ExecuteNonQuery();
            Response.Redirect("ConnectionString");
            Response.Write("registration is successful.");

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}
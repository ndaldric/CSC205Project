using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string checkuser = "select count(*) from Table where Username = '" + txtUsername.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string CheckPassword = "select password from Table where '" + txtUsername.Text + "'";
            SqlCommand CP = new SqlCommand(CheckPassword, con);
            string password = CP.ExecuteScalar().ToString();
            if(password==txtPassword.Text)
            {
                Session["New"] = txtUsername.Text;
                Response.Write("password was correct");
            }

            else
            {
                Response.Write("incorrect password");
            }

            
        }
        else
        {
            Response.Write("username is not correct");
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtPassword.Text == null && txtUsername == null)
            {
                Response.Redirect("Register.aspx");
                //Server.Transfer("Register.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }
}
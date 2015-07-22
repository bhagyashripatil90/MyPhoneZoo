using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        string constr=ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);
        con.Open();

        string query = "insert into tb_Registration(Uname,emailid,password) values('"+txtUserName.Text+"','"+txtEmailId.Text+"','"+txtPassword.Text+"')";


        SqlCommand cmd = new SqlCommand(query,con);

        cmd.ExecuteNonQuery();


       
        Response.Redirect("Login.aspx");
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
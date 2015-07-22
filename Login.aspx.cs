using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uname1"]=txtUsername.Text;
    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);
        con.Open();

        string query = "select Uname,password from tb_Registration";
       // string query = "select UserName,Password from tbl_Login";
        SqlCommand cmd = new SqlCommand(query, con);

       SqlDataReader dr= cmd.ExecuteReader();

       while (dr.HasRows)
       {
           if (dr.Read())
           {
               if (txtUsername.Text == dr.GetValue(0).ToString() && txtPassword.Text == dr.GetValue(1).ToString())
               {

                   Response.Redirect("selectedsong.aspx");

               }


           }
       }

        

    }
}
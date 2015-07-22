using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        string query="select UserName from tbl_Registration where EmailId='"+TextBox1.Text+"' ";

        SqlCommand cmd = new SqlCommand(query,con);


        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Label1.Text = dr.GetValue(0).ToString();
        
        
        }

        con.Close();


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogHome : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uname1"] != null)
        {
            
            Label1.Text = Session["uname1"].ToString();


        }
        else
        {
            Response.Redirect("Home2.aspx");
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        string StrPath = Server.MapPath("~/media/testsong.mp3");
        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "song", "javascript: DHTMLSound('D:\\bhagyashri\\MyPhoneZoo-master_prod23-06-15\\media\\testsong.mp3')", true);
    }
}
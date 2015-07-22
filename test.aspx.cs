using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       // button.Attributes.Add("onclick", "return a('" + button.ClientID + "')");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string Path = Server.MapPath("testsong.mp3");
        SoundPlayer playthewavfile = new SoundPlayer(Path);
        playthewavfile.Play();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        SoundPlayer playthewavfile = new SoundPlayer(@"testsong.mp3");
        playthewavfile.Stop();
    }
}
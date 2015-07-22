using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class selectedsong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string uname11 = "";

        if (Session["uname1"] != null)
        {
            uname11 = Session["uname1"].ToString();
        }

        //RenderContents();
        if (Request.QueryString.Count > 0)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"].ToString());

            DataTable dt = new DataTable();
            DataColumn dc = new DataColumn("Id");

            DataRow dr = dt.NewRow();
            //dr["Id"] = Request.QueryString["Id"].ToString();

            dt.Columns.Add(dc);

            dr[0] = Request.QueryString["Id"].ToString();
            dt.Rows.Add(dr);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        // Response.Redirect("File.ashx?Id="+id);
        //  Response.Redirect("selectedsong.aspx?Id=" + j);
        // BindGrid();



    }



    //    private void RenderContents()
    //    {
    //        //Clear out anything in the <div> created on the front end

    //        plchldrVideo.Controls.Clear();



    //    //Create a NEW <div> to rest inside this one.

    //        System.Web.UI.HtmlControls.HtmlGenericControl VideoDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("div");



    //    //Give it a name

    //        VideoDiv.ID = "VideoDivCode";



    //    //Give it some styling
    //        //VideoDiv.Style.Add(HtmlTextWriterStyle.Width, "460px");

    //        //VideoDiv.Style.Add(HtmlTextWriterStyle.Height, "317px");

    //        //VideoDiv.Style.Add(HtmlTextWriterStyle.MarginTop, "5px");

    //        //VideoDiv.Style.Add(HtmlTextWriterStyle.MarginBottom, "10px");



    //    //This the inner HTML <OBJECT> code that Kaltura uses to "embed" the player on a page - BUT it's calling the next fucntion

    //        VideoDiv.InnerHtml = videoString();



    //    //Add the control

    //        plchldrVideo.Controls.Add(VideoDiv);
    //    }

    //    private string videoString()
    //    {
    //          //This is what is actually embeded in the previous function.

    //        //For the querystring, I would use this "0_ex4i45f5" as the value of the EntryID


    //    //Create a string builder

    //        StringBuilder sb = new StringBuilder();

    //    //What video do I want to load?

    //    //I decided that I wanted to load a specific video from a menu of choices, much like YouTube.



    //    //In this case, the querystring we're looking for is EntryId - but in Kaltura's terms is: "entry_id"


    //              int id =Convert.ToInt32( Request.QueryString["Id"].ToString());

    ////      <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'
    ////                        width="240" height="20" id="dewplayer">
    ////                        <param name="wmode" value="transparent">
    ////                        <param name="movie" value='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'>

    ////</object>
    //              sb.Append("<object id=\"dewplayer\"  type=\"application/x-shockwave-flash\" ");

    //        sb.Append("height=\"240\" width=\"20\" ");


    //        sb.Append("data=\'dewplayer-vol.swf?mp3=File.ashx?Id=" + id + "\'> ");

    //        sb.Append("<param name=\"wmode\" value=\"transparent\" />");

    //        sb.Append("<param name=movie value=\'dewplayer-vol.swf?mp3=File.ashx?Id=" + id + "\' />");
    //        sb.Append("</object>");

    //        return sb.ToString();

    //    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    //private void BindGrid()
    //{
    //    int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
    //    string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    using (SqlConnection con = new SqlConnection(strConnString))
    //    {

    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            con.Open();
    //            cmd.CommandText = "select id from tbfiles where albumId='"+id+"' ";
    //            cmd.Connection = con;


    //            GridView1.DataSource = cmd.ExecuteReader();
    //            GridView1.DataBind();
    //            con.Close();
    //        }
    //    }
    //}
    //protected void button1_Click(object sender, EventArgs e)
    //{
    //    int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
    //    if (Session["uname1"] != null)
    //    {
    //        //{
    //        //    // if (!string.IsNullOrEmpty(Session["uname11"] as string))
    //        //if(Session["uname11"] is Nothing)
    //        //if(uname11 != null)
    //        if (Session["uname1"].ToString() != "")
    //        {
    //            //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
    //            //int index = gvRow.RowIndex;
    //            //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

    //            //int j = Convert.ToInt32(L.Text);

    //            Response.Redirect("File.ashx?Id=" + id);


    //        }

    //    }
    //    //}


    //    else
    //    {
    //        //  MsgBox("Please login or create account", this.Page, this);
    //        Response.Redirect("Home2.aspx");
    //    }
    //}
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
        if (Session["uname1"] != null)
        {
            //{
            //    // if (!string.IsNullOrEmpty(Session["uname11"] as string))
            //if(Session["uname11"] is Nothing)
            //if(uname11 != null)
            if (Session["uname1"].ToString() != "")
            {
                //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
                //int index = gvRow.RowIndex;
                //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

                //int j = Convert.ToInt32(L.Text);

                Response.Redirect("File.ashx?Id=" + id);


            }

        }
        //}


        else
        {
            //  MsgBox("Please login or create account", this.Page, this);
            Response.Redirect("Home2.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyDemo.aspx");

    }
}
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
public partial class DownloadRingtone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddatalist();
        }
        string uname11 = "";

        if (Session["uname1"] != null)
        {
            uname11 = Session["uname1"].ToString();
        }

        else
        {
           // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Please make sure you are logged In User,if not then do log in or create account');window.location='Home2.aspx';", true);


        }

        if (Request.QueryString.Count > 0)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"].ToString());

            DataTable dt = new DataTable();
            DataColumn dc = new DataColumn("Id");

            DataRow dr = dt.NewRow();

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
        Response.Redirect("File.ashx?Id=" + id);

     //   if (Session["uname1"] != null)
     //   {
            //{
            //    // if (!string.IsNullOrEmpty(Session["uname11"] as string))
            //if(Session["uname11"] is Nothing)
            //if(uname11 != null)
       //     if (Session["uname1"].ToString() != "")
        //    {
                //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
                //int index = gvRow.RowIndex;
                //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

                //int j = Convert.ToInt32(L.Text);

          //      Response.Redirect("File.ashx?Id=" + id);


        //    }

      //  }
        //}


      //  else
      //  {
            //string script = "alert('PLease Do Log In');";
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            Response.Redirect("Home2.aspx");
            //MsgBox("Please login or create account", this.Page, this);

      //  }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Response.Redirect("Demo.aspx");
        Response.Redirect("RingtoneList.aspx");
    }

    public void binddatalist()
    {
        int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {

            //using (SqlCommand cmd = new SqlCommand())
            //{
            //    con.Open();
            //   // cmd.CommandText = "select Id,Name,IsNULL(Rating,0) As Rating from tbfiles";
            //    cmd.CommandText = "select IsNULL(Rating,0) As Rating from UserRatings where Id=";
            //    cmd.Connection = con;


            //    GridView2.DataSource = cmd.ExecuteReader();
            //    GridView2.DataBind();
            //    con.Close();
            //}
            //int Total = 0;
            con.Open();
            SqlCommand cmd = new SqlCommand("select tbfiles.CreatedBy,Artist,Description,Category,Tags from tbfiles where ID='" + id + "'", con);
            DataList1.DataSource = cmd.ExecuteReader();
            DataList1.DataBind();
            con.Close();
        }


    }
   
}
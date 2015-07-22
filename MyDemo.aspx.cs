using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

public partial class MyDemo : System.Web.UI.Page
{
    string uname11 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
        }
        

        if (Session["uname1"] != null)
        {
            uname11 = Session["uname1"].ToString();
        }
      Label3.Text=  Session["uname1"].ToString();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //LinkButton objlnk =(LinkButton) sender;
        //int i =Convert.ToInt32 (objlnk.CommandArgument);
        //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        //int index = gvRow.RowIndex;
        //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

        //int j = Convert.ToInt32(L.Text);

        //Response.Redirect("NextPage.aspx?Id=" + j);
    }

    public void bindgrid()
    {
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
            SqlCommand cmd = new SqlCommand("select tbfiles.Id,tbfiles.Name,tbfiles.CreatedBy,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles  left join UserRatings  on tbfiles.Id=UserRatings.Id group by tbfiles.Id,tbfiles.Name,tbfiles.CreatedBy", con);
            GridView2.DataSource = cmd.ExecuteReader();
            GridView2.DataBind();
            con.Close();
        }

        



    }

    


    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        Label L = (Label)GridView2.Rows[index].FindControl("LblID");

        int j = Convert.ToInt32(L.Text);

        Response.Redirect("NextPage.aspx?Id=" + j);

    }
    //protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    //{
    //    string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    SqlConnection con = new SqlConnection(strConnString);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("INSERT INTO UserRatings(Rating) VALUES (@Rating)", con);
    //    cmd.Parameters.AddWithValue("@Rating", SqlDbType.Int).Value = Rating1.CurrentRating;
    //    cmd.ExecuteNonQuery();
    //    con.Close();
    //    BindRatings();
    //}
    //public void BindRatings()
    //{
    //    string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    SqlConnection con = new SqlConnection(strConnString);
    //    int Total = 0;
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("SELECT Rating FROM UserRatings", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    if (dt.Rows.Count > 0)
    //    {
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            Total += Convert.ToInt32(dt.Rows[i][0].ToString());
    //        }
    //        int Average = Total / (dt.Rows.Count);
    //        Rating1.CurrentRating = Average;
    //       // Label1.Text = dt.Rows.Count + " " + "Users have rated this Product";
    //       // Label2.Text = "Average rating for this Product is" + " " + Convert.ToString(Average);
    //    }
    //}
    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    //if (e.Row.RowType == DataControlRowType.DataRow)
    //    //{
    //    //    Rating rating1 = (Rating)e.Row.FindControl("Rating1");
    //    //    rating1.CurrentRating = 4;
    //    //}
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home2.aspx");
    }
    //protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    //{
    //    Rating r = sender as Rating;
    //    int id = Convert.ToInt32(r.Tag);
    //    // objBLL.UpdateRating(Convert.ToInt32(e.Value),id)

    //    GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
    //    int index = gvRow.RowIndex;
    //    Label L = (Label)GridView2.Rows[index].FindControl("LblID");

    //    // Rating rt = (Rating)GridView1.Rows[index].FindControl("Rating1");
    //    int j = Convert.ToInt32(L.Text);

    //    //AjaxControlToolkit.Rating myRating =    (AjaxControlToolkit.Rating)sender;
    //    // regular expression which will help identifying row number: 

    //    // update the record based on the recodrd id


    //    string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    SqlConnection con = new SqlConnection(strConnString);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("update tbfiles SET Rating=@Rating where Id='" + j + "'", con);
    //    cmd.Parameters.AddWithValue("@Rating", SqlDbType.Int).Value = e.Value;
    //    cmd.ExecuteNonQuery();
    //    con.Close();
    //    bindgrid();
    //}

    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        Rating r = sender as Rating;
        int id = Convert.ToInt32(r.Tag);
        // objBLL.UpdateRating(Convert.ToInt32(e.Value),id)

        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        Label L = (Label)GridView2.Rows[index].FindControl("LblID");

        // Rating rt = (Rating)GridView1.Rows[index].FindControl("Rating1");
        int j = Convert.ToInt32(L.Text);

        //AjaxControlToolkit.Rating myRating =    (AjaxControlToolkit.Rating)sender;
        // regular expression which will help identifying row number: 

        // update the record based on the recodrd id


        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        //SqlCommand cmd = new SqlCommand("update tbfiles SET Rating=@Rating where Id='" + j + "'", con);
        SqlCommand cmd = new SqlCommand("insert into UserRatings(Id,Rating) values(@Id,@Rating)", con);
        cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = j;
        cmd.Parameters.AddWithValue("@Rating", SqlDbType.Int).Value = e.Value;

        cmd.ExecuteNonQuery();
        con.Close();
        bindgrid();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void btnplay_Click(object sender, EventArgs e)
    {
        //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        //int index = gvRow.RowIndex;
        //Label L = (Label)GridView2.Rows[index].FindControl("LblID");

        //int j = Convert.ToInt32(L.Text);
        //string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(strConnString))
        //{

        //    using (SqlCommand cmd = new SqlCommand())
        //    {
        //        con.Open();
        //        cmd.CommandText = "select id from tbfiles where Id='" + j + "' ";
        //        cmd.Connection = con;


        //        GridView2.DataSource = cmd.ExecuteReader();
        //        GridView2.DataBind();
        //        con.Close();
        //    }
        //}
       // Response.Redirect("File.ashx?Id=" + j);
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home2.aspx");
    }
    protected void lnkdelete_Click(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        Label L = (Label)GridView2.Rows[index].FindControl("LblID");

        int j = Convert.ToInt32(L.Text);
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        string q = "delete from tbfiles where Id='" + j + "'";

        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();

        con.Close();
        bindgrid();
    }
}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class RingtoneAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
            
        }
        Label4.Text = Session["adminuname"].ToString();
    }
    protected void lnkdelete_Click(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        Label L = (Label)GridView1.Rows[index].FindControl("LblID");

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
            SqlCommand cmd = new SqlCommand("select Id,Name from tbfiles order by Date desc,Name asc", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        //int index = gvRow.RowIndex;
        //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

        //int j = Convert.ToInt32(L.Text);
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        string q = "select Id,Name from TripDB.dbo.tbfiles where Name='" + txtsearch.Text + "'";

        SqlCommand cmd = new SqlCommand(q, con);
       // cmd.ExecuteNonQuery();
      //  GridView1.DataSource = cmd.ExecuteReader();
       // GridView1.DataBind();

      //  con.Close();


       // SqlCommand cmd = new SqlCommand(q, con);
        // cmd.ExecuteNonQuery();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }


    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.bindgrid();
        }
        catch
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class UserAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bindgrid();
        }
        Label4.Text = Session["adminuname"].ToString();
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        //GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        //int index = gvRow.RowIndex;
        //Label L = (Label)GridView1.Rows[index].FindControl("LblID");

        //int j = Convert.ToInt32(L.Text);
        Console.WriteLine("to here 1");

        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        string q = "select tbfiles.Id,tbfiles.Name from tbfiles where tbfiles.Name='" + txtsearch.Text + "'";
        Console.WriteLine("value is $q");
        SqlCommand cmd = new SqlCommand(q, con);
        // cmd.ExecuteNonQuery();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

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
            SqlCommand cmd = new SqlCommand("select Id,UserName from tbl_Registration order by Date desc", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        Label L = (Label)GridView1.Rows[index].FindControl("LblID");

        int j = Convert.ToInt32(L.Text);
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        string q = "delete from tbl_Registration where Id='" + j + "'";

        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();

        con.Close();
        bindgrid();
        txtsearch.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Admin.aspx");
    }
    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        {
            try
            {
                GridView1.PageIndex = e.NewPageIndex;
                bindgrid();
            }
            catch
            {

            }

        }
    }
}

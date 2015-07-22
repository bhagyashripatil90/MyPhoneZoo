using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using AjaxControlToolkit;

public partial class MyRating : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "0 Users have rated this Product";
        Label2.Text = "Average rating for this Product is 0";      
        if (!IsPostBack)
        {
            BindRatings();
        }
    }
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {       
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO UserRatings(Rating) VALUES (@Rating)", con);
        cmd.Parameters.AddWithValue("@Rating", SqlDbType.Int).Value = Rating1.CurrentRating;
        cmd.ExecuteNonQuery();
        con.Close();
        BindRatings();
    }
    public void BindRatings()
    {
        int Total = 0;       
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT Rating FROM UserRatings", con);       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Total += Convert.ToInt32(dt.Rows[i][0].ToString());
            }
            int Average = Total / (dt.Rows.Count);
            Rating1.CurrentRating = Average;
            Label1.Text = dt.Rows.Count + " " + "Users have rated this Product";
            Label2.Text = "Average rating for this Product is" + " " + Convert.ToString(Average);
        }
    }

}
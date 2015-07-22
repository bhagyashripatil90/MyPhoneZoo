using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class newdemo : System.Web.UI.Page
{
    string uname11 = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridviewData();
        }
        if (Session["uname1"] != null)
        {
            uname11 = Session["uname1"].ToString();
        }
    }
    // Bind Gridview Data
    private void BindGridviewData()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FilesTable", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
    }
    // Save files to Folder and files path in database
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
        fileUpload1.SaveAs(Server.MapPath("Files/" + filename));
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into FilesTable(FileName,FilePath) values(@Name,@Path)", con);
        cmd.Parameters.AddWithValue("@Name", filename);
        cmd.Parameters.AddWithValue("@Path", "Files/" + filename);
        cmd.ExecuteNonQuery();
        con.Close();
        BindGridviewData();
    }
    // This button click event is used to download files from gridview
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        //if (uname11 != null)
            if(Session["uname11"]!=null)
        {
            LinkButton lnkbtn = sender as LinkButton;
            GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
            string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
           
            Response.ContentType = "image/jpg";
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath(filePath));
            Response.End();
        }
        else
        {
            Response.Redirect("login.aspx");
        
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["uname11"] = null;
    }
}
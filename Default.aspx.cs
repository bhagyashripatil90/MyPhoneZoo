using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;



public partial class _Default : System.Web.UI.Page
{
    string uname11 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // BindGrid();
        }


        if (Session["uname1"] != null)
        {
            uname11 = Session["uname1"].ToString();
        }

        //else
        //{
        //    Response.Redirect("Login.aspx");
        //}

        // string uname = Session["uname"].toString();

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
        {
            byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into tbfiles(Name, Content_Type, Data,CreatedBy,Title,Artist,Description,Category,Tags,keepitprivate) values (@Name, @ContentType, @Data,@CreatedBy,@Title,@Artist,@Description,@Category,@Tags,@keepitprivate)";
                    cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                    cmd.Parameters.AddWithValue("@ContentType", "audio/mpeg3");
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    cmd.Parameters.AddWithValue("@CreatedBy", uname11);
                    cmd.Parameters.AddWithValue("@Title",txttitle.Text);
                    cmd.Parameters.AddWithValue("@Artist", txtartist.Text);
                    cmd.Parameters.AddWithValue("@Description", txtdescription.Text);
                    cmd.Parameters.AddWithValue("@Category", chkcategory.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Tags", txttags.Text);
                    cmd.Parameters.AddWithValue("@keepitprivate", chkprivate.SelectedItem.ToString());
                 
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
        //dwn();
        //BindGrid();
        Response.Redirect("Default.aspx");
    }



    //private void BindGrid()
    //{
    //    string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    using (SqlConnection con = new SqlConnection(strConnString))
    //    {

    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            con.Open();
    //            cmd.CommandText = "select Id, Name from tbfiles";
    //            cmd.Connection = con;


    //            GridView1.DataSource = cmd.ExecuteReader();
    //            GridView1.DataBind();
    //            con.Close();
    //        }
    //    }
    //}
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    //protected void lnkDownload_Click(object sender, EventArgs e)
    //{
    //    // if login=true
    //    if (Session["uname1"] != null)
    //    {
    //        //{
    //        //    // if (!string.IsNullOrEmpty(Session["uname11"] as string))
    //        //if(Session["uname11"] is Nothing)
    //        //if(uname11 != null)
    //       if (Session["uname1"].ToString() != "")
    //        {
    //            GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
    //            int index = gvRow.RowIndex;
    //            Label L = (Label)GridView1.Rows[index].FindControl("LblID");

    //            int j = Convert.ToInt32(L.Text);

    //            Response.Redirect("File.ashx?Id=" +j);


    //        }
            
    //    }
    //    //}


    //    else
    //    {
    //        //  MsgBox("Please login or create account", this.Page, this);
    //        Response.Redirect("Home2.aspx");
    //    }
    //}

    //private void MsgBox(string p, System.Web.UI.Page page, _Default _Default)
    //{
    //    throw new NotImplementedException();
    //}


    protected void btnlogout_Click(object sender, EventArgs e)
    {
       // Session["uname1"] = null;
        Session.Abandon();
        Response.Redirect("Home2.aspx");
    }
}
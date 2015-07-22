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

public partial class UploadRingtone : System.Web.UI.Page
{
    string uname11 = "";
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblDuplicateTitle.Text ="";
            // BindGrid();
        }


        if (Session["uname1"] != null)
        {
            uid = Convert .ToInt32 (  Session["uId"]);
            uname11 = Session["uname1"].ToString();
            lblUserName.Text = "WelCome " + uname11;
        }

        //else
        //{
        //    Response.Redirect("Login.aspx");
        //}

        // string uname = Session["uname"].toString();

    }

    public void DownloadAudio(int id)
    {

        int bufferSize = 1024;
        int columnIndex = 1;
        long bytesReturned, startIndex = 0;
        byte[] audioData = new byte[bufferSize];
        string audioName = string.Empty;
        FileStream fs;
        BinaryWriter bw;

        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            con.Open();
            try
            {
                //foreach (GridViewRow row in GridViewL.Rows)
                //{

                //LinkButton Lnk = (LinkButton)row.FindControl("LnkHdn");
                //int id1 = Convert.ToInt32(Lnk.Text);
                SqlCommand cmd = new SqlCommand(strConnString, con);
                cmd.CommandText = "select tbfiles.Name as audio,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles left join UserRatings  on tbfiles.Id=UserRatings.Id  where tbfiles.Id=" + id + " group by tbfiles.Name,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id order by tbfiles.Id desc";
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.SequentialAccess);

                while (reader.Read())
                {
                    audioName = reader["audio"].ToString();
                    if (!Directory.Exists((HttpContext.Current.Server.MapPath("TempMediaFiles")))) 
                    {
                        Directory.CreateDirectory((HttpContext.Current.Server.MapPath("TempMediaFiles")));
                    }

                    fs = new FileStream(HttpContext.Current.Server.MapPath("TempMediaFiles/" + audioName), FileMode.OpenOrCreate, FileAccess.ReadWrite);
                    bw = new BinaryWriter(fs);

                    bytesReturned = reader.GetBytes(columnIndex, startIndex, audioData, 0, bufferSize);

                    while (bytesReturned == bufferSize)
                    {
                        bw.Write(audioData);
                        bw.Flush();
                        startIndex += bufferSize;
                        bytesReturned = reader.GetBytes(columnIndex, startIndex, audioData, 0, bufferSize);
                    }

                    bw.Write(audioData, 0, (int)bytesReturned - 1);
                    //bw.Write(audioData, 0, (int)bytesReturned );
                    bw.Close();
                    fs.Close();

                }

                //}

            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                if (con.State == System.Data.ConnectionState.Open)
                    con.Close();
            }
        }
    }



    protected void btnUpload_Click(object sender, EventArgs e)
    {
        int check=0;
        //string ss = FileUpload1.FileName;
     if (checkDuplicateTitle (FileUpload1.FileName)==true )
     {
         string snam=FileUpload1 .FileName ;
         using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
        {
            byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into tbfiles(Name, Content_Type, Data,CreatedBy,Title,Artist,Description,Category,Tags,keepitprivate,Date) values (@Name, @ContentType, @Data,@CreatedBy,@Title,@Artist,@Description,@Category,@Tags,@keepitprivate,CONVERT(Date,getdate(),105) )";
                    cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
                    cmd.Parameters.AddWithValue("@ContentType", "audio/mpeg3");
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    cmd.Parameters.AddWithValue("@CreatedBy", uid );
                    cmd.Parameters.AddWithValue("@Title", txttitle.Text);
                    cmd.Parameters.AddWithValue("@Artist", txtartist.Text);
                    cmd.Parameters.AddWithValue("@Description", txtdescription.Text);
                    cmd.Parameters.AddWithValue("@Category", chkcategory.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Tags", txttags.Text);
               
                    if (rbtnyes.Checked ==true)
                    {check =1;}
                       if (rbtnNo .Checked ==true)
                       {check =0;}
                    cmd.Parameters.AddWithValue("@keepitprivate",check );
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.CommandText = "select max(id) from tbfiles";
                    con.Open();
                    int id =   Convert .ToInt32 ((cmd.ExecuteScalar()));
                    con.Close();
                    lblDuplicateTitle.Text =  "File uploaded successfully-" + snam  ;
                    txtdescription.Text = "";
                    txtartist.Text = "";
                      DownloadAudio(id );
                }
            }
         }

         //Response.Redirect(Request.Url.AbsoluteUri);
        //dwn();
        //BindGrid();
        //Response.Redirect("Default.aspx");


     }
    }


    bool  checkDuplicateTitle(string Songtitle)
    {
      string sdd=  txttitle.Text.Trim();
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select count (*) from tbfiles where name='" + Songtitle + "' and createdby=" + uid;
                int cnt = Convert .ToInt32 (  cmd.ExecuteScalar());
                con.Close();
                if (cnt >0)
                {
                   lblDuplicateTitle.Text =  "Already uploaded file-" + Songtitle ;
                   txtdescription.Text = "";
                   txtartist.Text = "";
                    return false ;
                 }
                  
            }
        }
     
        return true;

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


  
    

}
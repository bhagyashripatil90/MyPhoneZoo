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
using System.Text;
using System.IO;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Hosting;
using System.Web.UI.HtmlControls;
using System.Drawing;
//using System.Web.UI.HtmlControls.HtmlAnchor;

public partial class RingtoneList : System.Web.UI.Page, IHttpHandler
{

    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        {
          bindgridL();
                
        }
    }
   
    public void bindgridL()
    {
        lblUserName.Text = "WelCome " + Session ["uname1"] ;
      
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string getApppath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                try
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetAudioFileList";
                    cmd.Parameters.AddWithValue("@URL", getApppath + "/TempMediaFiles/");
                    cmd.Parameters.AddWithValue("@ContainerDivId", "cp_container_1_");
                    cmd.Parameters.AddWithValue("@PlayerDivId", "jquery_jplayer_1_");
                    cmd.Parameters.AddWithValue("@UserId", Session["uId"]);
                    cmd.Connection = con;
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);


                    //cmd.CommandText = "select tbfiles.Id,tbfiles.data,tbfiles.Name,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles left join UserRatings on tbfiles.Id=UserRatings.Id  group by tbfiles.Id,tbfiles.data,tbfiles.Name,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist order by tbfiles.Id desc";
                    //cmd.Connection = con;
                    //con.Open();
                    //SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //da.Fill(ds);
                    //DataTable DtNew = (DataTable)ds.Tables[0];
                    //DtNew.Columns.Add("URL", typeof(string));
                    //DtNew.Columns.Add("DivID", typeof(string));
                    //DtNew.Columns.Add("JPlayerID", typeof(string));

                    for (int p = 0; p < ds.Tables[0].Rows.Count; p++)
                    {
                        //string fs = getApppath + ("/TempMediaFiles/") + DtNew.Rows[p]["Name"].ToString();
                        //DtNew.Rows[p]["URL"] = fs;
                        //DtNew.Rows[p]["DivID"] = "cp_container_1_" + p;
                        //DtNew.Rows[p]["JPlayerID"] = "jquery_jplayer_1_" + p;
                        //string ss = ds.Tables[0].Rows[p]["Name"].ToString();

                        //if(!File. ("HttpContext.Current.Server.MapPath(TempMediaFiles/" ))
                        //{
                        DownloadAudio(Convert.ToInt32(ds.Tables[0].Rows[p]["Id"]), ds.Tables[0].Rows[p]["Name"].ToString());
                        //}

                    }

                    GridViewL.DataSource = ds.Tables[0];
                    GridViewL.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                { }
         }
        }
        }


    public void DownloadAudio(int id,string nm)
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

                   if (!Directory.Exists((HttpContext.Current.Server.MapPath("TempMediaFiles")))) 
                    {
                        Directory.CreateDirectory((HttpContext.Current.Server.MapPath("TempMediaFiles")));
                    }

                    if (!File.Exists(HttpContext.Current.Server.MapPath("TempMediaFiles/" + nm)))
                    {

                        SqlCommand cmd = new SqlCommand(strConnString, con);
                        cmd.CommandText = "select tbfiles.Name as audio,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles left join UserRatings  on tbfiles.Id=UserRatings.Id  where tbfiles.Id=" + id + " group by tbfiles.Name,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id order by tbfiles.Id desc";
                        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.SequentialAccess);

                        while (reader.Read())
                        {
                            audioName = reader["audio"].ToString();
                            //if (!Directory.Exists((HttpContext.Current.Server.MapPath("TempMediaFiles")))) ;
                            //{
                            //    Directory.CreateDirectory((HttpContext.Current.Server.MapPath("TempMediaFiles")));
                            //}

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

    protected void ImgPLay_Command(object sender, CommandEventArgs e)
    {   
    }
    void downloadFile(DataSet ds)
    {      
       
        Byte[] bytes = (Byte[])ds.Tables[0].Rows[0]["Data"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = ds.Tables[0].Rows[0]["Content_Type"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename=" + ds.Tables[0].Rows[0]["Name"].ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
  
    }
   
    protected void txtringtonesearch_TextChanged(object sender, EventArgs e)
    {      
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select tbfiles.Id,tbfiles.Name,tbfiles.CreatedBy,tbfiles.Artist,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles  left join UserRatings  on tbfiles.Id=UserRatings.Id  where tbfiles.Name LIKE '%" + txtringtonesearch.Text + "%' group by tbfiles.Id,tbfiles.Name,tbfiles.CreatedBy,tbfiles.Artist", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridViewL.DataSource = ds;
            GridViewL.DataBind();
            con.Close();
        }
    }

    
   
    protected void LnkHdn_Click(object sender, EventArgs e)
    {

    }

    protected void GridViewL_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewL.PageIndex = e.NewPageIndex;
        bindgridL();
    }
    protected void ImgPLay_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridViewL_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName =="Play")
        {
            GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int RowIndex = gvr.RowIndex;
            HdnFld.Value = RowIndex.ToString();
            //DownloadAudio(Convert.ToInt32(e.CommandArgument));
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "getName('" + RowIndex + "')", true);
           //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "Playfile('" + RowIndex + "')", true);
        }
     }
    protected void LnkLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home2.aspx");
    }
}
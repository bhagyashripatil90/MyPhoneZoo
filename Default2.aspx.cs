using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)    
    {        
       if (!IsPostBack)
        {

            bindGridL();
        //    DataTable DT = new DataTable();
        //    DT.Columns.Add("Name", typeof(string));
        //    DT.Columns.Add("URL", typeof(string));
                //    DataRow DRow;
        //    DRow = DT.NewRow();
        //    DRow["Name"] = "a";
        //    DRow["URL"] = "ajjj";
        //    DT.Rows.Add(DRow);
                //    DRow = DT.NewRow();
        //    DRow["Name"] = "b";
        //    DRow["URL"] = "bnbjjj";
        //    DT.Rows.Add(DRow);
                //    DRow = DT.NewRow();
        //    DRow["Name"] = "c";
        //    DRow["URL"] = "78787jjj";
        //    DT.Rows.Add(DRow);
                //    Gdv.DataSource = DT;
        //    Gdv.DataBind();
                 //}
        
        }
    }

    void bindGridL()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string getApppath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select tbfiles.Id,tbfiles.data,tbfiles.Name,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles left join UserRatings on tbfiles.Id=UserRatings.Id  group by tbfiles.Id,tbfiles.data,tbfiles.Name,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist order by tbfiles.Id desc";
                cmd.Connection = con;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                DataTable DtNew = (DataTable)ds.Tables[0];
                DtNew.Columns.Add("URL", typeof(string));
                DtNew.Columns.Add("DivID", typeof(string));
                //  DtNew.Columns.Add("DivJplayerID", typeof(string));
                DataRow Dr;

                for (int p = 0; p < DtNew.Rows.Count; p++)
                {
                    string fs = getApppath + ("/TempMediaFiles/") + DtNew.Rows[p]["Name"].ToString();
                    DtNew.Rows[p]["URL"] = fs;
                    DtNew.Rows[p]["DivID"] = "cp_container_1_" + p;
                    // DtNew.Rows[p]["DivJplayerID"] = "jquery_jplayer_1_" + p;
                }
                GridViewL.DataSource = DtNew;
                GridViewL.DataBind();
                con.Close();
            }
        }
    }
    public void GetData(int id)
    {         
        //Dictionary<string, string> name = new Dictionary<string, string>();
        //name.Add("1", "Sourav Kayal");
        //name.Add("2", "Ram mishra");
        //string myJsonString = (new JavaScriptSerializer()).Serialize(name);
        //return myJsonString;

      
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
                SqlCommand cmd = new SqlCommand(strConnString, con);
                cmd.CommandText = "select tbfiles.Name as audio,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id,Isnull(avg(UserRatings.Rating),0) as Rating  from tbfiles left join UserRatings  on tbfiles.Id=UserRatings.Id  where tbfiles.Id=" + id + " group by tbfiles.Name,tbfiles.data,tbfiles.Content_Type,tbfiles.CreatedBy,tbfiles.Artist,tbfiles.Id order by tbfiles.Id desc";
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.SequentialAccess);

                while (reader.Read())
                {
                    audioName = reader["audio"].ToString();
                    if (!Directory.Exists((HttpContext.Current.Server.MapPath("TempMediaFiles")))) ;
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
                    bw.Close();
                    fs.Close();

                    //Dictionary<string, string> name = new Dictionary<string, string>();
                    //name.Add("HttpContext.Current.Server.MapPath(TempMediaFiles/)" + audioName, "");
                    //name.Add("HttpContext.Current.Server.MapPath(TempMediaFiles/)" + audioName, "");
                    //myJsonString = (new JavaScriptSerializer()).Serialize(name);

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
       // return myJsonString;
    }


    
    protected void LnkHdn_Click(object sender, EventArgs e)
    {

    }
    protected void ImgPLay_Click(object sender, EventArgs e)
    {
        
     
       
    }


    protected void GridViewL_RowCommand(object sender, GridViewCommandEventArgs e)
    {      
            GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int RowIndex = gvr.RowIndex;
            HdnFld.Value = RowIndex.ToString();
            GetData(Convert.ToInt32(e.CommandArgument));
            // Label LblID = (Label)GridViewL.Rows[RowIndex].FindControl("LblID");
            //GetData(Convert .ToInt32 (e.CommandArgument ) );
            //GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            //int RowIndex = gvr.RowIndex;
            //HdnFld.Value = RowIndex.ToString();
            //GetData(RowIndex);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "getName('http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a')", true);     

    }


   
}
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MyEntityLayer;
using MyBuisenessLayer;
public partial class frmRegisterBROKEN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MyBL objbl = new MyBL();
            DataSet ds = new DataSet();
            ds = objbl.GetAll();

            //ddlcountry.DataSource = ds;
            //ddlcountry.DataValueField = "Id";
            //ddlcountry.DataTextField = "Country_Name";
            //ddlcountry.DataBind();

            ////ddlcountry.Items.Insert(0, new ListItem("-- Select --", "0"));
        }


    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }

            string query = "insert into tbl_Registration(UserName,Password,ConfirmPassword,EmailID,Date) values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtConfirmPassword.Text + "','" + txtEmailId.Text + "',CONVERT(Date,getdate(),105))";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();
            Response.Redirect("RingtoneList.aspx");

        }
        catch (Exception ex)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
        }
    }


    //protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    MyBL objbl = new MyBL();
    //   // //DataSet ds = new DataSet();
    //  //  //SqlDataReader dr = objbl.getbyid();
    //  //  // MyEL objel = new MyEL();
    //    List<MyEL> lstel = new List<MyEL>();
    //  //  // lstel = objbl.getbyid(ddlcountry.SelectedItem.Text);
    //    //DataSet ds = objbl.getbyid(ddlcountry.SelectedItem.Text);
    //    //ddlstate.DataSource = ds;
    //    //ddlstate.DataValueField = "Id";
    //    //ddlstate.DataTextField = "State_Name";
    //    //ddlstate.DataBind();
    //}
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        txtEmailId.Text = "";

    }
    //protected void txtcancel1_Click(object sender, EventArgs e)
    ////{
    //    txtfname.Text = "";
    //    txtlname.Text = "";
    //    txtcity.Text = "";
    //    ddlcountry.SelectedIndex = 0;

    //  //ddlcountry.Items.Clear();
    //ddlstate.Items.Clear();
    //txtaboutme.Text = "";
    //}


    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    SqlConnection con = new SqlConnection(constr);

    //    try
    //    {
    //        if (con.State == ConnectionState.Closed)
    //        {
    //            con.Open();

    //        }

    //        string q = "select max(Id) from tbl_Registration";

    //        SqlCommand cmd1 = new SqlCommand(q, con);

    //        int i = Convert.ToInt32(cmd1.ExecuteScalar());

    //        string query = "update tbl_Registration SET Fname='" + txtfname.Text + "',Lname='" + txtlname.Text + "',City='" + txtcity.Text + "', Country='" + ddlcountry.SelectedItem.Text + "',State='" + ddlstate.SelectedItem.Text + "',AbouMe='" + txtaboutme.Text + "' where Id='" + i + "'";

    //        /// string query = "insert into tbl_Registration(Fname,Lname,City,Country,State,AbouMe) values('" +txtfname.Text  + "','" + txtlname.Text + "','" + txtcity.Text + "','" + ddlcountry.SelectedItem.Text + "','"+ddlstate.SelectedItem.Text+"','"+txtaboutme.Text+"')";

    //        SqlCommand cmd = new SqlCommand(query, con);

    //        cmd.ExecuteNonQuery();
    //        Response.Redirect("RingtoneList.aspx");

    //    }

    //    catch (Exception ex)
    //    {
    //        if (con.State == ConnectionState.Open)
    //        {
    //            con.Close();

    //        }
    //    }
    //}

}
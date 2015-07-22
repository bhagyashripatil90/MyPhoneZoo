using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        string query = "select Password from tbl_Registration where EmailId='" + txteid.Text + "' ";

        SqlCommand cmd = new SqlCommand(query, con);


        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Label1.Text = dr.GetValue(0).ToString();


        }

       string pwd= Label1.Text;

        

        con.Close();

        //System.Net.Mail.MailMessage insMail = new System.Net.Mail.MailMessage();

        //System.Net.Mail.MailAddress insFrom = new MailAddress("pooja.hirave@gmail.com");
        //insMail.From = insFrom;

        //insMail.To.Add(txteid.Text);

        //insMail.Subject = "Please Take Your PAssword";

        //insMail.IsBodyHtml = true;
        ////change url
        //string strBody = "<html><body><font color=\"black\">Hello,<BR>password is " + pwd + " . </font></body></html>";
        //insMail.Body = strBody;

        //System.Net.Mail.SmtpClient ns = new SmtpClient("relay-hosting.secureserver.net"); //"localhost";//"relay-hosting.secureserver.net";
        //try
        //{
        //    ns.Send(insMail);
        //}

        //catch (Exception ex)
        //{
        //    Label2.Text = "Oeps, something when wrong when we tried to send the email";
        //    return;


        //}protected void btnSubmit_Click(object sender, EventArgs e)
        
            //try
            //{
            //    MailMessage Msg = new MailMessage();
            //    // Sender e-mail address.
            //    Msg.From = new MailAddress("pooja.hirave@gmail.com");
            //    // Recipient e-mail address.
            //    Msg.To.Add(txteid.Text);
            //    //Msg.Subject = txtSubject.Text;
            //    string strbody= "<html><body><font color=\"black\">Hello,<BR>password is " + pwd + " . </font></body></html>";
            //    Msg.Body = strbody;
            //    // your remote SMTP server IP.
            //    SmtpClient smtp = new SmtpClient();
                
            //    smtp.Host = "smtp.googlemail.com";
            //    smtp.Port = 25;
            //    smtp.Credentials = new System.Net.NetworkCredential("pooja.hirave@gmail.com","iloveumummy");
            //    smtp.EnableSsl = true;
            //    smtp.Send(Msg);
            //    Msg = null;
            //  //  Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='ForgotPassword.aspx';}</script>");
            //}
            //catch (Exception ex)
            //{
            //   // Console.WriteLine("{0} Exception caught.", ex);
            //   // Label2.Text = "Oeps, something when wrong when we tried to send the email";
            //      return;
            //}
       // var fromAddress = "pooja.hirave@gmail.com";
       // // any address where the email will be sending
       // var toAddress =txteid.Text;
       // //Password of your gmail address
       //// const string fromPassword = "Password";
       // // Passing the values and make a email formate to display
       //string subject = "Hi";

       // string body = pwd;
       // // smtp settings
       // var smtp = new System.Net.Mail.SmtpClient();
       // {
       //     smtp.Host = "smtp.gmail.com";
       //     smtp.Port = 587;
       //     smtp.EnableSsl = true;
       //     smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
       //     smtp.Credentials = new NetworkCredential("pooja.hirave@gmail.com", "iloveumummy");
       //     smtp.Timeout = 20000;
       // }
       // // Passing values to smtp object
       // smtp.Send(fromAddress, toAddress,subject, body);
        

    }
}
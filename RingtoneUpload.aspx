<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RingtoneUpload.aspx.cs" Inherits="RingtoneUpload" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    
     <link href="Style/home2.css" rel="stylesheet" type="text/css" />
   
</head>
    <body>
    <form id="form1" runat="server">
    <div id="Main">
        <div id="header">
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png">
              
            </asp:Image></a> 
             <h2>
                        &nbsp&nbsp&nbsp&nbsp  Your trusted source for everthing mobile&nbsp; </h2>
        
        </div>
         

        <div id="Main-Content">
            <div id="imgSqurd">
                 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                   <ins class="adsbygoogle"
                   style="display:inline-block;width:317px; height:285px"
                   data-ad-client="ca-pub-9331817746326065"
                   data-ad-slot="6774540430"></ins>
                <script> (adsbygoogle = window.adsbygoogle || []).push({});</script>
                <script>
                    (function (i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new Date(); a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                    ga('create', 'UA-62286438-1', 'auto');
                    ga('send', 'pageview');
                </script>
                     
           </div> <!-- END SQ AD -->
          <div id="panel">

                <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Label"></asp:Label>
            <br />
            <br /> 

          <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FF9966" 
                  Font-Bold="True" />
              <br />
              <br />
             
          <asp:Label ID="lbltitle" runat="server" Text="Title "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txttitle" runat="server" Height="31px" 
            Width="165px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lblartist" runat="server" Text="Artist "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtartist" runat="server" Height="28px" Width="172px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server" Text="Description "></asp:Label>
        &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
    
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />
        <asp:Button ID="btnUp" runat="server" BackColor="#FF9966" Font-Bold="True" 
            OnClick="btnUpload_Click" Text="Upload To Phonezoo" Height="25px" 
                  Width="177px" />

         
          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:Button ID="btnlogout" runat="server" onclick="btnlogout_Click" 
        Text="Cancel" BackColor="#FF9966" Font-Bold="True" Height="24px" Width="69px" />
              
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
          <br />
             &nbsp;<asp:Label ID="Label4" runat="server" Text="Copyrights Ownership: Clicking the upload button indicates you own copyrights to the audio file being uploaded and have read, understood and will abide by the Phonezoo Terms of Use and Privacy Policy."></asp:Label>
            
          </div>
           <div id="imgHrzntl">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div> 
         </div> <!-- END  MAIN CONTENT -->
       
         <div id="footer">
            <div id="Copyright">
                2015 Phonezoo.com &nbsp 
            </div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use &nbsp </a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy &nbsp &nbsp</a></li>
                
            </ul>
        </div> <!-- END FOOTER -->

     </div>
    </form>



    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Home2" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phonezoo</title>
    <link href="Style/Home2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Main">
        <div id="header">
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" 
                ImageUrl="Images/phonezoo-logo.png" Height="126px" Width="378px"> </asp:Image>  </a>
            <div id="Header-Login">
                <br />
                <asp:Label ID="lblplze" runat="server" Text="Please Sign in:" Style="margin-left: 5px; color: skyblue"></asp:Label>
                  <asp:TextBox ID="txtUserName" runat="server" placeholder="UserName" BorderColor="#0066FF"
                    BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="93px"
                    Style="border-radius: 3px;"></asp:TextBox>
               <asp:TextBox ID="txtPsswrd" runat="server" Style="margin-left: 5px; border-radius: 3px;"
                    BorderColor="#0066FF" placeholder="Password" BorderWidth="1px" BorderStyle="Solid"
                    TextMode="Password" Height="20px" Width="98px"></asp:TextBox>
                <asp:Button ID="btnSignin" runat="server" Text="Sign In" BackColor="#FF6600" ForeColor="White"
                    Height="20px" Width="69px" Style="border-radius: 3px;" 
                    onclick="btnSignin_Click" />
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" BackColor="#33CC33" ForeColor="White"
                    Height="20px" Width="70px" Style="border-radius: 3px;" 
                    onclick="btnSignup_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Style="color: skyblue" Text="Remember Me " />
                     I forgot my : 
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="SkyBlue" NavigateUrl="~/Forgot.aspx"> Forgot User Name?</asp:HyperLink> &nbsp
                    <asp:HyperLink ID="HyperLink2" url="#" runat="server" ForeColor="SkyBlue" NavigateUrl="~/ForgotPassword.aspx"> Forgot Password?</asp:HyperLink>
                     </div>
           
           
           
        </div> <!-- END HEADER -->

    <div id="Main-Content"> 
            <div id="imgSqurd">
                 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- PZ 336x280 Goog reco 1 -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:336px;height:280px"
                             data-ad-client="ca-pub-9331817746326065"
                             data-ad-slot="9253436837"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
             </div> <!-- END SQ AD -->

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
                     
            <h2>
           
                Welcome to Phonezoo  
                <br />
            
                Your trusted source for everthing mobile  
            </h2>
         

            
                <div class="imgSmrtPhn">
                    &nbsp;&nbsp;<a href="UploadRingtone.aspx" >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/upload.png" 
                        Height="118px" Width="207px" BorderColor="Black" BorderWidth="2px"></asp:Image>
                    <h3>
                       Upload and share Ringtones for FREE</h3> </a>
                </div>

            <div class="imgSmrtPhn">
                    &nbsp;&nbsp; <a href="RingtoneList.aspx"> <!-- changed from RingtoneInterstitial -->
                    <asp:Image ID="imgRngtns" runat="server" ImageUrl="~/Images/Itunes-ringtones.jpg" 
                           Height="118px" Width="207px" BorderColor="Black" BorderWidth="2px"></asp:Image>
                  
                    <h3>
                        Share & Download Ringtones for FREE! No login required!!
                         
                        </h3>
                          </a>
                </div>
       
      </div> <!-- END  MAIN CONTENT -->

        
         
        <br />
         <h2><i> <center>
                        
            <!-- Most easy site to download and setup ringtones for Android devices! Try it out!! -->
             <br />
             </center>
             </i></h2>
        <br />
        

         <div id="imgHrzntl">
                <br />
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div> 
        

             
        <div id="footer">
            <div id="Copyright">
               &copy 2015 Phonezoo.com &nbsp 
            </div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use &nbsp </a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy &nbsp &nbsp</a></li>
                <li><a href="Phonezoo-FAQ.aspx">FAQ</a> </li>
                
            </ul>
        </div> <!-- END FOOTER -->
    </div> <!-- END MAIN -->
    </form>
</body>
</html>

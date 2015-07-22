<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DownloadRingtone.aspx.cs" Inherits="DownloadRingtone" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>Phonezoo Free ringtone download</title>

<html xmlns="http://www.w3.org/1999/xhtml">



<head runat="server">
    <title>Download FREE ringtones</title>
    <link href="Style/home2.css" rel="stylesheet" type="text/css" />
    <link href="SM/demo/mp3-player-button/css/mp3-player-button.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="SM/script/soundmanager2.js"></script>
    <script type="text/javascript" src="SM/demo/mp3-player-button/script/mp3-player-button.js"></script>
    <script>
        soundManager.setup({
            // required: path to directory containing SM2 SWF files
            url: 'SM/swf/'
        });
    </script>




  <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     
 <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />



<script type="text/javascript">
    $("[id*=btnPopup]").live("click", function () {
        $("#dialog").dialog({
            title: "Iphone",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });

    $("[id*=btnandroid]").live("click", function () {
        $("#Div1").dialog({
            title: "Android",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });

    $("[id*=btnOther]").live("click", function () {
        $("#Div2").dialog({
            title: "Other Mobile",
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
</script>
    

</head>
<body>
       

    <form id="form1" runat="server">
    
    <div id="Main">
        
        <div id="header">
           <a href="Home2.aspx">
               <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png">
              
            </asp:Image></a> 
             <h2>
                        &nbsp&nbsp&nbsp&nbsp  Your trusted source for everthing mobile&nbsp; </h2>
    
            </div> <!-- END header -->

        <div id="Main-Content">
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
    <br />
            <div id="imgSqurd">
                 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                   <ins class="adsbygoogle"
                   style="display:inline-block;width:317px; height:285px"
                   data-ad-client="ca-pub-9331817746326065"
                   data-ad-slot="6774540430"></ins>
                <script> (adsbygoogle = window.adsbygoogle || []).push({});</script>
           </div> <!-- END SQ AD -->
          <div id="GridviewDNLD"> 
             
              
             <asp:DataList ID="DataList1" runat="server" Height="10px" 
                     Width="300px">



                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                  <h2>  Ringtone Details:</h2></td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Created By :">
                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="LblCell" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("CreatedBy") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Artist :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Artist") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Category  :">
                    </asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Category") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Description  :"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <br></br>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Tags:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" ForeColor="Blue" 
                                        Text='<%#Eval("Tags") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            <br />
                <asp:GridView 
                 ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100px"
            RowStyle-BackColor="#A1DCF2" Font-Names="Arial" Font-Size="15pt" HeaderStyle-BackColor="#FBB13C"
            HeaderStyle-ForeColor="White" Width="383px" 
            OnRowCommand="GridView1_RowCommand" style="margin-left: 30px" BackColor="#FF9933">
                        <Columns>
                            <asp:TemplateField HeaderText="Play ringtone"  HeaderStyle-ForeColor="Black" >
                                
                                <ItemTemplate>
                                    &nbsp &nbsp
                                 <!-- Display the audio player with control buttons. -->
                           <audio controls="true" >

                           <source src="File.ashx?Id=<%# Eval("Id") %>" type="audio/mp3"> 
                               <source src="File.ashx?Id=<%# Eval("Id") %>" type="audio/ogg"> 
                                   <source src="File.ashx?Id=<%# Eval("Id") %>" type="audio/mp4"> 
                                       <source src="File.ashx?Id=<%# Eval("Id") %>" type="audio/wav"> 
                                           <source src="File.ashx?Id=<%# Eval("Id") %>" type="audio/m4a">
                                </audio>

                                  <!--  <p><a class="sm2_button"  href='File.ashx?Id=<%# Eval("Id") %>' >A </a> A </p> -->
                                
                                   </ItemTemplate>  

                                <ControlStyle BackColor="White" />
                                <HeaderStyle ForeColor="Black"></HeaderStyle>

                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>  
               
              <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="btnDownload" runat="server" onclick="btnDownload_Click" Text="Download" Fontsize="40"
                    BackColor="#FFCC99" Height="45px" Width="134px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </asp:Button>

              
       
            <br /><br />
                 
                    <table border="0" style="width:600px">
  <tr>
    <td> <a href="iphone-help.aspx">  <img src="Images/apple-help.jpg" alt="apple help" style="height:106px; width=160px" /></a></td>
    <td> <a href="android-help.aspx">  <img src="Images/android-help.png" alt="android help" style="height:106px; width=160px" /></a></td> 
    <td> <a href="ff-help.aspx">  <img src="Images/ff-help.jpg" alt="feature help" style="height:106px; width=160px" /></a></td>
  </tr>
  <tr>
    <td> <a href="iphone-help.aspx">  Iphone instructions </a></td>
    <td> <a href="android-help.aspx">  Android instructions </a></td> 
    <td> <a href="ff-help.aspx">  Other Phone instructions </a></td>
  </tr>
</table>

           
                 <br />
                  <center> <a href="RingtoneList.aspx">   Back to ringtone list ...</a> 
                  </center>
              
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
               &copy 2015 Phonezoo.com &nbsp 
            </div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use &nbsp </a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy &nbsp &nbsp</a></li>
                <li><a href="mailto:support@phonezoo.com?subject=Phonezoo%20Feedback">Send us feedback</a> </li>
            </ul>
        </div> <!-- END FOOTER -->
      </div>     <!-- END MAIN -->
      
    </form>
</body>
</html>

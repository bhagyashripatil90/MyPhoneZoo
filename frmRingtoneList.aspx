﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRingtoneList.aspx.cs" Inherits="frmRingtoneList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
    <meta name=viewport content="width=device-width, initial-scale=1">

    <link href="Style/Home2.css" rel="stylesheet" type="text/css" />
</head>
<body>
  
    <form id="form1" runat="server">
       <div id ="Main">
            <div id="header">
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png"> </asp:Image></a>
            </asp:Image></a>            
             <h2>                      
                 Your trusted source for everthing mobile&nbsp; </h2>        
        </div> 
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
                     <br />
                     <br />
                       <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                   <ins class="adsbygoogle"
                   style="display:inline-block;width:317px; height:285px"
                   data-ad-client="ca-pub-9331817746326065"
                   data-ad-slot="6774540430"></ins>
                <script>                    (adsbygoogle = window.adsbygoogle || []).push({});</script>

           </div> <!-- END SQ AD -->

            <table border="1" style="width:500px">

                 <tr>
                     <th colspan="2">Popular Ringtones</th>
                 </tr>
                 <tr> 
                 <td> Play </td>  
                 <td> Title (click to download) </td>
                 </tr>
                  <tr> 
                     <td>      
                     <audio controls="true" >
                           <source src="File.ashx?Id=34" type="audio/mp3"> 
                                </audio>
                      </td> 
                      <td>
                           <a href="DownloadRingtone.aspx?Id=66">Baby laughing &nbsp &nbsp</a>
                       </td>
                     </tr>
                 <tr> 
                     <td>      
                <audio controls="true" >
                           <source src="File.ashx?Id=10" type="audio/mp3"> 
                                </audio>
                        </td> 
                                <td>
                                    <a href="DownloadRingtone.aspx?Id=10">Your momma calling back &nbsp &nbsp</a>
                                </td>
                            </tr>
                   <tr> 
                     <td>      
                     <audio controls="true" >
                           <source src="File.ashx?Id=66" type="audio/mp3"> 
                                </audio>
                      </td> 
                      <td>
                           <a href="DownloadRingtone.aspx?Id=66">CTU-24 classic &nbsp &nbsp</a>
                       </td>
                     </tr>
                  <tr> 
                     <td>      
                    <audio controls="true" >
                           <source src="File.ashx?Id=15" type="audio/mp3"> 
                                </audio>
                      </td> 
                      <td>
                           <a href="DownloadRingtone.aspx?Id=15">Kkrazy frog moped &nbsp &nbsp</a>
                       </td>
                     </tr>
                  <tr> 
                     <td>      
                     <audio controls="true" >
                           <source src="File.ashx?Id=38" type="audio/mp3"> 
                                </audio>
                      </td> 
                      <td>
                           <a href="DownloadRingtone.aspx?Id=38">police usa &nbsp &nbsp</a>
                       </td>
                     </tr>
                   <tr> 
                     <td>      
                     <audio controls="true" >
                           <source src="File.ashx?Id=290" type="audio/mp3"> 
                                </audio>
                      </td> 
                      <td>
                           <a href="DownloadRingtone.aspx?Id=290">cuppycake song (Cutest everr!!) &nbsp &nbsp</a>
                       </td>
                     </tr>
                        </table>
              <br />

         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
              
              <br />
&nbsp;<br />
 Search Ringtone:-        
            <asp:TextBox ID="txtringtonesearch" runat="server" Height="29px" 
                 Width="239px" AutoPostBack="true"></asp:TextBox> 
            
            <br />
                 <div id="GridviewDiv">
                 <asp:GridView ID="GdvL" runat="server" AutoGenerateColumns="False"  Height="50px"
            Width="550px" BackColor="White" AllowPaging="True" CellPadding="3"  CellSpacing="5">

            <Columns>
            <asp:TemplateField>
            <ItemTemplate>
             <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25" height="20">
                                        <param name="movie" value="player_mp3_maxi.swf" />
                                         <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                    </object>
            </ItemTemplate>
            <HeaderStyle BackColor="#FFCC66" />
            </asp:TemplateField>
            <asp:TemplateField >
            <ItemTemplate>
             <table>
                            <tr>
                                <td>
                                    <asp:Label ID="LblID" runat="server" Visible="false" Text='<%#Eval("Id") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButtonL" runat="server" Text='<%#Eval("Name") %>' ></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
            </ItemTemplate>
             <HeaderStyle BackColor="#FFCC66" />
            </asp:TemplateField>
             <asp:BoundField DataField="CreatedBy" HeaderText="Created By" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                
                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
            </Columns>
                 
                 </asp:GridView>

          <%--<asp:GridView ID="GridViewL" runat="server" AutoGenerateColumns="False"  Height="50px"
            Width="550px" BackColor="White" AllowPaging="True"     CellPadding="3" 
                  CellSpacing="5"  >
            <Columns>
                <asp:TemplateField HeaderText="Play">
                    <ItemTemplate>
                
                         <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25" height="20">
                                        <param name="movie" value="player_mp3_maxi.swf" />
                                         <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                    </object>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title (Click to download)">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="LblID" runat="server" Visible="false" Text='<%#Eval("Id") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButtonL" runat="server" Text='<%#Eval("Name") %>' ></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                
                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                
            </Columns>
        </asp:GridView>--%>
                 
                        
         </div> <!-- end grid view -->
          <div id="HorizontalAdUnit">
             <script type="text/javascript" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div> 

        
        </div> <!-- END MAIN CONTENT -->
          <div id="footer">
            <div id="Copyright">
               &copy 2015 Phonezoo.com &nbsp 
            </div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use &nbsp </a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy &nbsp &nbsp</a></li>
                <li> <a href="Phonezoo-FAQ.aspx">FAQ</a> </li>
            </ul>
        </div> <!-- END FOOTER -->
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NextPage.aspx.cs" Inherits="NextPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phonezoo</title>
    <link href="Style/NextPage.css" rel="stylesheet"   />
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

</head>
<body>
    <form id="form1" runat="server">
  
    <div id="Main">
      
        <div id="header">
           <a href="Home2.aspx"> <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/phonezoo-logo.png">
            </asp:Image></a>
            <h2>
                You Trusted Source For Everthing Mobile.</h2>
        </div>
      
            <div id="imgBvertical">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- ph -->
            <ins class="adsbygoogle" style="display: inline-block; width: 150px; height: 480px"
                data-ad-client="ca-pub-3789707517497651" data-ad-slot="6281343421"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
            </div>
            <div id="Main-Contain">
         <div id="plchldrVideo" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label10" runat="server" Text="WelCome User "></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
                 ID="GridView1" runat="server" AutoGenerateColumns="False" Height="165px"
            RowStyle-BackColor="#A1DCF2" Font-Names="Arial" Font-Size="10pt" HeaderStyle-BackColor="#3AC0F2"
            HeaderStyle-ForeColor="White" Width="383px" 
            OnRowCommand="GridView1_RowCommand" style="margin-left: 63px">
                        <Columns>
                            <asp:TemplateField HeaderText="Make Your Time Musical" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'
                            width="400" height="20" id="dewplayer">
                                        <param name="wmode" value="transparent">
                                        <param name="movie" value='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'>
                                        <%--  <param name='autoplay' value='true'/>
                    <param name='autostart' value='true'/>
                    <param name='controller' value='true'>--%>
                                    </object>
                                    <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#FFCC99" 
            Text="Length:30.0sec"></asp:Label>
                                    <%--   <asp:Label ID="LblID" runat="server" Text ='<%# Eval("Id") %>' Visible="false" ></asp:Label>--%>
                                </ItemTemplate>
                                <ControlStyle BackColor="White" />

<HeaderStyle ForeColor="Black"></HeaderStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnDownload" runat="server" onclick="btnDownload_Click" Text="Download" 
                    BackColor="#FF9966" Height="30px" Width="134px" />
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="RingToneList" BackColor="#FF9966" Height="31px" Width="146px" />
                <asp:DataList ID="DataList1" runat="server" Width="510px" Height="16px">
              <ItemTemplate>
              <table>
              <tr><td>Ringtone Details :</td></tr>
                <tr>
                     <td> <asp:Label ID="Label2" runat="server" Text="Created By :">
                    </asp:Label></td> <td><asp:Label ID="LblCell" runat="server" Text='<%#Eval("CreatedBy") %>' ForeColor="Blue"></asp:Label>
                     </td>
                </tr>
                    <br>
                </br>
                <tr>
                    <td> 
                    <asp:Label ID="Label4" runat="server" Text="Artist :"></asp:Label></td>
                   <td> <asp:Label ID="Label3" runat="server" Text='<%#Eval("Artist") %>' ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                    <br>
                </br>
                <tr>
                    <td>
                    <asp:Label ID="Label6" runat="server" Text="Category  :">
                    </asp:Label></td> <td><asp:Label ID="Label5" runat="server" Text='<%#Eval("Category") %>' ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                    <br>
                 </br>
                 <tr>
                    <td> 
                    <asp:Label ID="Label8" runat="server" Text="Description  :"></asp:Label></td>
                  
                   <td> <asp:Label ID="Label7" runat="server" Text='<%#Eval("Description") %>' ForeColor="Blue"></asp:Label>
                </td>
                </tr>
                    <br>
                 </br>
                <tr>
                      <td> 
                      <asp:Label ID="Label12" runat="server" Text="Tags:"></asp:Label></td>
                    
                     <td> <asp:Label ID="Label9" runat="server" Text='<%#Eval("Tags") %>' ForeColor="Blue"></asp:Label>
                      </td>
                </tr>
               
                
                </table>
                </ItemTemplate>
                </asp:DataList>
                <br />
                <br />
                <br />
        </div>
        <div id="End-Contain">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- etcphone -->
            <ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-3789707517497651"
     data-ad-slot="7978402624"></ins>

<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
        </div>
       <div id="footer">
            <div id="Copyright">
                Copyright(c)2015 Phonezoo.com</div>
            <ul>
                <li><a href="termsofuse.aspx">Terms of use</a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy</a></li>
               <!-- <li><a href="dmca.aspx">DMCA Policy</a></li>-->
               <!--<li><a href="#">Info@phonezoo.com</a></li>
                <li><a href="reportabuse.aspx">Report Abuse</a></li>-->
            </ul>
        </div>
    </div>
    </form>
</body>
</html>

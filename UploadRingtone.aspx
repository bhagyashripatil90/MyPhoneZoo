<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadRingtone.aspx.cs" Inherits="UploadRingtone" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/mediaelement-and-player.min.js"></script>
    <link rel="stylesheet" href="/css/mediaelementplayer.css" />
       <link href="Style/home2.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" >
          function GetFileName(val)
           {
             var i = val.lastIndexOf("\\");
   return val.substring(i+1);
                 }
</script>
   
   
</head>
<body>
     <form id="form1" runat="server">
     <div id="Main">
     <%--  <table align ="right"  >
     <tr >
     <td>  <asp:HyperLink ID="LnkHome"  NavigateUrl ="~/RingtoneList.aspx"   runat="server" Text="Home" ForeColor ="white" Font-Bold     ></asp:HyperLink></td>
     <td >  <asp:HyperLink ID="LnkOut" runat="server" Text="LogOut"  NavigateUrl ="~/Home2.aspx"   ForeColor ="white" Font-Bold  ></asp:HyperLink></td> 
    
     
      </tr>
     </table>--%>

     
      
      <div id="Main-Content" style="vertical-align :top">
   
    <table style="width:100%"  cellspacing="0">
    <tr bgcolor ="black" >
    <td bgcolor="black" style="border-color:Black;" class="style1">
       
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" 
               ImageUrl="Images/phonezoo-logo.png" BackColor="Black" Width="361px">
              
            </asp:Image></a>       
    
    
    </td>
    <td bgcolor="black" style="border-color:Black;">

    <div id="header2" style="vertical-align: middle">
                                <table>
                                    <tr>
                                        <td align="right" style="background-color: Black">
                                            <asp:Label ID="lblUserName" ForeColor="Yellow" Font-Size="Smaller" runat="server"
                                                Text="Label"></asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:HyperLink ID="LnkHome"  NavigateUrl ="~/RingtoneList.aspx"   runat="server" Text="Home" ForeColor ="white" Font-Bold     ></asp:HyperLink>
                                              &nbsp;&nbsp;
                                            <asp:HyperLink ID="LnkOut" runat="server" Text="LogOut"  NavigateUrl ="~/Home2.aspx"   ForeColor ="white" Font-Bold  ></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                    <td>
                                     <h2 style="width: 489px">
                                         &nbsp;</h2>
                                        <h2 style="width: 489px">
                                    &nbsp;&nbsp; Your trusted source for everthing mobile
                                </h2>
                                    </td>
                                    </tr>
                                </table>
                               
                            </div>

<%--
     <h2 style="color: #FFFFFF" >Your trusted source for everthing mobile </h2> --%> 
    </td>
    
    </tr>
   
    <tr>
  
    <td  colspan="2"><asp:Label ID="LablTitle" runat="server" Text ="Upload Ringtones" Font-Bold="true" ForeColor="Brown"></asp:Label></td>
     
    </tr>    
    <tr>
    <td class="style1" >
        <asp:Label ID="lbltitle" runat="server" Text="Title "></asp:Label> 
        </td>
    <td class="style6"><asp:TextBox ID="txttitle" runat="server" Height="21px"  Width="165px" Enabled="False"></asp:TextBox>
       
        <asp:Label ID="lblDuplicateTitle" runat="server" Text="Label" ForeColor ="Green"  Font-Size="Medium"  Font-Bold  ></asp:Label>
           </td>
    
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="lblartist" runat="server" Text="Artist "></asp:Label>
        </td>
    <td class="style6">
        <asp:TextBox ID="txtartist" runat="server" Height="22px" Width="172px"></asp:TextBox>
        </td>
    
 
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="lblartist0" runat="server" Text="Select File"></asp:Label><asp:Label ID="Label3" runat="server" Text="*" ForeColor ="Red" ></asp:Label>
        </td>
    <td class="style6">
    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FF9966"  onchange="this.form.txttitle.value=GetFileName(this.value);"/>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate ="FileUpload1" runat="server" ForeColor ="Red" Font-Size ="Smaller"  ErrorMessage="Select file to upload"></asp:RequiredFieldValidator>
        </td>
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="lbldescription" runat="server" Text="Description "></asp:Label>
        </td>
    <td class="style6">
        <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
     
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="lblcat" runat="server" Text="Category "></asp:Label>
        </td>
    <td class="style6">
        <asp:CheckBoxList ID="chkcategory" runat="server" Height="34px" 
            RepeatDirection="Horizontal" Width="300px">
            <asp:ListItem Selected="True" Value="0">Everyday Sounds</asp:ListItem>
            <asp:ListItem Value="1">Holiday</asp:ListItem>
            <asp:ListItem Value="2">Music</asp:ListItem>
        </asp:CheckBoxList>
        </td>
   
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="lbltags" runat="server" Text="Tags "></asp:Label>
        </td>
    <td class="style6">
        <asp:TextBox ID="txttags" runat="server" Height="29px" Width="166px"></asp:TextBox>
        </td>
  
    </tr>    
    <tr>
    <td class="style1">
        <asp:Label ID="Label2" runat="server" Text="Keep It Private : "></asp:Label>
        </td>
    <td class="style6">
        <%-- <asp:CheckBoxList ID="chkprivate" runat="server" Height="18px" 
            RepeatDirection="Horizontal" Width="300px">
            <asp:ListItem Selected="True" Value="0">Yes</asp:ListItem>
            <asp:ListItem Value="1">No</asp:ListItem>
        </asp:CheckBoxList>--%>
               <asp:RadioButton ID="rbtnyes" runat="server" Checked="True" GroupName="tags" Text="Yes" /> </asp:RadioButton>
             <asp:RadioButton ID="rbtnNo" runat="server" GroupName="tags" Text="No" /></asp:RadioButton>
        </td>
   
    </tr>    
    <tr>
   
    <td  colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
        <asp:Button ID="btnUpload" runat="server" BackColor="#FF9966" Font-Bold="True" 
            OnClick="btnUpload_Click" Text="Upload To Phonezoo" Height="32px" />
        
    &nbsp;&nbsp; 
           
              
           </td>
   
    </tr>    
   
   
        
    <tr>
    <td colspan="2"><asp:Label ID="Label4" runat="server" Text="Copyrights Ownership: Clicking the upload button indicates you own copyrights to the audio file being uploaded and have read, understood and will abide by the Phonezoo Terms of Use and Privacy Policy."></asp:Label>
            
          </td>
   
    </tr>    
    <tr>
    <td colspan="2">
            <%--<ins class="adsbygoogle"
                  style="display:inline-block;width:922px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>--%>
            </td>
    
    </tr>    
    <tr>
   <%-- <td colspan="2"><div id="imgHrzntl">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div></td>--%>
     </tr>
     <tr>
      <td colspan="2"><div id="imgHrzntl">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div></td>
     </tr>
            </table>
      </div>  


      
         <div id="footer">
            <div id="Copyright">
               &copy 2015 Phonezoo.com &nbsp 
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

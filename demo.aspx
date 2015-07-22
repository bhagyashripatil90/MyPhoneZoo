<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajxtoolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Phonezoo</title>
    <link href="Style/NextPage.css" rel="stylesheet"   />
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<%--<script type="text/javascript">
$(function() {
    $('#<%=button1.ClientID%>').click(function () {
$("#popupdiv1").dialog({
title: "Welcome to android",
width: 500,

height: 300,
modal: true,
buttons: {
Close: function() {
$(this).dialog('close');
}
}
});
return false;
});
})

$(function () {
    $('#<%=button2.ClientID%>').click(function () {
        $("#popupdiv2").dialog({
            title: "Welcome to iPhone",
            width: 500,

            height: 300,
            modal: true,
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
})

$(function () {
    $('#<%=button3.ClientID%>').click(function () {
        $("#popupdiv3").dialog({
            title: "Welcome to Other Phone",
            width: 500,

            height: 300,
            modal: true,
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
})--%>
</script>
<style type="text/css">
        body
        {
            margin: 0px auto;
            width: 980px;
            font-family: "Trebuchet MS" , Arial, Helvetica, sans-serif;
            background: #C9C9C9;
        }
        .blankstar
        {
            background-image: url(Images/blank_star.png);
            width: 16px;
            height: 16px;
        }
        .waitingstar
        {
            background-image: url(Images/half_star.png);
            width: 16px;
            height: 16px;
        }
        .shiningstar
        {
            background-image: url(Images/shining_star.png);
            width: 16px;
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  
    <div id="Main">
      
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <div id="header">
           <a href="LogHome.aspx"> <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/phonezoo-logo.png">
            </asp:Image></a>
            <h2>
                You Trusted Source For Everthing Mobile</h2>
        </div>
        <%--<div>
<div id="popupdiv1" title="Basic modal dialog" style="display: none">
<b> This is Android</b>
</div>
</div>

<div style="height: 25px">
<div id="popupdiv2" title="Basic modal dialog" style="display: none">
<b> This is iPhone</b>
</div>
</div>

<div>
<div id="popupdiv3" title="Basic modal dialog" style="display: none">
<b> This is Other Mobile Section</b>
</div>
</div>--%>
            <div id="imgBvertical">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- ph -->
            <ins class="adsbygoogle" style="display: inline-block; width: 150px; height: 467px"
                data-ad-client="ca-pub-3789707517497651" data-ad-slot="6281343421"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
            </div>
            <div id="Main-Contain">
         <div id="plchldrVideo" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Log Out" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 Width="686px" Height="209px" style="margin-left: 323px" 
                 BackColor="#FFCC66" runat="server" 
        RowStyle-BackColor="#A1DCF2" Font-Names="Arial" Font-Size="10pt" HeaderStyle-BackColor="#3AC0F2"
        HeaderStyle-ForeColor="Black" onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="LblID" runat="server" Visible="false" Text='<%#Eval("Id") %>'>
                                    </asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("Name") %>' OnClick="LinkButton1_Click1"></asp:LinkButton>
                                </td>
                                
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" />
                
             <asp:TemplateField HeaderText="Rating">
             <ItemTemplate>
             <ajxtoolkit:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar"
        WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" 
        EmptyStarCssClass="blankstar" Tag='<%# Bind("Id")%>' OnChanged="Rating1_Changed" CurrentRating=' <%#Convert.ToInt32((DataBinder.Eval(Container, "DataItem.Rating"))) %>' />
                 
  </ItemTemplate>
  
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Max Rating">
                <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Rating") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="#A1DCF2"></RowStyle>
        </asp:GridView>
                </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        <div id="End-Contain">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- etcphone -->
            <ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:70px"
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

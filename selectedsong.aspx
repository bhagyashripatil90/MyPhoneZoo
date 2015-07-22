<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectedsong.aspx.cs" Inherits="selectedsong" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #dewplayer
        {
            height: 59px;
        }
        #form2
        {
            height: 392px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="plchldrVideo" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="150px"
            RowStyle-BackColor="#A1DCF2" Font-Names="Arial" Font-Size="10pt" HeaderStyle-BackColor="#3AC0F2"
            HeaderStyle-ForeColor="White" Width="383px" 
            OnRowCommand="GridView1_RowCommand" style="margin-left: 251px">
            <Columns>
                <asp:TemplateField HeaderText="Make Your Time Musical">
                    <ItemTemplate>
                        <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'
                            width="400" height="20" id="dewplayer">
                            <param name="wmode" value="transparent">
                            <param name="movie" value='dewplayer-vol.swf?mp3=File.ashx?Id=<%# Eval("Id") %>'>
                            <%--  <param name='autoplay' value='true'/>
                    <param name='autostart' value='true'/>
                    <param name='controller' value='true'>--%>
                        </object><asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#FFCC99" 
            Text="Length:30.0sec"></asp:Label>
                        <%--   <asp:Label ID="LblID" runat="server" Text ='<%# Eval("Id") %>' Visible="false" ></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="#A1DCF2"></RowStyle>
        </asp:GridView>
       
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDownload" runat="server" onclick="btnDownload_Click" 
        Text="Download" />
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="RingToneList" />
       
    </form>
</body>
</html>

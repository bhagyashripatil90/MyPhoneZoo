<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyDemo.aspx.cs" Inherits="MyDemo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajxtoolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="WelCome User"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <!--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
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
        EmptyStarCssClass="blankstar" OnChanged="Rating1_Changed" CurrentRating=' <%#Convert.ToInt32((DataBinder.Eval(Container, "DataItem.Rating"))) %>' />
  
                </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>-->
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="241px"
            Width="459px" BackColor="White">
            <Columns>
                <asp:TemplateField HeaderText="Play Music">
                    <ItemTemplate>
                        <asp:Button ID="btnplay" runat="server" Text="Play" Width="60px" CommandArgument='<%# Eval("Id") %>'
                            OnClick="btnplay_Click" />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
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
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Rating">
                    <ItemTemplate>
                        <ajxtoolkit:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar"
                            WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" EmptyStarCssClass="blankstar"
                            Tag='<%# Bind("Id")%>' OnChanged="Rating1_Changed" CurrentRating=' <%#Convert.ToInt32((DataBinder.Eval(Container, "DataItem.Rating"))) %>' />
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Max Rating">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Rating") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#FFCC66" />
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" >
                <HeaderStyle BackColor="#FFCC66" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Delete Ringtone">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkdelete" runat="server" onclick="lnkdelete_Click">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        &nbsp;</div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="LogOut" 
        Font-Overline="False" Height="24px" Width="81px" />
    </form>
</body>
</html>

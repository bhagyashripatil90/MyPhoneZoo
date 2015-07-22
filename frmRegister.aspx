<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegister.aspx.cs" Inherits="frmRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Register.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            width: 273px;
            height: 4px;
        }
        .style4
        {
            width: 172px;
            height: 4px;
        }
        .style5
        {
            height: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Main">
        <table style="width: 100%">
            <tr>
                <td>
                    <div id="header">
                        <a href="Home2.aspx">
                            <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png"></asp:Image></a>
                        <h2>
                            You Trusted Source For Everthing Mobile
                        </h2>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="Main">
                        <table style="width: 100%">
                            <tr>
                                <td colspan="3">
            <asp:Label ID="Label1" runat="server" BackColor="#FFCC66" Font-Bold="True" Height="21px"
                Text="Create  Your  Phonezoo  Profile" Width="57%"></asp:Label>
            
                                </td>
                               
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label2" runat="server" 
                Text="Fileld Marked With asterisk * are required" ForeColor="Red"></asp:Label>
                                </td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label3" runat="server" Text="User Name :"></asp:Label>

                                    *</td>
                                <td class="style2">
            <asp:TextBox ID="txtUsername" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="0" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="#CC0000" 
                ValidationGroup="0"></asp:RequiredFieldValidator>
                                </td>
                                <td>
            <asp:Label ID="Label22" runat="server" Font-Italic="True" Text="This will be the name other users know you by"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
                                    *</td>
                                <td class="style2">
            <asp:TextBox ID="txtPassword" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" TextMode="Password" ValidationGroup="0"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="#CC0000" 
                ValidationGroup="0"></asp:RequiredFieldValidator>
                                </td>
                                <td>

            <asp:Label ID="Label23" runat="server" Font-Italic="True" Text="Password must be at least six characters long"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label5" runat="server" Text="Confirm Password :"></asp:Label>
                                    *</td>
                                <td class="style2">

            <asp:TextBox ID="txtConfirmPassword" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" TextMode="Password" ValidationGroup="0"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="txtConfirmPassword" ErrorMessage="*" ForeColor="#CC0000" 
                ValidationGroup="0"></asp:RequiredFieldValidator>
                                </td>
                                <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" ErrorMessage="Password and confirm password must be same"
                ForeColor="#CC0000"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label6" runat="server" Text="Email Address :"></asp:Label>
                                    *</td>
                                <td class="style2">
            <asp:TextBox ID="txtEmailId" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="0"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ControlToValidate="txtEmailId" ErrorMessage="*" ForeColor="#CC0000" 
                ValidationGroup="0"></asp:RequiredFieldValidator>

                                </td>
                                <td>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="#CC0000"
                ControlToValidate="txtEmailId" ErrorMessage="example@gmail.com" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="0"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
            <asp:Label ID="Label7" runat="server" Text="Terms Of Service :"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
            <asp:Label ID="Label17" runat="server" Text="Please review the Phonezoo"></asp:Label>
                                    <a href="termsofuse.aspx">&nbsp; Terms of Use</a> and <a href="privacypolicy.aspx">
                                    Privacy Policy</a> then indicate your agreement below
                                   
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2" colspan="2">
                              
                                   <asp:CheckBox ID="chk" runat="server" /> <asp:Label ID="Label31" runat="server" 
                                        Text="* Check This box to indicate your agrrement to be PhoneZoo Terms of Use and Privacy Policy."></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td class="style4">
                                    </td>
                                <td class="style5">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
            <asp:Button ID="btnRegister" runat="server" BorderStyle="Solid" Text="Register" BorderColor="Gray"
                BorderWidth="1px" OnClick="btnRegister_Click" ValidationGroup="0" Height="30px" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat ="server" BorderStyle ="Solid" Text ="Cancel" BorderColor ="Gray"
                BorderWidth="1px" OnClick="btnRegister_Click" ValidationGroup="0" Height="30px"   />  
                        
           
                                </td>
                                <td>
                                    </td>
                            </tr>
                            
                            <tr>
                                <td class="style1" colspan="3">
                                   <hr /></td>
                            </tr>
                            
                            <tr>
                                <td class="style1" colspan="2">
            <%--<asp:Label ID="Label16" runat="server" BackColor="#FFCC66" Font-Bold="True" Height="23px"
                Text="Enter Optional information..."
                Width="56%"></asp:Label>--%>
                                </td>
                                <td>
            <%--<asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Phonezoo respects Your Privacy."></asp:Label>--%>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="fname" runat="server" Text="First Name :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:TextBox ID="txtfname" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="2"></asp:TextBox>--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lbllname" runat="server" Text="Last Name :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:TextBox ID="txtlname" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="2"></asp:TextBox>--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lblcity" runat="server" Text="City :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:TextBox ID="txtcity" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="2"></asp:TextBox>--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lblcountry" runat="server" Text="Country :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:DropDownList ID="ddlcountry" runat="server" Height="31px" Width="148px" AutoPostBack="true" 
                OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" 
                ValidationGroup="2">
                <asp:ListItem Selected="True">
                
                Select</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>--%>

                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lblstate" runat="server" Text="State/Provinee :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:DropDownList ID="ddlstate" runat="server" Font-Bold="False" Font-Overline="False"
                Height="29px" Width="151px" ValidationGroup="2">
            </asp:DropDownList>--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lblphoto" runat="server" Text="My Photo :"></asp:Label>--%>
                                </td>
                                <td class="style2">
                                    <%--<asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Silver" BorderStyle="Solid"
                BorderWidth="2px" Height="25px" />--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="lblurl" runat="server" Text="My Url :"></asp:Label>--%>
                                </td>
                                <td class="style2">
            <%--<asp:TextBox ID="TextBox7" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ></asp:TextBox>--%>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
            <%--<asp:Label ID="Label15" runat="server" Text="About Me :"></asp:Label>--%>
                                </td>
                                <td class="style2" colspan="2">
                                  <%--<asp:TextBox ID="txtaboutme" runat="server" TextMode="MultiLine"
                BorderColor="#333333" BorderStyle="Solid" BorderWidth="1px" 
                ValidationGroup="2" Width="493px"></asp:TextBox>--%>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
            <%--<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Register" ValidationGroup="2" BackColor="Silver" BorderStyle="Solid" 
                BorderWidth="1px" />--%>
            &nbsp;
            <%--<asp:Button ID="txtcancel1" runat="server" Text="Cancel" BorderColor="Gray" BorderStyle="Solid"
                BorderWidth="1px" OnClick="txtcancel1_Click" Height="24px" 
                ValidationGroup="1" BackColor="#CCCCCC" />--%>
           
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            
                            </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

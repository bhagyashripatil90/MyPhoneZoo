<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegister.aspx.cs" Inherits="frmRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <%-- <link href="Style/Home.css" rel="Stylesheet" type="text/css" />--%>
    <link href="Style/Register.css" rel="stylesheet" type="text/css" />
    <%-- <link href="Style/termsofuse.css" rel="stylesheet" type="text/css" />--%>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Main">
        <div id="header">
            <a href="Home2.aspx">
                <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png"></asp:Image></a>
            <h2>
                You Trusted Source For Everthing Mobile</h2>
        </div>
        <div id="Main-Content">
            <asp:Label ID="Label1" runat="server" BackColor="#FFCC66" Font-Bold="True" Height="21px"
                Text="Create  Your  Phonezoo  Profile" Width="57%"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" 
                Text="Fileld Marked With asterisk * are required" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="User Name :"></asp:Label>
            <asp:Label ID="Label24" runat="server" Text="*"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="0"></asp:TextBox>
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="#CC0000" 
                ValidationGroup="0"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label22" runat="server" Font-Italic="True" Text="This will be the name other users know you by"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
            <asp:Label ID="Label25" runat="server" Text="*"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" TextMode="Password" ValidationGroup="0"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="0"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label23" runat="server" Font-Italic="True" Text="Password must be at least six characters long"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirm Password :"></asp:Label>
            <asp:Label ID="Label26" runat="server" Text="*"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPassword" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" TextMode="Password" ValidationGroup="0"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="0"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" ErrorMessage="Password and confirm password must be same"
                ForeColor="#CC0000"></asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Email Address :"></asp:Label>
            <asp:Label ID="Label27" runat="server" Text="*"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmailId" runat="server" BorderColor="#333333" BorderStyle="Solid"
                BorderWidth="1px" ValidationGroup="0"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmailId"
                ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="0"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmailId" ErrorMessage="example@gmail.com" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="0"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Terms Of Service :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label17" runat="server" Text="Please review the Phonezoo"></asp:Label><a
                href="termsofuse.aspx">&nbsp Terms of Use</a> and <a href="privacypolicy.aspx">Privacy Policy,</a>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label28" runat="server" Text="then indicate your agreement below"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="chk" runat="server" />
            &nbsp;<asp:Label ID="Label29" runat="server" Text="* Check This box to indicate your agrrement to be"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label30" runat="server" Text="PhoneZoo Terms of Use and Privacy Policy."></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" BorderStyle="Solid" Text="Register" BorderColor="Gray"
                BorderWidth="1px" OnClick="btnRegister_Click" ValidationGroup="0" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" BorderColor="Gray" BorderStyle="Solid"
                BorderWidth="1px" OnClick="btnCancel_Click" ValidationGroup="1" />
            <br />
            <br />
           

            </div>
            </div>
    </form>
      
        <div id="footer-termofuse">
            <div id="Copyright-termofuse">
                Copyright(c)2015 Phonezoo.com</div>
            <ul>
                <!--<li><a href="#">Info@phonezoo.com</a></li>-->
                <li><a href="termsofuse.aspx">Termsofuse</a></li>
                <li><a href="privacypolicy.aspx">PrivacyPolicy</a></li>
            </ul>
        </div>
    
</body>
</html>

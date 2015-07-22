<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyRating.aspx.cs" Inherits="MyRating" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>AJAX Rating control</title>
    <style type="text/css">
body
{
margin:0px auto;
width:980px;
font-family:"Trebuchet MS", Arial, Helvetica, sans-serif; 
background:#C9C9C9;
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>   
   
    <asp:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar"
        WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" 
        EmptyStarCssClass="blankstar" OnChanged="Rating1_Changed">
    </asp:Rating>
    <br />
 <br />

<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>->
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
    </form>
</body>
</html>
 


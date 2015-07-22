<%@ Page Language="C#" AutoEventWireup="true" CodeFile="audio_demo.aspx.cs" Inherits="audio_demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <object type="application/x-shockwave-flash" data="dewplayer-vol.swf?Mp3=Mp3/Kalimba.mp3"
        width="240" height="20" id="dewplayer">
        <param name="wmode" value="transparent" />
        <param name="movie" value="dewplayer-vol.swf?Mp3=Mp3/Kalimba.mp3" />
    </object>
    </form>
</body>
</html>

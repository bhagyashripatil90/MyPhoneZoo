<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Demo : jPlayer circle player</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../../lib/circle-player/skin/circle.player.css">
<script type="text/javascript" src="../../lib/jquery.min.js"></script>
<script type="text/javascript" src="../../dist/jplayer/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="../../lib/circle-player/js/jquery.transform2d.js"></script>
<script type="text/javascript" src="../../lib/circle-player/js/jquery.grab.js"></script>
<script type="text/javascript" src="../../lib/circle-player/js/mod.csstransforms.min.js"></script>
<script type="text/javascript" src="../../lib/circle-player/js/circle.player.js"></script>

    <script type="text/javascript">
//<![CDATA[

        $(document).ready(function ()
        {
//            alert("SS");
            $("#ImgPLay").click(function ()
            {
           
                /*
                 * Instance CirclePlayer inside jQuery doc ready
                 *
                 * CirclePlayer(jPlayerSelector, media, options)
                 *   jPlayerSelector: String - The css selector of the jPlayer div.
                 *   media: Object - The media object used in jPlayer("setMedia",media).
                 *   options: Object - The jPlayer options.
                 *
                 * Multiple instances must set the cssSelectorAncestor in the jPlayer options. Defaults to "#cp_container_1" in CirclePlayer.
                 *
                 * The CirclePlayer uses the default supplied:"m4a, oga" if not given, which is different from the jPlayer default of supplied:"mp3"
                 * Note that the {wmode:"window"} option is set to ensure playback in Firefox 3.6 with the Flash solution.
                 * However, the OGA format would be used in this case with the HTML solution.
                 */
                alert($("#TxtURL").val());
                var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
                {                   
                    m4a: $("#TxtURL").val(),
                    oga: $("#TxtURL1").val()
                },                     
                {                       
                    cssSelectorAncestor: "#cp_container_1",
                    swfPath: "../../dist/jplayer",
                    wmode: "window",
                    keyEnabled: true
                });
            });
        });
//]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="jquery_jplayer_1" class="cp-jplayer"></div>
			<!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
			<div id="cp_container_1" class="cp-container">
				<%--<div class="cp-buffer-holder"> <!-- .cp-gt50 only needed when buffer is > than 50% -->
					<div class="cp-buffer-1"></div>
					<div class="cp-buffer-2"></div>
				</div>--%>
				<%--<div class="cp-progress-holder"> <!-- .cp-gt50 only needed when progress is > than 50% -->
					<div class="cp-progress-1"></div>
					<div class="cp-progress-2"></div>
				</div>--%>
				<div class="cp-circle-control"></div>
				<ul class="cp-controls">
					<%--<li><a class="cp-play" tabindex="1">play</a></li>--%>
                    <li>
                       <a class="cp-play" href="#" id="ImgPLay"  tabindex="1"></a>
                        <input type="text" id="TxtURL" value="http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a" />
                        <input type="text" id="TxtURL1" value="http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg" />
                        <%--<asp:TextBox ID="TxtURL" runat="server" Visible="true" Text="http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a"></asp:TextBox>
                         <asp:TextBox ID="TxtURL1" runat="server" Visible="true" Text="http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"></asp:TextBox>--%>
                        <%--<input type="button"  class="cp-play"  />--%>
                       <%-- <asp:ImageButton ID="ImgPLay" runat="server" CssClass="cp-play" height="40px" Width="45px" />--%>
                    </li>
					<li><a class="cp-pause" style="display:none;" tabindex="1">pause</a></li> <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
				</ul>
			</div>
    </form>
</body>
</html>

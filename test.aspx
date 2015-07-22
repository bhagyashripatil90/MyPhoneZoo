<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="Style/circle.player.css" />
<script type="text/javascript" src="Script/jquery.min.js"></script>
<script type="text/javascript" src="Script/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="Script/jquery.transform2d.js"></script>
<script type="text/javascript" src="Script/jquery.grab.js"></script>
<script type="text/javascript" src="Script/mod.csstransforms.min.js"></script>
<script type="text/javascript" src="Script/circle.player.js"></script>
<script type="text/javascript">
//<![CDATA[

    $(document).ready(function () {
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



        var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
	{
	    m4a: "http://localhost:52562/MyPhoneZoo-master_prod23-06-15/Swf/soundmanager2.swf",
	    oga: "http://localhost:52562/MyPhoneZoo-master_prod23-06-15/Swf/soundmanager2.swf"
	    //       m4a:"/media/testsong.m4a",
	    //       oga: "/media/testsong.ogg",
	}, {
	    cssSelectorAncestor: "#cp_container_1",
	    swfPath: "/jplayer",

	    wmode: "window",
	    keyEnabled: true
	});
    });
//]]>
</script>
    <script type="text/jscript">
        $(document).ready(function () {
            var playing = false;

            $('#button').click(function () {
                $(this).toggleClass("down");

                if (playing == false) {
                    document.getElementById('player').play();
                    playing = true;
                    $(this).text("stop sound");

                } else {
                    document.getElementById('player').pause();
                    playing = false;
                    $(this).text("start sound");
                }


            });
        });

      
</script>
<style type="text/css">
  .cls {
    background: #ccc;
    cursor: pointer;
    border-top: solid 2px #eaeaea;
    border-left: solid 2px #eaeaea;
    border-bottom: solid 2px #777;
    border-right: solid 2px #777;
    padding: 5px 5px;           
    }

.cls.down {
    background: #d83d3d;
    border-top: solid 2px #777;
    border-left: solid 2px #777;
    border-bottom:solid 2px  #eaeaea;
    border-right: solid 2px #eaeaea;
    }
    
   
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div id="jquery_jplayer_1" class="cp-jplayer"></div>
			<!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
			<div id="cp_container_1" class="cp-container">
				<div class="cp-buffer-holder"> <!-- .cp-gt50 only needed when buffer is > than 50% -->
					<div class="cp-buffer-1"></div>
					<div class="cp-buffer-2"></div>
				</div>
				<div class="cp-progress-holder"> <!-- .cp-gt50 only needed when progress is > than 50% -->
					<div class="cp-progress-1"></div>
					<div class="cp-progress-2"></div>
				</div>
				<div class="cp-circle-control"></div>
				<ul class="cp-controls">
					<li><a class="cp-play"  tabindex="1">play </a></li>
					<li><a class=cp-pause" style="display:none;" tabindex="1">pause</a></li> <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
				</ul>
			</div>

    <asp:Button ID="Button1" runat="server" Text="Play" onclick="Button1_Click1" />
        <br /><br />
        <asp:Button ID="Button2" runat="server" Text="Stop" onclick="Button2_Click1" />


   <audio id="player" src="/media/testsong.mp3" ></audio>
        
        <asp:Button ID="button" CssClass="cls" runat ="server"  Text="Play Sound"   />
        <%--<a id="button" title="button">play sound</a>--%>
    </div>
  
    </form>

</body>
</html>

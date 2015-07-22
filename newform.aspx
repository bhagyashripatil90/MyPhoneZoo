<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newform.aspx.cs" Inherits="newform" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="Style/circle.player.css" />
    <script type="text/javascript" src="Script/jquery.min.js"></script>
    <script type="text/javascript" src="Script/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="Script/jquery.transform2d.js"></script>
    <script type="text/javascript" src="Script/jquery.grab.js"></script>
    <script type="text/javascript" src="Script/mod.csstransforms.min.js"></script>
    <script type="text/javascript" src="Script/circle.player.js"></script>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Style/Home2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
      function Test() {
          var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
	        {
	            m4a: "http://localhost:52562/MyPhoneZoo-master_prod23-06-15/testsong.mp3",
	            oga: "http://localhost:52562/MyPhoneZoo-master_prod23-06-15/testsong.mp3"  
           
	        }, {
	    cssSelectorAncestor: "#cp_container_1",
	    swfPath: "/jplayer",

	    wmode: "window",
	    keyEnabled: true
        }


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

          
	    cssSelectorAncestor: "#cp_container_1",
	    swfPath: "/jplayer",
        	    wmode: "window",
	    keyEnabled: true
	});
        });
    </script>
</head>

<body>
<div id="jquery_jplayer_1" class="cp-jplayer">
                                                </div>
                                                <!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
                                                <div id="cp_container_1" class="cp-container">
                                                    <div class="cp-buffer-holder">
                                                        <!-- .cp-gt50 only needed when buffer is > than 50% -->
                                                        <div class="cp-buffer-1">
                                                        </div>
                                                        <div class="cp-buffer-2">
                                                        </div>
                                                    </div>
                                                    <div class="cp-progress-holder">
                                                        <!-- .cp-gt50 only needed when progress is > than 50% -->
                                                        <div class="cp-progress-1">
                                                        </div>
                                                        <div class="cp-progress-2">
                                                        </div>
                                                    </div>
                                                    <div class="cp-circle-control">
                                                    </div>
                                                    <ul class="cp-controls">
                                                        <li><a class="cp-play" tabindex="1" >play </a></li>
                                                        <li><a class="cp-pause" style="display: none;" tabindex="1">pause</a></li>
                                                        <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
                                                    </ul>
                                                </div>
</body>
</html>


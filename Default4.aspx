<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style >
    a {
    background: #ccc;
    cursor: pointer;
    border-top: solid 2px #eaeaea;
    border-left: solid 2px #eaeaea;
    border-bottom: solid 2px #777;
    border-right: solid 2px #777;
    padding: 5px 5px;           
    }

a.down {
    background: #bbb;
    border-top: solid 2px #777;
    border-left: solid 2px #777;
    border-bottom:solid 2px  #eaeaea;
    border-right: solid 2px #eaeaea;
    }
    </style>
</head>
<body>
<script type="text/javascript">
    function DHTMLSound(url) {
        document.getElementById('player').play();
        document.getElementById("dummyspan").innerHTML = "<embed src='" + url + "' hidden=true autostart=true loop=true>";
    }



    var playing = false;

    function test(c) {
       
        if (playing == false) {
            
            document.getElementById('player').play();
            playing = true;
            //$(c).text("stop sound");
            var Btn = document.getElementById('Btn');
            Btn.style.visibility = true;
            

        } else {
            document.getElementById('player').pause();
            playing = false;
            $(c).text("restart sound");
        }

    }
        $(document).ready(function () {
            

            $('#b').click(function ()
             {
                alert("in b click");
                $(this).toggleClass("down");

                if (playing == false) {
                    document.getElementById('player').play();
                    playing = true;
                    $(this).text("stop sound");

                } else {
                    document.getElementById('player').pause();
                    playing = false;
                    $(this).text("restart sound");
                }


            });
        });
    
    </script>
    <form id="form1" runat="server">
   <audio id="player" src="http://audio.micronemez.com:8000/micronemez-radio.ogg"> </audio>

<a id="button" title="button">play sound</a>
<asp:Button ID="b" runat=server Text="Click here" OnClientClick="test(this);" />
<asp:Button ID="Btn" Visible="false" runat=server Text="Click Me"  />

<asp:button id="button1" runat=server Text="a" onclick="button1_Click" />
    </form>
</body>
</html>

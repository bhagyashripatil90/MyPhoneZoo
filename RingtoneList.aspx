<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RingtoneList.aspx.cs" Inherits="RingtoneList" %>

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
        //        function getName(URL) {
        //           
        //        var x = 0;
        //        var table
        //        table = document.getElementById('<%=GridViewL.ClientID%>');
        //        var cnt = table.rows.length;
        ////        alert(URL);
        ////        alert(cnt);
        ////        for (var i = 1; i <= table.rows.length; i++)
        ////         {
        ////         alert("in fun");
        //             var row = table.rows[parseInt(URL)+1];
        ////             alert(row);
        //             var txtName = row.cells[0].children[0];
        ////             alert(txtName.innerHTML)
        //            var DivID = row.cells[0].children[1];
        //            var JPlayerDivID = row.cells[0].children[2];
        ////            alert(JPlayerDivID.innerHTML);
        ////            alert(DivID.innerHTML);
        ////            alert(txtName.innerHTML);
        ////             var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1_" + i,
        //            var myCirclePlayer = new CirclePlayer("#" + JPlayerDivID.innerHTML,
        //               {                  
        //                   m4a: txtName.innerHTML,
        //                   oga: txtName.innerHTML
        //               },
        //               {
        //                   cssSelectorAncestor: "#" + DivID.innerHTML,                  
        //                   swfPath: "/jplayer",
        //                   wmode: "window",
        //                   keyEnabled: true

        //               }); 
        //               
        //               //Playfile(URL);          
        ////        }
        //        }

        /*  var table
        table = document.getElementById('<%=GridViewL.ClientID%>');           
        // tbody = table.tBodies[0];
        var row = table.rows[parseInt($(HdnFld).val())+1]; 
        var txtName = row.cells[0].children[0]; 
        var DivID=row.cells[0].children[2];
        var JPlayerDivID = row.cells[0].children[2];
        //var DivJPlayerID=row.cells[0].children[3];
        //           alert(DivID.innerHTML);
        alert(txtName.innerHTML);
        var myCirclePlayer = new CirclePlayer("#" + JPlayerDivID.innerHTML,
        {
        m4a: txtName.innerHTML,
        oga: txtName.innerHTML                
        },

        {
        cssSelectorAncestor: "#" + DivID.innerHTML,                  
        swfPath: "/jplayer",
        wmode: "window",
        keyEnabled: true,                   
        }); */
        //  }fun

        $(document).ready(function () {
            var x = 0;
            var table
            table = document.getElementById('<%=GridViewL.ClientID%>');
            var cnt = table.rows.length;
            for (var i = 1; i <= table.rows.length; i++) {
                var row = table.rows[i];
                var txtName = row.cells[0].children[0];
                var DivID = row.cells[0].children[1];
                var JPlayerDivID = row.cells[0].children[2];

                // var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1_" + i,
                var myCirclePlayer = new CirclePlayer("#" + JPlayerDivID.innerHTML,
               {
                   m4a: txtName.innerHTML,
                   oga: txtName.innerHTML
               },
               {
                   cssSelectorAncestor: "#" + DivID.innerHTML,
                   //cssSelectorAncestor: "#cp_container_1_" + i ,
                   swfPath: "/jplayer",
                   wmode: "window",

                   keyEnabled: true

               }); //circle

            } //for
        });         //doc 

        //       
                    
    </script>
</head>
<body style="background-color: #FBB13C">
    <form id="form1" runat="server">
    <asp:HiddenField ID="HdnFld" runat="server" />
    <table style="width: 100%; height: 10px;">
        <tr>
            <td>
                <div id="header2">
                    <a href="http://localhost:52734/WORKING-MyPhoneZoo-master_prod/Home2.aspx">
                        <asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png" Height="141px"
                            Width="421px"></asp:Image>
                    </a>
                </div>
            </td>
            <td valign="middle">
               
                            <div id="header2" style="vertical-align: middle">
                                <table>
                                    <tr>
                                        <td align="right" style="background-color: Black">
                                            <asp:Label ID="lblUserName" ForeColor="Yellow" Font-Size="Smaller" runat="server"
                                                Text="Label"></asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:LinkButton ID="LnkLogout" Style="color: White" runat="server" Text="Logout"
                                                OnClick="LnkLogout_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                    <td>
                                     <h2 style="width: 489px">
                                         &nbsp;</h2>
                                        <h2 style="width: 489px">
                                    &nbsp;&nbsp; Your trusted source for everthing mobile
                                </h2>
                                    </td>
                                    </tr>
                                </table>
                               
                            </div>
                       
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <table border="1" style="width: 500px">
                                <tr>
                                    <th colspan="2">
                                        Popular Ringtones
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        Play
                                    </td>
                                    <td>
                                        Title (click to download)
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=66">Baby laughing &nbsp &nbsp</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=10">Your momma calling back &nbsp &nbsp</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=66">CTU-24 classic &nbsp &nbsp</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=15">Kkrazy frog moped &nbsp &nbsp</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=38">police usa &nbsp &nbsp</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <object type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="25"
                                            height="20">
                                            <param name="movie" value="player_mp3_maxi.swf" />
                                            <param name="FlashVars" value="mp3=File.ashx?Id=<%# Eval("Id") %>&amp;showslider=0&amp;width=25" />
                                        </object>
                                    </td>
                                    <td>
                                        <a href="DownloadRingtone.aspx?Id=290">cuppycake song (Cutest everr!!) &nbsp &nbsp</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="left" valign="top">
                            <div class="imgSmrtPhn">
                                &nbsp;&nbsp;<a href="UploadRingtone.aspx">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/upload.png" Height="118px"
                                        Width="207px" BorderColor="Black" BorderWidth="2px"></asp:Image>
                                    <h3>
                                        Upload and share Ringtones for FREE</h3>
                                </a>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Search Ringtone:- &nbsp;<asp:TextBox ID="txtringtonesearch" runat="server" Height="29px"
                    Width="239px" AutoPostBack="true" OnTextChanged="txtringtonesearch_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridViewL" runat="server" AutoGenerateColumns="False" Height="50px"
                    Width="550px" BackColor="White" AllowPaging="True" CellPadding="3" PageSize="5"
                    CellSpacing="5" OnRowCommand="GridViewL_RowCommand" OnPageIndexChanging="GridViewL_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label Style="display: none;" ID="L" runat="server" Text='<%# Eval("URL") %>'></asp:Label>
                                <asp:Label Style="display: none;" ID="Label2" runat="server" Text='<%# Eval("DivID") %>'></asp:Label>
                                <asp:Label Style="display: none;" ID="Label1" runat="server" Text='<%# Eval("JPlayerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div id="jquery_jplayer_1_<%# Container.DataItemIndex %>" class="cp-jplayer">
                                </div>
                                </div>
                                <!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
                                <div id="cp_container_1_<%# Container.DataItemIndex %>" class="cp-container">
                                    <div class="cp-buffer-holder">
                                        <!-- .cp-gt50 only needed when buffer is > than 50% -->
                                        <div class="cp-buffer-1">
                                        </div>
                                        <div class="cp-buffer-2">
                                        </div>
                                    </div>
                                    <div class="cp-progress-holder" style="height: 20px; width: 20px">
                                        <!-- .cp-gt50 only needed when progress is > than 50% -->
                                        <div class="cp-progress-1" style="height: 20px; width: 20px">
                                        </div>
                                        <div class="cp-progress-2" style="height: 20px; width: 20px">
                                        </div>
                                    </div>
                                    <div class="cp-circle-control">
                                    </div>
                                    <ul class="cp-controls">
                                        <li>
                                            <asp:LinkButton ID="ImgPLay" runat="server" CommandName="Play" CommandArgument='<%# Eval("Id") %>'
                                                OnClick="ImgPLay_Click" CssClass="cp-play"></asp:LinkButton>
                                            <asp:LinkButton ID="LnkHdn" runat="server" OnClick="LnkHdn_Click" Text='<%# Eval("Id") %>'
                                                Visible="false"></asp:LinkButton>
                                        </li>
                                        <li><a class="cp-pause" style="display: none;" tabindex="1">'<%# Container.DataItemIndex %>'</a></li>
                                        <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
                                        <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
                                    </ul>
                                </div>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#FFCC66" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title (Click to download)">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LblID" runat="server" Visible="false" Text='<%#Eval("Id") %>'>
                                            </asp:Label>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonL" runat="server" Text='<%#Eval("Name") %>'></asp:LinkButton>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#FFCC66" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="CreatedBy" HeaderText="Created By" Visible="False">
                            <HeaderStyle BackColor="#FFCC66" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Id" HeaderText="Id" Visible="False">
                            <HeaderStyle BackColor="#FFCC66" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <ins class="adsbygoogle" style="display: inline-block; width: 856px; height: 90px"
                    data-ad-client="ca-pub-9331817746326065" data-ad-slot="9867607633"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                © 2015 Phonezoo.com
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <ul>
                    <li><a href="termsofuse.aspx">Terms of use &nbsp; </a></li>
                    <li><a href="privacypolicy.aspx">Privacy Policy &nbsp; &nbsp;</a></li>
                    <li><a href="Phonezoo-FAQ.aspx">FAQ</a> </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

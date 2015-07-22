<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8" />
    <title>Demo : jPlayer circle player</title>
   
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <link rel="stylesheet" href="Style/circle.player.css" />
    <script type="text/javascript" src="Script/jquery.min.js"></script>
    <script type="text/javascript" src="Script/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="Script/jquery.transform2d.js"></script>
    <script type="text/javascript" src="Script/jquery.grab.js"></script>
    <script type="text/javascript" src="Script/mod.csstransforms.min.js"></script>
    <script type="text/javascript" src="Script/circle.player.js"></script>

    <script type="text/javascript">

        function getName(url)
        {      
            var table
            table = document.getElementById('<%=GridViewL.ClientID%>');           
           // tbody = table.tBodies[0];
            var row = table.rows[parseInt($(HdnFld).val())+1]; 
            var txtName = row.cells[0].children[0]; 
           var DivID=row.cells[0].children[2];
          
           //var DivJPlayerID=row.cells[0].children[3];
//           alert(DivID.innerHTML);
//            alert(txtName.innerHTML);
             var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
               {
                  m4a: txtName.innerHTML,
                  oga: txtName.innerHTML                
               },

               {
                   cssSelectorAncestor: "#" + DivID.innerHTML,                  
                   swfPath: "/jplayer",
                   wmode: "window",
                    keyEnabled: true,                   
               },DivID.innerHTML);             
               
            
        }
           
    

        $(document).ready(function () {

//            var x = 0;
//         var table
//            table = document.getElementById('<%=GridViewL.ClientID%>');   
//            
//            var cnt=table.rows.length;
//          
//          
// for (var i = 1; i <=table.rows.length ; i++)
// {
//             var row = table.rows[i]; 
//            var txtName = row.cells[0].children[0]; 
//           var DivID=row.cells[0].children[2];
//               alert(txtName.innerHTML) ;
//              alert(DivID.innerHTML);
//             var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
//               {           
//                 m4a: txtName.innerHTML,
//                 oga: txtName.innerHTML                
//               },
//               {
//                  cssSelectorAncestor: "#" + DivID.innerHTML,                  
//                  swfPath: "/jplayer",
//                  wmode: "window",                
//                  keyEnabled: true                   
//               }); 
//  }
//                    
      

  //  alert($(HdnFld).val())
//            var table
//            table = document.getElementById('<%=GridViewL.ClientID%>');           
//           // tbody = table.tBodies[0];
//            var row = table.rows[parseInt($(HdnFld).val())+1]; 
//            var txtName = row.cells[0].children[0]; 
//           var DivID=row.cells[0].children[2];
//          
//           //var DivJPlayerID=row.cells[0].children[3];
////           alert(DivID.innerHTML);
////            alert(txtName.innerHTML);
//             var myCirclePlayer = new CirclePlayer("#jquery_jplayer_1",
//               {
//                  m4a: txtName.innerHTML,
//                  oga: txtName.innerHTML                
//               },
//               {
//                   cssSelectorAncestor: "#" + DivID.innerHTML,                  
//                   swfPath: "/jplayer",
//                   wmode: "window",
//                    keyEnabled: true,
//                   
//               });      
          

            $("#ImgPLay").click(function () {            
            
                <%--  $('#<%=(this.Gdv.ClientID)%> Linkbutton').click(function () {
               
                var p = $('#<%=(this.Gdv.ClientID)%> a');
              
                $(HdnFld).prop('value', p.text());
                
                alert($(HdnFld).val());
               
                $.ajax({
                    type: "POST",
                    url: "Default2.aspx/GetData",
                    data: '{param: "' + x + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "text",
                    success: function (response) {
                        var names = response.d;
                        alert(names);
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });--%>

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
                 * However, the OGA format would be used in this case with the HTML solution.              */

              
                //});
            });
        });
        //]]>
</script>
</head>
<body>

    <form id="form1" runat="server">
    <asp:ScriptManager ID="Scr" runat="server"></asp:ScriptManager>
        <div> 
        </div>  
  
        <asp:HiddenField ID="HdnFld" runat="server" />
      <%--<asp:UpdatePanel ID="UpPnl" runat=server>     
      <ContentTemplate>--%>
      <asp:GridView ID="GridViewL" runat="server" AutoGenerateColumns="false" OnRowCommand ="GridViewL_RowCommand" >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:Label style="display:none;" ID="L" runat="server" Text='<%# Eval("URL") %>'></asp:Label>
                    <asp:Label ID="L1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                     <asp:Label style="display:none;" ID="Label2" runat="server" Text='<%# Eval("DivID") %>'></asp:Label>                      
                     <%--<asp:Label style="display:none;" ID="Label1" runat="server" Text='<%# Eval("DivJplayerID") %>'></asp:Label>--%>                       
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>                        
                        <div id="jquery_jplayer_1" class="cp-jplayer"></div>
                        <!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
                        <div id="cp_container_1_<%# Container.DataItemIndex %>" class="cp-container">
                            <div class="cp-buffer-holder">                               
                                <div class="cp-buffer-1"></div>
                                <div class="cp-buffer-2"></div>
                            </div>
                            <div class="cp-progress-holder">                                
                                <div class="cp-progress-1"></div>
                                <div class="cp-progress-2"></div>
                            </div>
                            <div class="cp-circle-control"></div>
                            <ul class="cp-controls">                              
                                <li>                                 
                                    <asp:LinkButton ID="ImgPLay"  runat="server" CommandName="Play" CommandArgument='<%# Eval("Id") %>' OnClick ="ImgPLay_Click" EnableTheming="false" CssClass="cp-play" ></asp:LinkButton>
                                  </li>
                                <li><a class="cp-pause" style="display: none;" tabindex="1"></a></li>
                                <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
                            </ul>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <%--</ContentTemplate>
      </asp:UpdatePanel>--%>
        
       </form>
    </body>
</html>

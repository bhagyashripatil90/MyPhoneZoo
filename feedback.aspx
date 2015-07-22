
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajxtoolkit" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Style/Home2.css" rel="stylesheet" type="text/css" />




    <style type="text/css">
        body
        {
            margin: 0px auto;
            width: 1048px;
            font-family: "Trebuchet MS" , Arial, Helvetica, sans-serif;
            background: #C9C9C9;
            height: 931px;
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
    <div id="Main">
        <div id="header">
           <a href="Home2.aspx"><asp:Image ID="imgLogo" runat="server" ImageUrl="Images/phonezoo-logo.png"> </asp:Image></a>
            </asp:Image></a> 
             <h2>
                        &nbsp&nbsp&nbsp&nbsp  Your trusted source for everthing mobile&nbsp; </h2>
        
        </div>

        
        <div id="Main-Content">
            
            
           
         <div id="imgBvertical">
            
            
             <script>
                   (function (i, s, o, g, r, a, m) {
                       i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                           (i[r].q = i[r].q || []).push(arguments)
                       }, i[r].l = 1 * new Date(); a = s.createElement(o),
                       m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                   })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                   ga('create', 'UA-62286438-1', 'auto');
                   ga('send', 'pageview');

            </script>
            </div>
             <div id="VerticalAdUnitRight">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
             <ins class="adsbygoogle"
             style="display:inline-block;width:160px;height:600px"
             data-ad-client="ca-pub-9331817746326065"
             data-ad-slot="4405412837"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
               </script> 
            </div>
         
          
        <h2>Send e-mail to Phonezoo</h2>

        <form action="MAILTO:support@phonezoo.com" method="post" enctype="text/plain">
        Name:<br>
        <input type="text" name="name" value="your name"><br>
        E-mail:<br>
        <input type="text" name="mail" value="your email"><br>
        Comment:<br>
        <input type="text" name="comment" value="your comment" size="50"><br><br>
        <input type="submit" value="Send">
        <input type="reset" value="Reset">
        </form>


                   <div id="imgHrzntl">
             <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle"
                  style="display:inline-block;width:856px; height:90px"
                 data-ad-client="ca-pub-9331817746326065"
                 data-ad-slot="9867607633"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script> 
            </div> 

        
        </div> <!-- END MAIN CONTENT -->

       <div id="footer">
            <div id="Copyright">
               &copy 2015 Phonezoo.com &nbsp 
            </div>
            <ul>
               
                <li><a href="termsofuse.aspx">Terms of use &nbsp </a></li>
                <li><a href="privacypolicy.aspx">Privacy Policy &nbsp &nbsp</a></li>
                 <li><a href="mailto:support@phonezoo.com?subject=Phonezoo%20Feedback">Send us feedback</a> </li>
                
            </ul>
        </div> <!-- END FOOTER -->
   
  </div>
  </form>
</body>
</html>

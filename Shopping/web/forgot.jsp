<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
    <title> Shopping </title>
    <meta charset="utf-8">
    <%--ucluk--%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <%--<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">--%>
    <%--<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
    <%--<script src="bootstrap/js/fonts/jquery/jquery.min.js" type="text/javascript"></script>--%>
    <%--ucluk--%>

    <link href="css/style.css" rel="stylesheet" type="text/css">
    <!--[if IE 6]>
    <link href="css/ie6.css" rel="stylesheet" type="text/css">
    <![endif]-->
    <!--[if IE 7]>
    <link href="css/ie7.css" rel="stylesheet" type="text/css">
    <![endif]-->
    <%--main.css--%>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <%--main.css--%>
    <%--js area--%>
    <%--<script type="text/javascript" src="js/jquery/jquery-1.10.2.js"></script>--%>
    <script type="text/javascript" src="js/jquery/jquery-ui.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/usScrpt.js"></script>
    <%--end js area--%>


</head>
<body>
<script type="text/javascript">
    $(function () {
        history.pushState(null,null,'fogot.jsp');
        window.addEventListener('popstate',function(event) {
            history.pushState(null,null,'fogot.jsp');
        });
      call();
    });
</script>
<div id="background">
    <div id="page">
        <div id="body">
            <div id="sidebar"> <a id="logo" href="index.jsp">&nbsp;</a>
                <ul>
                    <li>
                        <a href="index.jsp">Medicinal Trees</a>
                    </li>
                    <li>
                        <a href="index.jsp">Ornamental <span>Trees</span></a>
                    </li>
                    <li>
                        <a href="index.jsp">Fruit Bearing <span>Trees</span></a>
                    </li>
                </ul>
            </div>
            <div id="content">
                <div id="header">
                    <ul class="navigation">
                        <li class="first">
                            <a href="index.jsp">Home</a>
                        </li>

                        <li>
                            <a href="library.jsp">Library</a>
                        </li>
                        <li>
                            <a href="news.jsp">News</a>
                        </li>
                        <li>
                            <a href="blog.jsp">Blog</a>
                        </li>

                        <li>
                            <a href="about.jsp">About us</a>
                        </li>
                        <li>
                            <a  href="contact.jsp">Contact Us</a>
                        </li>

                        <li>
                            <a class="active"  href="login.jsp">Login</a>
                        </li>
                        <li>
                            <a  href="logout.jsp">Log out</a>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    <div class="content">
                        <h2>We want to hear from you</h2>
                        <p>
                            This website template has been designed by <a href="http://www.freewebsitetemplates.com/">freewebsitetemplates</a> for you, for free. You can replace all this text with your own text.
                        </p>
                        <form action="ust?action=fogotPass"  id="fogotPassForm" method="post">
                            <label id="fogoLabel" for="forgotEmailTextId" style="padding:9px 5px;">
                                <span style="display: inline-block;" class="emailLoginDesign">Entered your E-mail  : </span>
                                <input type="email" id="forgotEmailTextId" autocomplete="on">
                                <h3 id="showErr30" style="display: none ; color: red;margin-left: 120px;margin-bottom: 20px"></h3>
                                <h3 id="showErr31" style="display: none ; color: dodgerblue;margin-left: 120px;margin-bottom: 20px"></h3>
                                <span id="showErr27" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                            </label>
                            <div style="padding-bottom: 24px;padding-left: 77px;"><input type="submit" value="Send" > </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <div class="section">
                <h2>Tree Gallery }</h2>
                <ul>
                    <li class="first">
                        <a href="index.jsp"><img src="images/tree1.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree2.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree3.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree4.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree5.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree6.jpg" width="90" height="90" alt=""></a>
                    </li>
                    <li>
                        <h1>Healing Trees</h1>
                        <p>
                            This website template has been designed by freewebsitetemplates for you, for free. You can replace all this text with your own text.
                        </p>
                    </li>
                    <li>
                        <h1>Preserve them</h1>
                        <p>
                            This website template has been designed by freewebsitetemplates for you, for free. You can replace all this text with your own text.
                        </p>
                    </li>
                </ul>
            </div>
            <div class="footnote"> <span>&copy; 2011 <a href="index.jsp">Magic Tree</a> . All rights Reserved.</span> </div>
        </div>
    </div>
</div>
</body>
</html>



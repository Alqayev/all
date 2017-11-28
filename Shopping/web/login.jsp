<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
    <title> Shopping </title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--ucluk--%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <%--<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">--%>
    <%--<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
    <%--<script src="bootstrap/js/fonts/jquery/jquery.min.js" type="text/javascript"></script>--%>

    <%--ucluk--%>

    <%--<link rel="stylesheet" href="bootstrap/css/main.css">--%>
    <%--<link rel="stylesheet" href="bootstrap/css/dataTables.bootstrap.min.css">--%>

    <%--<script type="text/javascript" src="bootstrap/js/fonts/adminMain.js"></script>--%>
    <%--<script type="text/javascript" src="bootstrap/js/fonts/always.js"></script>--%>

    <%--<link rel="stylesheet" href="bootstrap/css/jquery-ui.css" type="text/css">--%>

    <%--<script src="bootstrap/js/fonts/scrpt.js"></script>--%>

    <%--<script src="bootstrap/js/fonts/jquery/jquery.dataTables.min.js"></script>--%>
    <%--<script src="bootstrap/js/fonts/jquery/dataTables.bootstrap.min.js"></script>--%>




    <meta charset="utf-8">
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
        history.pushState(null,null,'login.jsp');
        window.addEventListener('popstate',function(event) {
            history.pushState(null,null,'login.jsp');
        });
        call();
        $('#JoinBonuceProgramId').click(function () {
            $('#bonuceRegistrDiv').show();
            $('#registrDiv').hide();
        });

        $.ajax({
            url:'sdd?action=tt',
            type:'POST',
            dataType:'html',
            success:function () {
                alert('get')
            }
        });
    });
</script>
<div id="background">
    <div id="page">
        <div id="body">
            <div id="sidebar"> <a id="logo" href="index.jsp">&nbsp;</a>
                <ul>
                    <li>
                        <p style="height: 102px" id="JoinBonuceProgramId" ><strong>Join bonuce program</strong> </p>
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
                        <h2 style="margin-top: 16%;">We want to hear from you</h2>
                        <p>
                            This website template has been designed by <a href="http://www.freewebsitetemplates.com/">freewebsitetemplates</a> for you, for free. You can replace all this text with your own text.
                        </p>
                        <div id="loginDivId" >
                            <%----%>
                        <form action="lg?action=checkLogin" method="post" id="checkedLoginForm">
                            <label id="tam" for="loginTextId" style="padding:9px 5px;">
                                <span style="display: inline-block;" class="emailLoginDesign">E-mail  : </span>
                                <input type="email" id="loginTextId" autocomplete="on" name="checkEmailLoggin">
                            </label>
                            <label  for="loginpaswordId" style="padding:9px 5px;">
                                <span style="display: inline-block ;" class="emailLoginDesign"> Password  : </span>
                                <input type="password" id="loginpaswordId" name="checkPassLogin"> </br> </br>
                                <span id="showErr33" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                                <label> <a href="forgot.jsp" style="padding-left: 213px;" id="bir" > Forgot your password ? </a></label>
                            </label>
                            <h3 id="showErr15" style="display: none; color: red;margin-left: 88px;"></h3>
                            <span  id="passShow">
                            <c:if test="${not empty checkLogg}">
                                <label class="clog" style="color: red;margin-left: 96px">${checkLogg}</label>
                            </c:if>
                           </span>

                            <div style="padding-bottom: 24px;padding-left: 77px;"><input type="submit" value="Log in" style="margin-top: 18px;"> </div>
                        </form>
                                <a href="registered.jsp" style="padding-left: 80px" > I don't have a account</a>
                        </div>

                        <div id="bonuceRegistrDiv" style="display: none">
                            <form action="ust?action=registrBonuce" id="registrBonuce" method="post" >
                                <label  for="bonuceTextemailId" style="padding:9px 5px;">
                                    <span style="display: inline-block;" class="emailLoginDesign">Old E-mail  : </span>
                                    <input type="email" id="bonuceTextemailId" autocomplete="off">
                                    <span id="showErr16" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                                </label>
                                <label  for="bonucePrimaryPaswordId" style="padding:9px 5px;">
                                    <span style="display: inline-block ;" class="emailLoginDesign">Old Password  : </span>
                                    <input type="password" id="bonucePrimaryPaswordId" autocomplete="off"> </br> </br>
                                    <span id="showErr17" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                                </label>

                                <label  for="bonuceNameId" style="padding:9px 5px;">
                                    <span style="display: inline-block;" class="emailLoginDesign">Add new bonuce name  : </span>
                                    <input type="text" id="bonuceNameId" autocomplete="off">
                                    <span id="showErr18" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                                </label>
                                <label  for="bonucepaswordId" style="padding:9px 5px;">
                                    <span style="display: inline-block ;" class="emailLoginDesign">Add new bonuce password  : </span>
                                    <input type="password" id="bonucepaswordId" autocomplete="off"> </br> </br>
                                    <span id="showErr19" style="display: none; color: red;margin-left: 20px;">please fill in the gaps and don't use additional character</span>
                                </label>
                                <h3 id="showErr20" style="display: none ; color: #7e8a00;margin-left: 120px;margin-bottom: 20px"></h3>
                                <h3 id="showErr21" style="display: none ; color: #7e8a00;margin-left: 90px;margin-bottom: 20px">Email or password is wrong</h3>
                                <div style="padding-bottom: 24px;padding-left: 77px;"><input type="submit" value="Registr bonuce" > </div>
                                <a href="login.jsp" style="float: left;display: none;color: firebrick" id="bonChk" > Please login ...</a>
                                <c:if test="${not empty checkLoggUser}">
                                    <input type="text" id="bonCheck" style="display: none" value="${checkLoggUser.primaryId}">
                                </c:if>
                            </form>
                        </div>
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


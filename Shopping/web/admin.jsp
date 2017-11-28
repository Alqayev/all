<%@ page import="az.pro.shopping.model.user.UserModel" %>
<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Admin Panel</title>
    <!-- Latest compiled and minified CSS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%String s= (String) request.getAttribute("mail");%>

    <%--ucluk--%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <%--<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">--%>
    <%--<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
    <%--<script src="bootstrap/js/fonts/jquery/jquery.min.js" type="text/javascript"></script>--%>

<%--ucluk--%>

    <link rel="stylesheet" href="bootstrap/css/main.css">
    <link rel="stylesheet" href="bootstrap/css/dataTables.bootstrap.min.css">


    <%--<link rel="stylesheet" href="bootstrap/css/datepicker.min.css">--%>
    <%--<link rel="stylesheet" href="bootstrap/css/datepicker3.min.css">--%>
    <%--../../           --%>

    <!-- jQuery library -->


    <!-- Latest compiled JavaScript -->
    <%--<script src="bootstrap/js/fonts/jquery/bootstrap-datepicker.min.js"></script>--%>

    <script type="text/javascript" src="bootstrap/js/fonts/adminMain.js"></script>
    <script type="text/javascript" src="bootstrap/js/fonts/always.js"></script>

    <%--<script src="../../bootstrap/js/fonts/jquery/jquery-1.10.2.js"></script>--%>
    <script type="text/javascript" src="bootstrap/js/fonts/jquery/jquery-ui.js"></script>
    <link rel="stylesheet" href="bootstrap/css/jquery-ui.css" type="text/css">
    <%--<script src="bootstrap/js/fonts/dialog.js"></script>--%>
    <script src="bootstrap/js/fonts/scrpt.js"></script>
    <%--<script src="bootstrap/js/fonts/jquery/jquery-1.12.3.js"></script>--%>
    <script src="bootstrap/js/fonts/jquery/jquery.dataTables.min.js"></script>
    <script src="bootstrap/js/fonts/jquery/dataTables.bootstrap.min.js"></script>



    <%-------------------------------------------------------------------------------------------------------------%>

    <%--<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">--%>
    <%--<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
    <%--<script src="bootstrap/js/fonts/jquery/jquery.min.js" type="text/javascript"></script>--%>

</head>

<body>
<%UserModel us= (UserModel) session.getAttribute("checkLoggUser");%>
<%if (us!=null&&us.getUserTask().equals("ADMIN")){%>

<script>
    $(function () {
        history.pushState(null,null,'admin.jsp');
        window.addEventListener('popstate',function(event) {
            history.pushState(null,null,'admin.jsp');
        });
        sc();
    })
</script>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Front </a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="chartj.jsp">Show statistic</a></li>
                <li><a href="#">Taleh 2</a></li>
                <li><a href="#">Taleh 3</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row" style="height:1000px;">
        <div class="col-sm-2 sidenav" id="left_bar">
            <input type="button" id="showCustomersListButtonId"  value="Show Customers" class="menuButtonDesign">
            <input type="button"  id="showOrderedListButtonId" value="Show Ordered List" class="menuButtonDesign">
            <input type="button" id="showProductsListButtonId" value="Show Products" class="menuButtonDesign">
            <input type="button" id="showBonuceListButtonId" value="Show bonuce list" class="menuButtonDesign">
            <input type="button" id="sendAllMailButton" value="Send mail all users" class="menuButtonDesign">
            <%--<img src="upload/image.jpg" style="height: ">--%>
        </div>
        <div class="col-sm-8" style="overflow:auto;height:1000px;">

            <div class="panel-group" id="advSearchLoadDiv">

            </div>
            <c:if test="${not empty st}">
                <label class="clog" style="color: red">${st}</label>
            </c:if>


            <%--TABLES--%><%--TABLES--%><%--TABLES--%><%--TABLES--%><%--TABLES--%>
            <div id="showCustomerListdiv" style="display: none">

            </div>
            <div id="showCustomerListGroupBydiv" style="display: none">

            </div>

            <div id="showOrderedListdiv" style="display: none">

            </div>
            <div id="showOrderedListGroupBydiv" style="display: none">

            </div>
            <div id="showOrderedListDeliveryDateGroupBydiv" style="display: none">

            </div>

            <div id="showProductList" style="display: none">

            </div>
            <div id="showProductListGroupBydiv" style="display: none">

            </div>

            <div id="showBonuceList">

            </div>
            <div id="showBonuceListGroupBydiv">

            </div>
            <%--END TABLES--%><%-- END TABLES--%><%--END TABLES--%><%--END TABLES--%><%--END TABLES--%>
            <%--MODAL--%><%-- MODAL--%><%--MODAL--%><%--MODAL--%><%--MODAL--%>

            <div class="modal fade" id="customerModalShow">

            </div><!-- /.modal -->

            <div class="modal fade" id="OrderedModalShow">

            </div><!-- /.modal -->


            <div class="modal fade" id="productModalShow">

            </div><!-- /.modal -->


            <div class="modal fade" id="bonuceModalDiv">

            </div><!-- /.modal -->


            <div class="modal fade" id="insertProductModalDiv">

            </div><!-- /.modal -->
            <%--END MODAL--%><%--END MODAL--%><%--END  MODAL--%><%--END MODAL--%><%--END MODAL--%>

            <%--SEND MAIL MODAL--%><%--SEND MAIL MODAL--%><%--SEND MAIL MODAL--%><%--SEND MAIL MODAL--%><%--SEND MAIL MODAL--%>

            <div class="modal fade" id="sendMailModalDiv">

            </div><!-- /.modal -->

            <div class="modal fade" id="sendallUsersMailModalDiv">

            </div><!-- /.modal -->


            <%--END SEND MAIL MODAL--%><%--END SEND MAIL MODAL--%><%--END SEND MAIL  MODAL--%><%--END SEND MAIL MODAL--%><%--END SEND MAIL MODAL--%>

        </div>
    </div>
</div>
<footer class="container-fluid text-center" style="height:100px;background-color:#000;">
    <p>Footer Taleh</p>
</footer>
<%}
else {%>
<h2>Page not found</h2>
<%}%>
</body>
</html>
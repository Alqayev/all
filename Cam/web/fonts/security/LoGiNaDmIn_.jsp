<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 12.10.2016
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../../js/writeJs/secJs.js"></script>
    <script type="text/javascript" src="../../js/jquery-1.12.3.js"></script>
</head>
<body>
<%--<script type="text/javascript" >--%>
<%--//    $(function () {--%>
<%--////        logPan();--%>
<%--//    });--%>
<%--</script>--%>
<%--<%@include file="../../index.jsp" %>--%>
<form id="secForm" action="${pageContext.request.contextPath}/ch" method="post">
name : <input type="text" autocomplete="false" id="checkedName" name="checkedName"><br><br>
pass : <input type="password" autocomplete="false" id="checkedPass" name="checkedPass"><br><br>
<input type="submit" value="Log In"> &nbsp; &nbsp; &nbsp; <input type="reset" value="Reset">
</form>
</body>
</html>

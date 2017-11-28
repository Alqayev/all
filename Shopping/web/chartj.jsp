<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 18.07.2016
  Time: 6:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
</head>
<body>
<script>
    $(function () {
        $.ajax({
            url:('cs?action=chartAction'),
            type:'GET',
            dataType:'html',
            success:function (data) {
            $('#chartJSP').html(data);
            }
        }) ;
    });
</script>

<div id="chartJSP">

</div>
</body>
</html>

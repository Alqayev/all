<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/13/2016
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<script>
    function select_H() {
        $.ajax({
            url:'../../../cs?action=select_HansgroheProduct',
            method:'GET',
            dataType:'html',
            success:(function (data) {
                $('#hansgroheSelect').html(data);
            })
        });
    }
    $(function() {
        select_H();
    } );
</script>
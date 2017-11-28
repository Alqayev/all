<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/16/2016
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    function select_Fr() {
        $.ajax({
            url:'../../../cs?action=select_FrankeProduct',
            method:'GET',
            dataType:'html',
            success:(function (data) {
                $('#frankeSelect').html(data);
            })
        });
    }
    $(function() {
        select_Fr();
    } );
</script>
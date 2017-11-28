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
    function select_G() {
        $.ajax({
            url:'../../../cs?action=select_GeberitProduct',
            method:'GET',
            dataType:'html',
            success:(function (data) {
                $('#showGeberitProduct_F').html(data);
            })
        });
    }
    $(function() {
        select_G();
    } );
</script>
<div id="showGeberitProduct_F" >

</div>
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

function select_V() {
    $.ajax({
        url:'../../../cs?action=select_VitraProduct',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#vitraSelect').html(data);
        })
    });
}
    $(function() {
        select_V();

//        $(".dataTables_filter").html("");
//        $(".dataTables_filter").append("<label>Search:<input type='text'  id='serachCod_vitra' placeholder='Search...' aria-controls='example'>" +
//                "   </label>")
//        serch_CodVitra();
    } );
</script>


<%--<div id="showVitraProduct_F" >--%>

<%--</div>--%>


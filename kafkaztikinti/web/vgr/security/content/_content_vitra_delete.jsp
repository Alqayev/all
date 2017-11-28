<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/12/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

    $('#deleteVitraProduct').click(function () {
        var kod=$('#vitraPkod').val();
        $.ajax({
            url:'../../../cs?action=deleteVitraProduct',
            method:'POST',
            data:'delete='+kod,
            dataType:'html',
            success:(function (data) {
                $('#chDiv').html(data);
            })
        })
    })
</script>
<div id="chDiv" style="display: none">

</div>
<div style="height: 100%">
<pre style="color: red">Kodu daxil etdiyiniz product müştəri tərəfindən görsənməyək.İstədiyiniz zaman update əməliyatı ilə productu qaytara bilərsiz .</pre>
Kodu daxil edin : <input type="text" id="vitraPkod"><br><br>
<input type="button" id="deleteVitraProduct" value="Productu sil">
    <h3 style="color: red" id="showResp"></h3>
</div>
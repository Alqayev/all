<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/13/2016
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $('#axorTable').DataTable();
    $(".dataTables_filter").html("");
//    $(".dataTables_filter").append("" +
//            "   <label>Search:<input type='text' class='aqa'   id='' placeholder='Search records' aria-controls='example'>" +
//            "   </label>")
    serch_CodAxor();
</script>
<span style="float: right"><label for="serachCod_Ax">Kod axdar : &nbsp;&nbsp; </label>  <input style="float: right" type="text" id="serachCod_Ax" placeholder="Search..."></span>
<table id="axorTable" class="display" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>№</th>
        <th>Adı</th>
        <th>Kod</th>
        <th>Active</th>
        <th>Product üzərində dəyişiklik et </th>
        <th>Productu sil </th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>№</th>
        <th>Adı</th>
        <th>Kod</th>
        <th>Active</th>
        <th>Product üzərində dəyişiklik et </th>
        <th>Productu sil </th>
    </tr>
    </tfoot>
    <tbody id="contentAxor_search">
    <c:forEach items="${selectAxorProduct}" var="cb">
        <tr>
            <td>${cb.product_id}</td>
            <td>${cb.productName}</td>
            <td>${cb.productCod}</td>
            <td>${cb.active}</td>
            <td><a href="javaScript:editAxorPr('${cb.product_id}')">Productu dəyiş</a> </td>
            <td><a href="javaScript:deleteAxorPr('${cb.product_id}')">Productu sil</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

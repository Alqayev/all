<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/15/2016
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${selectProductByCods_Hansgrohe}" var="cb">
    <tr>
        <td>${cb.product_id}</td>
        <td>${cb.productName}</td>
        <td>${cb.productCod}</td>
        <td>${cb.active}</td>
        <td><a href="javaScript:editHansgrohePr('${cb.product_id}')">Productu dəyiş</a> </td>
        <td><a href="javaScript:deleteHansgrohePr('${cb.product_id}')">Productu sil</a> </td>
    </tr>
</c:forEach>

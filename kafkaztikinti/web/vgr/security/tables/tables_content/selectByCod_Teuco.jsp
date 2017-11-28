<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/17/2016
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${selectProductByCods_Teuco}" var="cb">
    <tr>
        <td>${cb.product_id}</td>
        <td>${cb.productName}</td>
        <td>${cb.productCod}</td>
        <td>${cb.active}</td>
        <td><a href="javaScript:editTop10Pr('${cb.product_id}','6')">Productu dəyiş</a> </td>
        <td><a href="javaScript:deleteTop10Pr('${cb.productCod}')">Productu sil</a> </td>
    </tr>
</c:forEach>

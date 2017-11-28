<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/19/2016
  Time: 2:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${selectProductByCods_OtherP}" var="cb">
    <tr>
        <td>${cb.product_id}</td>
        <td>${cb.productName}</td>
        <td>${cb.productCod}</td>
        <td>${cb.active}</td>
        <td><a href="javaScript:editTop10Pr('${cb.product_id}','${cb.topUrun}')">Productu dəyiş</a> </td>
        <td><a href="javaScript:deleteTop10Pr('${cb.productCod}','${cb.topUrun}')">Productu sil</a> </td>
    </tr>
</c:forEach>
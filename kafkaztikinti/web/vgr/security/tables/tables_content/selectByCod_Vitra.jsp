<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/15/2016
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${selectProductByCods_Vitra}" var="cb">
    <tr>
        <td>${cb.product_id}</td>
        <td>${cb.productName}</td>
        <td>${cb.productCod}</td>
        <td>${cb.active}</td>
        <td><a href="javaScript:deleteVitraPr('${cb.productCod}')">Productu sil</a> </td>
    </tr>
</c:forEach>
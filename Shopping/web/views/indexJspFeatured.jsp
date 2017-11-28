<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 10.07.2016
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${showProduct}" var="cs">
    <li>
        <h1> <a href="#">${cs.productName}</a> </h1>
        <img src="upload/${cs.productPicture}" onclick="javascript:showPicture(${cs.producId})" width="279" height="140" alt="" >
        <p>
        <strong style="display: inline-block">New present.Nice present for you family,friends or loves.</strong>
        <h3 style="color: royalblue;">Price : ${cs.prouctPrice} AZN</h3>
        <h3 style="color: royalblue;">Bonuce value : ${cs.productBonuceValue} </h3>
        </p>
    </li>
</c:forEach>

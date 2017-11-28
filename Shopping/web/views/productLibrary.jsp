<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 14.07.2016
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    function gizle() {
        $('#indexjspShowProduct').hide();
    }
   function ordered() {
       $('.newsHref').show();
   }
</script>
<c:forEach items="${getProductLibrary}" var="cs">
    <li>
        <h1> <a href="#">${cs.productName}</a> </h1>
        <img src="upload/${cs.productPicture}" onclick="" width="279" height="140" alt="" >
        <p>
            <strong style="display: inline-block">New present.Nice present for you family,friends or loves.</strong>
        <h3 style="color: royalblue;">Price : ${cs.prouctPrice} AZN</h3>
        <h3 style="color: royalblue;">Bonuce value : ${cs.productBonuceValue} </h3>
        </p>
        <input type="button"  style="float: left;margin: 48px 0px 0px -299px;" onclick="javascript:ordered()" class="search" value=" Choose " >
        <a href="news.jsp" style="float: left;display: none;color: firebrick" class="newsHref" >Do you want go to page news ?</a>
    </li>
</c:forEach>

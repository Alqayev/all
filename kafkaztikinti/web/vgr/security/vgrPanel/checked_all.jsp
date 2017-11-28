<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/12/2016
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="val" value="${deleteVitraProduct}"/>
<c:choose>
    <c:when test="${val.equalsIgnoreCase('empty')}">
        <script>
            $('#showResp').html('Product silindi');
            $('#showResp').css('color','blue');
        </script>
    </c:when>
    <c:otherwise>

        <script>
            $('#showResp').html('${deleteVitraProduct}');
            $('#showResp').css('color','red');
        </script>
    </c:otherwise>
</c:choose>

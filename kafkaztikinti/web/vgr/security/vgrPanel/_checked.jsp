<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/12/2016
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="val" value="${_checked_}"/>

<c:choose>
    <c:when test="${val.equalsIgnoreCase('1')}">
        <script>
            $('#chsecVal').html('Cod bazada movcuddur');
            $('.chsecVal').html('Cod bazada movcuddur');
        </script>
    </c:when>
    <c:when test="${val.equalsIgnoreCase('2')}">
        null
    </c:when>
    <%--<c:otherwise>--%>
        <%--&lt;%&ndash;<script>&ndash;%&gt;--%>
            <%--&lt;%&ndash;$('#showResp').html('${deleteVitraProduct}');&ndash;%&gt;--%>
            <%--&lt;%&ndash;$('#showResp').css('color','red');&ndash;%&gt;--%>
        <%--&lt;%&ndash;</script>&ndash;%&gt;--%>
    <%--</c:otherwise>--%>
</c:choose>

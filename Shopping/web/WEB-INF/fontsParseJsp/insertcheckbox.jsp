<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 14.07.2016
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<option value="8">Choose category</option>
<c:forEach items="${getinsertCheckBox}" var="cb">
    <option value="${cb.dictId}">${cb.dictValue}</option>
</c:forEach>
<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/13/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


        <c:forEach items="${loadFapSub2SelectBox}" var="cb">
            <option value="${cb.dictionaryId}">${cb.dictionaryValue}</option>
        </c:forEach>


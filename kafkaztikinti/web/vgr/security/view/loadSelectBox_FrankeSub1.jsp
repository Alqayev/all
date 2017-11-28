<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/16/2016
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<option value="0" style="color: red">Franke çeşitleri seçiniz </option>
<c:forEach items="${loadFrankeSub1SelectBox}" var="cb">
    <option value="${cb.dictionaryId}">${cb.dictionaryValue}</option>
</c:forEach>

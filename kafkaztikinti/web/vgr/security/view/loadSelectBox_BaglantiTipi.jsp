<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<option value="0" style="color: red">Bağlatı tipi kategorisi seçiniz </option>
<c:forEach items="${loadBaglantiTipiSelectBox}" var="cb">
    <option value="${cb.dictionaryId}">${cb.dictionaryValue}</option>
</c:forEach>

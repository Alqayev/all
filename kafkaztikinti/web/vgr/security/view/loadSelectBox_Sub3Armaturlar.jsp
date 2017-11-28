<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<option value="0" style="color: red">Armatürler </option>
<c:forEach items="${loadSUB3ARMATURLARSelectBox}" var="cb">
    <option value="${cb.dictionaryId}">${cb.dictionaryValue}</option>
</c:forEach>

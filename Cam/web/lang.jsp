<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="net.org.pack.web.changeLanguage" />
<!DOCTYPE html>
<html lang="az">
<head>
    <title>JSP/JSTL i18n demo</title>
</head>
<body>
<form>
    <%--<a value="az" href="${language == 'az' ? 'selected' : ''}" >az</a>--%>
    <%--<a value="eng" href="${language == 'eng' ? 'selected' : ''}">eng</a>--%>
    <input name="language" type="image"  src="css/icon/parameter.png"  ${language == 'az' ? 'selected' : ''} value="az">
    <input name="language" type="image"  src="css/icon/parameter.png" ${language == 'eng' ? 'selected' : ''} value="eng" >
    <%--<select id="language" name="language" onchange="submit()">--%>

        <%--<option value="az" ${language == 'az' ? 'selected' : ''}>English</option>--%>
        <%--<option value="eng" ${language == 'eng' ? 'selected' : ''}>Nederlands</option>--%>
        <%--&lt;%&ndash;<option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>&ndash;%&gt;--%>
    <%--</select>--%>
</form>
<form method="post">
    <label for="username"><fmt:message key="name.ad" />:</label>
    <input type="text" id="username" name="username">
    <br>
    <label for="password"><fmt:message key="surname.ad" />:</label>
    <input type="password" id="password" name="password">
    <br>
    <fmt:message key="age.ad" var="buttonValue" />
    <input type="submit" name="submit" value="${buttonValue}">
</form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 07.07.2016
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.getSession(true).invalidate();
    request.getSession(true).removeAttribute("user");
    response.sendRedirect("login.jsp");
%>

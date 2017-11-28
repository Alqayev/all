<%--
  Created by IntelliJ IDEA.
  User: Taleh
  Date: 10.05.2016
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.getSession(true).invalidate();
  request.getSession(true).removeAttribute("adnCh");
  response.sendRedirect("../../index.jsp");
%>

<%@ page import="java.util.List" %>
<%@ page import="net.org.pack.model.Model" %><%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 13.10.2016
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<Model>list= (List<Model>) request.getAttribute("showListPic");%>
<%for(Model name:list){%>
<%--<%=name.getPicName()%>--%>
<img class="photoGallery img-responsive slideanim" data-src="upload/<%=name.getPicName()%>" src="upload/<%=name.getPicName()%>" data-id="pic_1" data-desc="Image Caption1">
<%}%>


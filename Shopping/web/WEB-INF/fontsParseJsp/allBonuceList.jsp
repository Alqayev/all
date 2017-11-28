<%--
  Created by IntelliJ IDEA.
  User: Taleh
  Date: 22.05.2016
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function () {
        $('#bonuceTableList').DataTable();
    })
</script>
<table id="bonuceTableList" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <%--   L.ID,L.NAME,L.SURNAME,L.EMAIL,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE--%>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Bonuce name</th>
        <th>Bonuce Quontity</th>
        <th>Open Bonuce Date</th>
        <th>Active</th>
        <th>Edit Info</th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <c:forEach items="${getAdminBonuceList}" var="cs">
        <tr>
            <td>${cs.primaryId}</td>
            <td>${cs.name}</td>
            <td>${cs.surname}</td>
            <td>${cs.email}</td>
            <td>${cs.bonuceName}</td>
            <td>${cs.bonuceQuontity}</td>
            <td>${cs.bonuceOpenDate}</td>
            <td>${cs.bonuceActive}</td>
            <td><a href="javascript:editBonuce(${cs.primaryId})">Edit info</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--<table id="bonuceTableList" class="display" cellspacing="0" width="100%">--%>
    <%--&lt;%&ndash;   L.ID,L.NAME,L.SURNAME,L.EMAIL,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE&ndash;%&gt;--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--<th>Id</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Surname</th>--%>
        <%--<th>Email</th>--%>
        <%--<th>Bonuce name</th>--%>
        <%--<th>Bonuce Quontity</th>--%>
        <%--<th>Open Bonuce Date</th>--%>
        <%--<th>Active</th>--%>
        <%--<th>Edit Info</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody style="text-align: center">--%>
    <%--<c:forEach items="${getAdminBonuceList}" var="cs">--%>
        <%--<tr>--%>
            <%--<td>${cs.primaryId}</td>--%>
            <%--<td>${cs.name}</td>--%>
            <%--<td>${cs.surname}</td>--%>
            <%--<td>${cs.email}</td>--%>
            <%--<td>${cs.bonuceName}</td>--%>
            <%--<td>${cs.bonuceQuontity}</td>--%>
            <%--<td>${cs.bonuceOpenDate}</td>--%>
            <%--<td>${cs.bonuceActive}</td>--%>
            <%--<td><a href="javascript:editBonuce(${cs.primaryId})">Edit info</a> </td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
    <%--</tbody>--%>
<%--</table>--%>


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
             $('#customerTableList').DataTable();
//        $('#customerTableList').DataTable();
    })
</script>
<table id="customerTableList" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Login Date</th>
        <th>Task</th>
        <th>Active</th>
        <th>Edit Info</th>
        <th>Send mail</th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <c:forEach items="${getAdminShoppingList}" var="cs">
        <tr>
            <td>${cs.primaryId}</td>
            <td>${cs.name}</td>
            <td>${cs.surname}</td>
            <td>${cs.email}</td>
            <td>${cs.logginDate}</td>
            <td>${cs.tasks}</td>
            <td>${cs.active}</td>
            <td><a href="javascript:editCustomer(${cs.primaryId})"  >Edit info</a> </td>
            <td><a href="javascript:sendMailCustomer(${cs.primaryId})"  >Send mail</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

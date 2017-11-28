<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 19.06.2016
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
   $(function () {
       $('#example').DataTable();
   })

</script>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Address</th>
        <th>Order Date</th>
        <th>Delivery Date </th>
        <th>Mobile</th>
        <th>Mobile2</th>
        <th>Product name</th>
        <th>Orderd count</th>
        <th>Active</th>
        <th>Edit info</th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <c:forEach items="${getAdminOrderedList}" var="css">
        <tr>
            <td>${css.primaryId}</td>
            <td>${css.name}</td>
            <td>${css.surname}</td>
            <td>${css.email}</td>
            <td>${css.address}</td>
            <td>${css.orderDate}</td>
            <td>${css.lastDateOfDelivery}</td>
            <td>${css.mobile}</td>
            <td>${css.mobile2}</td>
            <td>${css.productName}</td>
            <td>${css.prCount}</td>
            <td>${css.rcActive}</td>
            <td><a href="javascript: editOrderedActive(${css.productId})">Edit info</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

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
        $('#productTableList').DataTable();
    })
    $('#insertProductBut').click(function () {
        insertCheckBox();
        $('#insertProductModalDiv').load("views/insertProduct.jsp",function () {
            $('#insertProductModalDiv').modal('show');
        })

    });
</script>

<div>
    <input type="button" id="insertProductBut" value="insert" class="btn btn-lg btn-primary"
           style=" margin-left: 42px;width: 182px;margin-top: 26px;">
</div>
<table id="productTableList" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <%--P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE--%>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Picture</th>
        <th>Price</th>
        <th>Bonuce value</th>
        <th>Imported Date</th>
        <th>Category</th>
        <th>Active</th>
        <th>Edit Info</th>
    </tr>
    </thead>
    <tbody style="text-align: center">
    <c:forEach items="${getAdminProductList}" var="cs">
        <tr>
            <td>${cs.productId}</td>
            <td>${cs.productName}</td>
            <td>${cs.productPicture}</td>
            <td>${cs.productPrice}</td>
            <td>${cs.productBonusValue}</td>
            <td>${cs.productImportDate}</td>
            <td>${cs.dictValue}</td>
            <td>${cs.productActive}</td>
            <td><a href="javascript:editProduct(${cs.productId})">Edit info</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--<table id="productTableList" class="display" cellspacing="0" width="100%">--%>
    <%--&lt;%&ndash;P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE&ndash;%&gt;--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--<th>Id</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Picture</th>--%>
        <%--<th>Price</th>--%>
        <%--<th>Bonuce value</th>--%>
        <%--<th>Imported Date</th>--%>
        <%--<th>Active</th>--%>
        <%--<th>Edit Info</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody style="text-align: center">--%>
    <%--<c:forEach items="${getAdminProductList}" var="cs">--%>
        <%--<tr>--%>
            <%--<td>${cs.productId}</td>--%>
            <%--<td>${cs.productName}</td>--%>
            <%--<td>${cs.productPicture}</td>--%>
            <%--<td>${cs.productPrice}</td>--%>
            <%--<td>${cs.productBonusValue}</td>--%>
            <%--<td>${cs.productImportDate}</td>--%>
            <%--<td>${cs.productActive}</td>--%>
            <%--<td><a href="javascript:editProduct(${cs.productId})">Edit info</a> </td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
    <%--</tbody>--%>
<%--</table>--%>

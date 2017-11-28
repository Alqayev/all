<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 07.07.2016
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    function sortVa(index,price,bonVal) {
        var usId=$('#US').val();
        customerOrdered(index,price,bonVal);
    };
</script>

<c:forEach items="${showProduct}" var="cs">
<li>
    <h1> <a href="#">${cs.productName}</a> </h1>
    <img src="upload/${cs.productPicture}" onclick="javascript:showPicture(${cs.producId})" width="279" height="140" alt="" >
    <p>
        <strong style="display: inline-block">New present.Nice present for you family,friends or loves.</strong>
        <h3 style="color: royalblue;">Price : ${cs.prouctPrice} AZN</h3>
        <h3 style="color: royalblue;">Bonuce value : ${cs.productBonuceValue} </h3>
    </p>
    <input type="button"  style="float: left;margin: 48px 0px 0px -299px;" onclick="javascript:sortVa(${cs.producId},${cs.prouctPrice},${cs.productBonuceValue})" class="search" value=" Choose " >
    <a href="login.jsp" style="float: left;display: none;color: firebrick" class="newsHref" > Please login ...</a>
</li>
</c:forEach>

<%--<input type="text" style="display:none" value="" class="prid" id="prId">--%>

<%--<c:forEach items="${showProduct}" var="cs1">--%>
<%--<div class="modal fade" >--%>
    <%--<div class="modal-dialog" role="document">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                    <%--<span aria-hidden="true">&times;</span>--%>
                <%--</button>--%>
                <%--<h4 class="modal-title">Modal title</h4>--%>
            <%--</div>--%>
            <%--<div class="modal-body" id="">--%>

                <%--<div class="form-inline">--%>


                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="modal-footer">--%>
                <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                <%--<button type="button"  onclick="" class="btn btn-primary">Save changes--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div><!-- /.modal-content -->--%>
    <%--</div><!-- /.modal-dialog -->--%>
<%--</div><!-- /.modal -->--%>
<%--</c:forEach>--%>

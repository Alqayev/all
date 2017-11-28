<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 10.07.2016
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-dialog" role="document" style="width: 58%;">
    <div class="modal-content" >
        <div class="modal-header" style="height: 47px;">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">${picture.productName}</h3>
        </div>
        <div class="modal-body" id="">
            <img src="upload/${picture.productPicture}"  style="margin: -14px;height: 669px;width: 103%;" alt="" >
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->

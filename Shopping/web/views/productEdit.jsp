<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 19.06.2016
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--  P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE--%>

<script>
    $(function() {
        $( "#productEditImportDateTextId" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
        $('#updateProductButClick').click(function () {
            updateProducts();
        })
        editCombo(${editProductList.dictId})
    });
</script>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">Modal title</h4>
        </div>
        <div class="modal-body" id="productModalDiv">

            <div class="form-inline">
            <div style="display: inline-block" class="bonucClass"> Product Name: </div>  <input type="text" class="form-control" style="width: 50%;" id="productEditProductNameTextId" value="${editProductList.productName}"><p></p>

            <div style="display: inline-block" class="bonucClass"> Product Price: </div>  <input type="text" class="form-control" style="width: 50%;" id="productEditProductPriceTextId" value="${editProductList.productPrice}"><p></p>
            <div style="display: inline-block" class="bonucClass"> Product Bonuce Value: </div>  <input type="text" class="form-control" style="width: 50%;" id="productEditProductBonValTextId" value="${editProductList.productBonusValue}"><p></p>
            <div style="display: inline-block" class="bonucClass"> Imported DATE: </div>  <input type="text" class="form-control" style="width: 30%;" id="productEditImportDateTextId" value="${editProductList.productImportDate}"><p></p>
            <div style="display: none"><input type="text" id="productActiveIdch" value="${editProductList.productActive}"></div>
            <div style="display: none"><input type="text" id="productDefaultDate" value="${editProductList.productImportDate}"></div>
            <div style="display: inline-block" class="bonucClass">Active : </div>
            <select class="form-control" style="width: 50%;" id="productActiveTextId"><p></p>
                <option value="2"> Choose tasks </option>
                <option value="0"> Ignore User </option>
                <option value="1"> Active user </option>
            </select>
                <div style="display: inline-block" class="bonucClass">Category : </div>
                <select class="form-control" style="width: 50%;" id="productCategoryTextId"><p></p>

                </select>

            <form action="cs?action=productPictureUpdate" method="post" enctype="multipart/form-data" id="ownPictureId">
                <div style="display: inline-block" class="bonucClass"> Product Picture: </div>   <input type="file" class="form-control" name="filename">
                <input type="text"  id="picOwntexIdname" name="picOwntexName" style="display: none">
                <input type="submit" value="Update picture" style="display: none">
            </form>

                </div>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="updateProductButClick" class="btn btn-primary">Save changes
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->



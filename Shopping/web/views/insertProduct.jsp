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
        $('#insertButtonIds').click(function () {
//            insertProduct();
            $('#ownPictureId').submit();
            alert('Save information')
        })
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
        <div class="modal-body" >


            <form action="cs?action=productInsertPictureUpdate" method="post" enctype="multipart/form-data" id="ownPictureId">
                <div style="display: inline-block" class="bonucClass"> Product Name: </div>  <input type="text" placeholder="Product Name" class="form-control" autocomplete="off" style="width: 50%;" name="productInsertProductNameTextId" ><p></p>

                <div style="display: inline-block" class="bonucClass"> Product Price: </div>  <input type="number" placeholder="Product Price" class="form-control" autocomplete="off" style="width: 50%;" name="productInsertProductPriceTextId" ><p></p>
                <div style="display: inline-block" class="bonucClass" > Product Bonuce Value: </div>  <input type="number" placeholder="Product Bonuce Value" class="form-control"  autocomplete="off" style="width: 50%;" name="productInsrtProductBonValTextId" ><p></p>
                <div style="display: inline-block" class="bonucClass" >Choose category: </div><select  class="form-control"  style="width: 50%;" id="insertCheckBox" name="insertCheckBoxs"></select>
                <div style="display: inline-block" class="bonucClass" >Product Picture: </div>   <input type="file" class="form-control" style="width: 50%;" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>

            <small id="messageSents">Your message has been sent.</small>


        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="insertButtonIds" class="btn btn-primary">Save changes
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->



<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/13/2016
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function () {
        checkedKodForTeuco();
    });
</script>

<div id="fal_teuco" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">TEUCO -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=insert_teuco" method="post" enctype="multipart/form-data" id="insertTeucoForm">
                <input type="text" value="0" style="display: none" name="sub1Teuco">
                <input type="text" value="0" style="display: none" name="sub3Teuco">
                <input type="text" value="0" style="display: none" name="sub2Teuco">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Te"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Te" name="topIdTeuco_insert">
                <option value="6"> Teuco</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="teucoCod_insert"> Kodu daxil edin :</label>  <input type="text" name="teucoCodName_insert" class="form-control" style="width: 50%;" id="teucoCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="teucoProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="teucoProductNameName_insert" style="width: 50%;" class="form-control" id="teucoProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="teucoProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="teucoProductUrlName_insert" class="form-control" id="teucoProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="teucoPicture_insert">Şəkli daxil edin :</label><input type="file" id="teucoPicture_insert" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="teucoBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

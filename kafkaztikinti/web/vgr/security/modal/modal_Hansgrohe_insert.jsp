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
        loadHansgroheSub2Category();
        loadHansgroheTalisOptGrpCategory();
        checkedKodHansgroheInsert();
    });
</script>

<div id="fal1" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">GEBERIT -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=insert_Hansgrohe" method="post" enctype="multipart/form-data" id="insertHansgroheForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_H"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_H" name="topIdHansgrohe_insert">
                <option value="3"> Hansgrohe & Axor</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Hansgrohe">Hansgrohe & Axor bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Hansgrohe"  name="sub1Hansgrohe_insert">
                <option value="6"> Hansgrohe </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub2id_Hansgrohe">Hansgrohe çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub2id_Hansgrohe"  name="sub2Hansgrohe_insert">

            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="hansgroheSub3_id"> Hansgrohe çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="hansgroheSub3_id" name="sub3Hansgrohe_insert">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Metris çeşitleri">
                    <option value="119">Metris</option>
                    <option value="120">Metris s</option>
                    <option value="121">Metris classic</option>
                </optgroup>
                <optgroup class="optGRP" id="talisCategory" label="Talis çeşitleri">

                </optgroup>
                <optgroup class="optGRP" label="Logis çeşitleri ">
                    <option value="129"> Logis</option>
                    <option value="130"> Logis classic</option>
                </optgroup>
                <optgroup class="optGRP" label=" Aksesuarlar ">
                    <option value="131"> Provida</option>
                    <option value="132"> Logis</option>
                    <option value="133">  Logis classic</option>
                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheCod_insert"> Kodu daxil edin :</label>  <input type="text" name="hansgroheCodName_insert" class="form-control" style="width: 50%;" id="hansgroheCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="hansgroheProductNameName_insert" style="width: 50%;" class="form-control" id="hansgroheProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="hansgroheProductUrlName_insert" class="form-control" id="hansgroheProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="hansgrohePicture_insert">Şəkli daxil edin :</label><input type="file" id="hansgrohePicture_insert" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="hansgroheBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

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
        loadTop10Sub2Category('61');
        loadTop10Sub2Category('62');
        loadTop10Sub2Category('63');
        checkedKodFapInsert();
    });
</script>

<div id="fal1_fap" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">FAP -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=insert_Fap" method="post" enctype="multipart/form-data" id="insertFapForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Fap"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Fap" name="topIdFap_insert">
                <option value="7"> Fap</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Fap">Fap bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Fap"  name="sub1Fap_insert">
                <option value="61"> Pastabiyanka (Divar_ucun_kafel)  </option>
                <option value="62"> Atelyer </option>
                <option value="63"> Pavimenti </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="fapSub2_id"> Fap çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="fapSub2_id" name="sub2Fap_insert">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" id="pastabyankaOptGrp" label="Pastabiyanka (Divar_ucun_kafel)">

                </optgroup>
                <optgroup class="optGRP" id="atelyer" label="Atelyer çeşitleri">

                </optgroup>
                <optgroup class="optGRP" id="pavimente" label="Pavimenti çeşitleri ">

                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="fapCod_insert"> Kodu daxil edin :</label>  <input type="text" name="fapCodName_insert" class="form-control" style="width: 50%;" id="fapCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="fapProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="fapProductNameName_insert" style="width: 50%;" class="form-control" id="fapProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="fapProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="fapProductUrlName_insert" class="form-control" id="fapProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="fapPicture_insert">Şəkli daxil edin :</label><input type="file" id="fapPicture_insert" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="fapBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

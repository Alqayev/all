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
        loadFrankeSub1Category();
        checkedKodFr();
    });
</script>

<div id="fal_franke" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">FRANKE -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=insert_Franke" method="post" enctype="multipart/form-data" id="insertFrankeForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Fr"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Fr" name="topIdFranke_insert">
                <option value="5"> Franke</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Franke">Franke çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub1id_Franke"  name="sub1Franke_insert">

            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub2_id_franke"> Franke çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="sub2_id_franke" name="sub2Franke_insert">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Franke surfaces çeşitleri">
                    <option value="159">franke_solid_surface</option>
                    <option value="160">franke_ceramic_surface</option>
                </optgroup>
                <optgroup class="optGRP" label="Eviyeler ">
                    <option value="161">tezgahalti_eviyeler</option>
                    <option value="162"> tezgahustu_eviyeler</option>
                    <option value="163">slimtop_eviyeler</option>
                    <option value="164"> granit/tectonite_eviyeler</option>
                </optgroup>
                <optgroup class="optGRP" label="Armatürler ">
                    <option value="165"> isikli_armaturler</option>
                    <option value="166"> klassik_armaturler</option>
                    <option value="167"> celik_armaturler</option>
                    <option value="168"> ws_banyo_armaturler</option>
                </optgroup>
                <optgroup class="optGRP" label=" Ocaklar ">
                    <option value="169"> celik_ocaklar</option>
                    <option value="170"> cam_ocaklar</option>
                    <option value="171"> cam_seramik_ocaklar</option>
                    <option value="172"> klassik_ocaklar</option>
                </optgroup>
                <optgroup class="optGRP" label="Yıkama grupu">
                    <option value="173"> ankastre_camasir_makineleri</option>
                    <option value="174"> solo_camasir_makineleri</option>
                </optgroup>
                <optgroup class="optGRP" label="Buzdolaplar">
                    <option value="175"> ankastre_buzdolaplari</option>
                    <option value="176"> solo_buzdolaplari</option>
                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="frankeCod_insert"> Kodu daxil edin :</label>  <input type="text" name="frankeCodName_insert" class="form-control" style="width: 50%;" id="frankeCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="frankeProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="frankeProductNameName_insert" style="width: 50%;" class="form-control" id="frankeProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="frankeProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="frankeProductUrlName_insert" class="form-control" id="frankeProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="frankePicture_insert">Şəkli daxil edin :</label><input type="file" id="frankePicture_insert" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="frankeBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

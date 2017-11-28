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
        loadgeberitCategory();
        loadgeberitFotoselliSistemlerOptgroupCategory();
        loadgeberitkonstruksiyonMontajElemanlariOptGrpCategory();
        checkedKod();
    });
</script>

<div id="fal" style="display: none">

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

            <form  action="../../../cs?action=insert_Geberit" method="post" enctype="multipart/form-data" id="insertGeberitForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_G"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_G" name="topIdGeberit_insert">
                <option value="4"> Geberit</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Geberit">Geberit çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub1id_Geberit"  name="sub1Geberit_insert">

            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub2_id"> Geberit çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="sub2_id" name="sub2Geberit_insert">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Kumanda kapakları">
                    <option value="130">sigma_kumanda_kapaklari</option>
                    <option value="131">duofresh_kumanda_kapaklari</option>
                    <option value="132">delta_kumanda_kapaklari</option>
                    <option value="133">omega_kumanda_kapaklari</option>
                </optgroup>
                <optgroup class="optGRP" label="Gömme rezervuarları">
                    <option value="134">sigma_gomme_rezervuarlar</option>
                    <option value="135"> duofresh_gomme_rezervuarlar</option>
                    <option value="136">delta_gomme_rezervuarlar</option>
                    <option value="137"> omega_usten_basmali_gomme_rezervuarlar</option>
                    <option value="138"> aksesuarlar</option>
                </optgroup>
                <optgroup class="optGRP" label="Monolith ailesi ">
                    <option value="139"> monolith_rezervuar_modullar</option>
                    <option value="140"> monolith_lavabo_moduller</option>
                </optgroup>
                <optgroup class="optGRP" label=" Aquaklean ">
                    <option value="141"> aquaclean_otomatik_klozet_sistemleri</option>
                    <option value="142"> aquaclean_otomatik_klozet_kapaklari</option>
                </optgroup>
                <optgroup class="optGRP" label="Fotoselli sistemler" id="fotoselliSistemlerOptgroup">

                </optgroup>
                <optgroup class="optGRP" label="Drenaj elemanlar">
                    <option value="149"> Sugeder</option>
                    <option value="150"> sifonlar</option>
                    <option value="151"> tus_troplenleri</option>
                </optgroup>
                <optgroup class="optGRP" label="İç takımlar">
                    <option value="152"> seramik_rezervuarlar_icin_ic_takimlar</option>
                </optgroup>
                <optgroup class="optGRP" label="Konstruksiyon montaj elemanları" id="konstruksiyonMontajElemanlariOptGrp">

                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="geberitCod_insert"> Kodu daxil edin :</label>  <input type="text" name="geberitCodName_insert" class="form-control" style="width: 50%;" id="geberitCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="geberitProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="geberitProductNameName_insert" style="width: 50%;" class="form-control" id="geberitProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="geberitProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="geberitProductUrlName_insert" class="form-control" id="geberitProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="geberitPicture_insert">Şəkli daxil edin :</label><input type="file" id="geberitPicture_insert" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="geberitBtn_insert">Save changes</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

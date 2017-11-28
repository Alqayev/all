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
        loadTop10Sub2Category_edit('61','${editFapProduct.sub2Table}');
        loadTop10Sub2Category_edit('62','${editFapProduct.sub2Table}');
        loadTop10Sub2Category_edit('63','${editFapProduct.sub2Table}');
        $('#sub1id_Fap_edit').val(${editFapProduct.sub1Table})
        $('#activeFap_update').val(${editFapProduct.active})
        $('#fapBtn_update').click(function () {
            var ch=$('#topId_Fap_Edit').val();
            var kod=$('#fapCod_update').val();
            var id=$('#fap_id_update').val();
            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    var checkd=data;
                    if(checkd.trim()=='null'&&ch!=0){
                        $('#updateFapForm').submit();
                    }else
                    {
                        if (ch==0){
                            $('#chsecValFap').html('Axor çeşitleri boş geçilemez');
                        }else{
                            $('#fal1_fap_edit').html(data);
                        }
                    }
                })
            });
        });
    });
</script>

<div id="fal1_fap_edit" style="display: none">

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

            <form  action="../../../cs?action=update_Fap" method="post" enctype="multipart/form-data" id="updateFapForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Fap_Edit"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Fap_Edit" name="topIdFap_update">
                <option value="7"> Fap</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Fap_edit">Fap bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Fap_edit"  name="sub1Fap_update">
                <option value="61"> Pastabiyanka (Divar_ucun_kafel)  </option>
                <option value="62"> Atelyer </option>
                <option value="63"> Pavimenti </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="fapSub2_id_edit"> Fap çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="fapSub2_id_edit" name="sub2Fap_update">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" id="pastabyankaOptGrp_edit" label="Pastabiyanka (Divar_ucun_kafel)">

                </optgroup>
                <optgroup class="optGRP" id="atelyer_edit" label="Atelyer çeşitleri">

                </optgroup>
                <optgroup class="optGRP" id="pavimente_edit" label="Pavimenti çeşitleri ">

                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="fapCod_update"> Kodu daxil edin :</label>  <input type="text" name="fapCodName_update" class="form-control" style="width: 50%;" id="fapCod_update"  value="${editFapProduct.productCod}">
                <label class="infoLabel" style="color: #2b542c"  for="fapProductName_update"> Productun adını daxil edin : </label> <input type="text" name="fapProductNameName_updte" style="width: 50%;" class="form-control" id="fapProductName_update"  value="${editFapProduct.productName}">
                <label class="infoLabel" style="color: #2b542c"  for="fapProductUrl_update">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="fapProductUrlName_update" class="form-control" id="fapProductUrl_update" value="${editFapProduct.url}">
                <label class="infoLabel" style="color: #2b542c"  for="fapPicture_update">Şəkli daxil edin :</label><input type="file" id="fapPicture_update" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
                <img style="width: 100px" src="../../../upload/${editFapProduct.productProfilPicName}">
                <label class="infoLabel" style="color: #2b542c"  for="activeFap_update"> Active </label><select class="form-control" style="width: 50%;" id="activeFap_update" name="activeFapName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <input style="display: none" value="${editFapProduct.product_id}" id="fap_id_update" name="fapIdName_up">
                <input style="display: none" value="${editFapProduct.productProfilPicName}" id="fap_picPath" name="fap_picNameName">
                <input style="display: none" value="${editFapProduct.productPicPath}" id="fapPicName" name="fap_picPathNameName">
            </form>
            <h3 class="chsecVal" id="chsecValFap" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="fapBtn_update">Yadda saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

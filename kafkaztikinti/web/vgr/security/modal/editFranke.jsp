<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function () {

        loadFrankeSub1Category_edit(${editFrankeProduct.sub1Table});
        $('#activeFranke_update').val(${editFrankeProduct.active})
        $('#sub2_id_franke_edit').val(${editFrankeProduct.sub2Table})

        $('#frankeBtn_update').click(function () {
            var kod=$('#frankeCod_edit').val();
            var id=$('#id_franke').val();
            var a2=$('#sub1id_Franke').val();

            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    alert(data)
                    var checkd=data;
                    if(checkd.trim()=='null'&&a2!=0){
                        $('#updateFrankeForm').submit();
                    }else
                    {
                        if (a2==0){
                            $('#chsecVal1franke').html('Franke çeşitleri boş geçilemez');
                        }else{
                            $('#fal_franke').html(data);
                        }

                    }

                })
            });

        });

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
            <h4 class="modal-title">GEBERIT -Dəyişə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=update_Franke" method="post" enctype="multipart/form-data" id="updateFrankeForm">
                <label class="infoLabel" style="color: #2b542c"  for="topIdedit_Fr"> Super Category </label><select class="form-control" style="width: 50%;" id="topIdedit_Fr" name="topIdFranke_update">
                <option value="5"> Franke</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Franke_edit">Franke çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub1id_Franke_edit"  name="sub1Franke_edit">

            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub2_id_franke_edit"> Franke çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="sub2_id_franke_edit" name="sub2Franke_update">
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
                <label class="infoLabel" style="color: #2b542c"  for="frankeCod_edit"> Kodu daxil edin :</label>  <input type="text" value="${editFrankeProduct.productCod}" name="frankeCodName_edit" class="form-control" style="width: 50%;" id="frankeCod_edit">
                <label class="infoLabel" style="color: #2b542c"  for="frankeProductName_edit"> Productun adını daxil edin : </label> <input type="text" value="${editFrankeProduct.productName}" name="frankeProductNameName_edit" style="width: 50%;" class="form-control" id="frankeProductName_edit">
                <label class="infoLabel" style="color: #2b542c"  for="frankeProductUrl_edit">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" value="${editFrankeProduct.url}" name="frankeProductUrlName_edit" class="form-control" id="frankeProductUrl_edit">
                <input type="text" id="id_franke" style="display: none" value="${editFrankeProduct.product_id}" name="_id_franke">
                <input style="display: none"  value="${editFrankeProduct.productProfilPicName}" id="franke_picPath" name="franke_picNameName">
                <input style="display: none"  value="${editFrankeProduct.productPicPath}" id="frankePicName" name="franke_picPathNameName">
                <img style="width: 100px" src="../../../upload/${editFrankeProduct.productProfilPicName}"><br>
                <label class="infoLabel" style="color: #2b542c"  for="frankePicture_edit">Şəkli daxil edin :</label><input type="file" id="frankePicture_edit" name="filename">
                <label class="infoLabel" style="color: #2b542c"  for="activeFranke_update"> Active </label><select class="form-control" style="width: 50%;" id="activeFranke_update" name="activeFrankeName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" id="chsecVal1franke" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="frankeBtn_update">Dəyişiklikləri saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

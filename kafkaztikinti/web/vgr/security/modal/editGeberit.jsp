<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function () {

        loadgeberitCategory_edit(${editGeberitProduct.sub1Table});
        loadgeberitFotoselliSistemlerOptgroupCategory_edit(${editGeberitProduct.sub2Table});
        loadgeberitkonstruksiyonMontajElemanlariOptGrpCategory_edit(${editGeberitProduct.sub2Table});

//        $('#axorheBtn_update').click(function () {
//            var ch=$('#sub2id_Axor_update').val();
//            var kod=$('#axorCod_update').val();
//            var id=$('#axor_id_update').val();
//
//        });
        $('#activeGeb_update').val(${editGeberitProduct.active})
        <%--alert(${editGeberitProduct.active})--%>

        $('#geberitBtn_update').click(function () {
            var kod=$('#geberitCod_edit').val();
            var id=$('#id_geberit').val();
            var a2=$('#sub1id_Geberit_edit').val();

            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    alert(data)
                    var checkd=data;
                    if(checkd.trim()=='null'&&a2!=0){
                        $('#updateGeberitForm').submit();
                    }else
                    {
                        if (a2==0){
                            $('#chsecVal1geberit').html('Geberit çeşitleri boş geçilemez');
                        }else{
                            $('#fal_geberit').html(data);
                        }

                    }

                })
            });

        });

    });
</script>

<div id="fal_geberit" style="display: none">

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

            <form  action="../../../cs?action=update_Geberit" method="post" enctype="multipart/form-data" id="updateGeberitForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_G_edit"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_G_edit" name="topIdGeberit_edit">
                <option value="4"> Geberit</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Geberit_edit">Geberit çeşitleri</label> <select class="form-control"  style="width: 50%;" id="sub1id_Geberit_edit"  name="sub1Geberit_edit">

            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="sub2_id_edit"> Geberit çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="sub2_id_edit" name="sub2Geberit_edit">
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
                <optgroup class="optGRP" label="Fotoselli sistemler" id="fotoselliSistemlerOptgroup_edit">

                </optgroup>
                <optgroup class="optGRP" label="Drenaj elemanlar">
                    <option value="149"> Sugeder</option>
                    <option value="150"> sifonlar</option>
                    <option value="151"> tus_troplenleri</option>
                </optgroup>
                <optgroup class="optGRP" label="İç takımlar">
                    <option value="152"> seramik_rezervuarlar_icin_ic_takimlar</option>
                </optgroup>
                <optgroup class="optGRP" label="Konstruksiyon montaj elemanları" id="konstruksiyonMontajElemanlariOptGrp_edit">

                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="geberitCod_edit"> Kodu daxil edin :</label>  <input type="text" value="${editGeberitProduct.productCod}" name="geberitCodName_edit" class="form-control" style="width: 50%;" id="geberitCod_edit">
                <label class="infoLabel" style="color: #2b542c"  for="geberitProductName_edit"> Productun adını daxil edin : </label> <input type="text" value="${editGeberitProduct.productName}" name="geberitProductNameName_edit" style="width: 50%;" class="form-control" id="geberitProductName_edit">
                <label class="infoLabel" style="color: #2b542c"  for="geberitProductUrl_edit">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" value="${editGeberitProduct.url}" name="geberitProductUrlName_insert_edit" class="form-control" id="geberitProductUrl_edit">
                <input type="text" id="id_geberit" style="display: none" value="${editGeberitProduct.product_id}" name="_id">
                <input style="display: none"  value="${editGeberitProduct.productProfilPicName}" id="geberit_picPath" name="geberit_picNameName">
                <input style="display: none"  value="${editGeberitProduct.productPicPath}" id="geberitPicName" name="geberit_picPathNameName">
                <img style="width: 100px" src="../../../upload/${editGeberitProduct.productProfilPicName}"><br/>
                <label class="infoLabel" style="color: #2b542c"  for="activeGeb_update"> Active </label><select class="form-control" style="width: 50%;" id="activeGeb_update" name="active_GebName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="geberitPicture_edit">Şəkli daxil edin :</label><input type="file" id="geberitPicture_edit" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" id="chsecVal1geberit" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="geberitBtn_update">Dəyişiklikləri saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

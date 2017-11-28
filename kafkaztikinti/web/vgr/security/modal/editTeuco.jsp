<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    $(function () {

        $('#activeteuco_update').val(${editTeucoProduct.active})
            $('#teucoBtn_update').click(function () {
            var kod=$('#teucoCod_edit').val();
            var id=$('#id_teuco').val();
            var a2=$('#topId_Te_edit').val();

            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    var checkd=data;
                    if(checkd.trim()=='null'&&a2!=0){
                        $('#updateTeucoForm').submit();
                    }else
                    {
                        if (a2==0){
                            $('#chsecVal1Teuco').html('Teuco çeşitleri boş geçilemez');
                        }else{
                            $('#fal_Teuco').html(data);
                        }

                    }

                })
            });

        });

    });
</script>

<div id="fal_Teuco" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">TEUCO -Dəyişə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=update_Teuco" method="post" enctype="multipart/form-data" id="updateTeucoForm">
                <input type="text" value="0" style="display: none" name="sub1Teuco_edit">
                <input type="text" value="0" style="display: none" name="sub3Teuco_edit">
                <input type="text" value="0" style="display: none" name="sub2Teuco_edit">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Te_edit"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Te_edit" name="topIdTeuco_edit">
                <option value="6"> Teuco</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="teucoCod_edit"> Kodu daxil edin :</label>  <input type="text" value="${editTeucoProduct.productCod}" name="teucoCodName_edit" class="form-control" style="width: 50%;" id="teucoCod_edit">
                <label class="infoLabel" style="color: #2b542c"  for="teucoProductName_edit"> Productun adını daxil edin : </label> <input type="text" value="${editTeucoProduct.productName}" name="teucoProductNameName_edit" style="width: 50%;" class="form-control" id="teucoProductName_edit">
                <label class="infoLabel" style="color: #2b542c"  for="teucoProductUrl_edit">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" value="${editTeucoProduct.url}" name="teucoProductUrlName_edit" class="form-control" id="teucoProductUrl_edit">
                <input type="text" id="id_teuco" style="display: none" value="${editTeucoProduct.product_id}" name="_idteucoNmae">
                <input style="display: none"  value="${editTeucoProduct.productProfilPicName}" id="teuco_picPath_op" name="teuco_picNameName_up">
                <input style="display: none"  value="${editTeucoProduct.productPicPath}" id="teucoPicName_up" name="teuco_picPathNameName_up">
                <img style="width: 100px" src="../../../upload/${editTeucoProduct.productProfilPicName}"><br/>
                <label class="infoLabel" style="color: #2b542c"  for="activeteuco_update"> Active </label><select class="form-control" style="width: 50%;" id="activeteuco_update" name="active_TeucoName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="teucoPicture_edit">Şəkli daxil edin :</label><input type="file" id="teucoPicture_edit" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 class="chsecVal" id="chsecVal1Teuco" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="teucoBtn_update">Dəyişiklikləri saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->


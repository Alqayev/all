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
        loadHansgroheSub2Category_edit(${editHansgroheProduct.sub2Table});
        loadHansgroheTalisOptGrpCategory_edit(${editHansgroheProduct.sub3Table});
        $('#activeH_edit').val(${editHansgroheProduct.active})
        checkedKodHansgroheInsert();

        $('#axorheBtn_update').click(function () {
            var ch=$('#sub2id_Axor_update').val();


        });


        $('#hansgroheBtn_update').click(function () {
            var ch=$('#sub2id_Hansgrohe_edit').val();
            var kod=$('#hansgroheCod_edit').val();
            var id=$('#hangrohe_id').val();
            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    var checkd=data;
                    if(checkd.trim()=='null'&&ch!=0){
                        $('#updateHansgroheForm').submit();
                    }else
                    {
                        if (ch==0){
                            $('#chsecValH1').html('Hansgrohe çeşitleri boş geçilemez');
                        }else{
                            $('#fal1hansgrohe').html(data);
                        }

                    }

                })
            });
//            if(b1!=0){
//                $('#updateHansgroheForm').submit()
//            }else{
//                $('#chsecValH').html('Hansgrohe çeşitleri - boş keçilemez')
//            }
        })
    });
</script>

<div id="fal1hansgrohe" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">HANSGROHE -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=update_Hansgrohe" method="post" enctype="multipart/form-data" id="updateHansgroheForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_H_edit"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_H_edit" name="topIdHansgrohe_edit">
                <option value="3"> Hansgrohe & Axor</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Hansgrohe_edit">Hansgrohe & Axor bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Hansgrohe_edit"  name="sub1Hansgrohe_edit">
                <option value="6"> Hansgrohe </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub2id_Hansgrohe_edit">Hansgrohe çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub2id_Hansgrohe_edit"  name="sub2Hansgrohe_edit">

            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="hansgroheSub3_id_edit"> Hansgrohe çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="hansgroheSub3_id_edit" name="sub3Hansgrohe_edit">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Metris çeşitleri">
                    <option value="119">Metris</option>
                    <option value="120">Metris s</option>
                    <option value="121">Metris classic</option>
                </optgroup>
                <optgroup class="optGRP" id="talisCategory_edit" label="Talis çeşitleri">

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
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheCod_edit"> Kodu daxil edin :</label>  <input value="${editHansgroheProduct.productCod}" value="" type="text" name="hansgroheCodName_edit" class="form-control" style="width: 50%;" id="hansgroheCod_edit">
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheProductName_edit"> Productun adını daxil edin : </label> <input value="${editHansgroheProduct.productName}" type="text" name="hansgroheProductNameName_edit" style="width: 50%;" class="form-control" id="hansgroheProductName_edit">
                <label class="infoLabel" style="color: #2b542c"  for="hansgroheProductUrl_edit">Productun URL ( ÜNVAN ) daxil edin :</label> <input value="${editHansgroheProduct.url}" type="text" name="hansgroheProductUrlName_edit" class="form-control" id="hansgroheProductUrl_edit">
               <img style="width: 100px" src="../../../upload/${editHansgroheProduct.productProfilPicName}">
                <label class="infoLabel" style="color: #2b542c"  for="hansgrohePicture_edit">Şəkli daxil edin :</label><input  type="file" id="hansgrohePicture_edit" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
                <br><br>
                <label class="infoLabel" style="color: #2b542c"  for="activeH_edit"> Super Category </label><select class="form-control" style="width: 50%;" id="activeH_edit" name="activeHName_edit">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <input style="display: none" value="${editHansgroheProduct.product_id}" id="hangrohe_id" name="hansIdName">
                <input style="display: none" value="${editHansgroheProduct.productProfilPicName}" id="hangrohe_picPath" name="picNameName">
                <input style="display: none" value="${editHansgroheProduct.productPicPath}" id="hangrohePicName" name="picPathNameName">
            </form>
            <h3 id="chsecValH1" class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="hansgroheBtn_update">Dəyişiklikləri yadda saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

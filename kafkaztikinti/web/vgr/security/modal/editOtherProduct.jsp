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
        $('#topId_OtherProduct_update').val(${editOtherProduct.topUrun})
        $('#activeOtherP_update').val(${editOtherProduct.active})
        $('#otherBtn_update').click(function () {
            var ch=$('#topId_OtherProduct_update').val();
            var kod=$('#otherCod_update').val();
            var id=$('#otherP_id_update').val();
            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    var checkd=data;
                    if(checkd.trim()=='null'&&ch!=0){
                        $('#updateOtherProductForm').submit();
                    }else
                    {
                        if (ch==0){
                            $('#chsecValOther_v').html('Diger productlar -Daxil edə biləcəyiniz parametrlər- boş geçilemez');
                        }if(ch!=0){
                            $('#fal1_otherP_edit').html(data);
                        }
                    }
                })
            });
        });
    });
</script>

<div id="fal1_otherP_edit" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">Diger productlar -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form action="../../../cs?action=update_OtherProduct" method="post" enctype="multipart/form-data"
                  id="updateOtherProductForm">
                <label class="infoLabel" style="color: #2b542c" for="topId_OtherProduct_update"> Super
                    Category </label><select class="form-control" style="width: 50%;" id="topId_OtherProduct_update"
                                             name="topIdOtherProduct_update">
                <option value="0"> Kategoriya secin</option>
                <option value="8"> Dyson</option>
                <option value="9"> Seta</option>
                <option value="10"> Devon</option>
                <option value="11"> Schluter</option>
                <option value="12"> Burgbad</option>
                <option value="13"> Eurodesign</option>
                <option value="14"> Toscecuatro</option>
                <option value="15"> Oazis</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c" for="otherCod_update"> Kodu daxil edin
                    :</label> <input type="text"  value="${editOtherProduct.productCod}"  name="otherCodCodName_update" class="form-control"
                                     style="width: 50%;" id="otherCod_update">
                <label class="infoLabel" style="color: #2b542c" for="otherCodProductName_update"> Productun
                    adını daxil edin : </label> <input type="text"  value="${editOtherProduct.productName}" name="otherCodProductNameName_update"
                                                       style="width: 50%;" class="form-control"
                                                       id="otherCodProductName_update">
                <label class="infoLabel" style="color: #2b542c" for="otherCodProductUrl_update">Productun
                    URL ( ÜNVAN ) daxil edin :</label> <input type="text"  value="${editOtherProduct.url}"
                                                              name="otherCodProductUrlName_update"
                                                              class="form-control"
                                                              id="otherCodProductUrl_update">
                <label class="infoLabel" style="color: #2b542c" for="otherCodPicture_update">Şəkli daxil
                    edin :</label><input type="file" id="otherCodPicture_update" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none">
                <label class="infoLabel" style="color: #2b542c"  for="activeOtherP_update"> Active </label><select class="form-control" style="width: 50%;" id="activeOtherP_update" name="activeOtherPName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <img style="width: 100px" src="../../../upload/${editOtherProduct.productProfilPicName}">
                <input style="display: none" value="${editOtherProduct.product_id}" id="otherP_id_update" name="otherProductIdName_up">
                <input style="display: none" value="${editOtherProduct.productProfilPicName}" id="otherProduct_picPath" name="otherProduct_picNameName">
                <input style="display: none" value="${editOtherProduct.productPicPath}" id="otherProductPicName" name="otherProduct_picPathNameName">
            </form>
            <h3 class="chsecVal" id="chsecValOther_v" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="otherBtn_update">Yadda saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

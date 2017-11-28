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
        loadAxorSub2Category_edit(${editAxorProduct.sub2Table});
        loadAxorAccessoriesOptGrpCategory_edit(${editAxorProduct.sub3Table});
        <%--loadAxorAccessoriesOptGrpCategory_edit(${editAxorProduct.sub3Table});--%>
        $('#activeH_update').val(${editAxorProduct.active})
        $('#axorheBtn_update').click(function () {
            var ch=$('#sub2id_Axor_update').val();
            var kod=$('#axorCod_update').val();
            var id=$('#axor_id_update').val();
            $.ajax({
                url:'../../../cs?action=checkedForUpdate',
                method:'POST',
                data:'kod='+kod+'&id='+id,
                dataType:'html',
                success:(function (data) {
                    alert(data)
                    var checkd=data;
                    if(checkd.trim()=='null'&&ch!=0){
                        $('#updateAxorForm').submit();
                    }else
                    {
                        if (ch==0){
                            $('#chsecValAxor').html('Axor çeşitleri boş geçilemez');
                        }else{
                            $('#fal_axor').html(data);
                        }

                    }

                })
            });
        });
        })

</script>

<div id="fal_axor" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">AXOR -Dəyişə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=update_Axor" method="post" enctype="multipart/form-data" id="updateAxorForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Ax_update"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Ax_update" name="topIdAxor_update">
                <option value="3"> Hansgrohe & Axor</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Axor_update">Hansgrohe & Axor bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Axor_update"  name="sub1Axor_update">
                <option value="7"> Axor  </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub2id_Axor_update">Axor çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub2id_Axor_update"  name="sub2Axor_update">

            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="axorSub3_id_update"> Axor çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="axorSub3_id_update" name="sub3axor_update">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Starck çeşitleri">
                    <option value="134">Normal starck</option>
                    <option value="135">Starck x</option>
                    <option value="136">Starck classic</option>
                </optgroup>
                <optgroup class="optGRP" id="accessoriesCategoryAxor_update" label="Accessories çeşitleri">

                </optgroup>
                <optgroup class="optGRP" label="Electronics mixers ">
                    <option value="148">Starck</option>
                    <option value="149">Starck x</option>
                    <option value="150">Starck organik</option>
                    <option value="151">Citterio</option>
                    <option value="152">uno2</option>
                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="axorCod_update"> Kodu daxil edin :</label>  <input type="text" value="${editAxorProduct.productCod}" name="axorCodName_update" class="form-control" style="width: 50%;" id="axorCod_update">
                <label class="infoLabel" style="color: #2b542c"  for="axorProductName_update"> Productun adını daxil edin : </label> <input value="${editAxorProduct.productName}" type="text" name="axorProductNameName_update" style="width: 50%;" class="form-control" id="axorProductName_update">
                <label class="infoLabel" style="color: #2b542c"  for="axorProductUrl_update">Productun URL ( ÜNVAN ) daxil edin :</label> <input value="${editAxorProduct.url}" type="text" name="axorProductUrlName_update" class="form-control" id="axorProductUrl_update">
                <label class="infoLabel" style="color: #2b542c"  for="axorPicture_update">Şəkli daxil edin :</label><input type="file" id="axorPicture_update" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
                <br><br>
                <img style="width: 100px" src="../../../upload/${editAxorProduct.productProfilPicName}">
                <label class="infoLabel" style="color: #2b542c"  for="activeH_update"> Active </label><select class="form-control" style="width: 50%;" id="activeH_update" name="activeHName_update">
                <option value="1"> Geri qaytar</option>
                <option value="0"> Sil</option>
            </select><br>
                <input style="display: none" value="${editAxorProduct.product_id}" id="axor_id_update" name="axorIdName_up">
                <input style="display: none" value="${editAxorProduct.productProfilPicName}" id="axor_picPath" name="_picNameName">
                <input style="display: none" value="${editAxorProduct.productPicPath}" id="axorPicName" name="_picPathNameName">
            </form>
            <h3 class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="axorheBtn_update">Dəyişiklikləri yadda saxla</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->

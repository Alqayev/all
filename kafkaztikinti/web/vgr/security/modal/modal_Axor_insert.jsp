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
        loadAxorSub2Category();
        loadAxorAccessoriesOptGrpCategory();
        checkedKodAxorInsert();
    });
</script>

<div id="fal_A" style="display: none">

</div>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">AXOR -Daxil edə biləcəyiniz parametrlər</h4>
        </div>
        <div class="modal-body">

            <form  action="../../../cs?action=insert_Axor" method="post" enctype="multipart/form-data" id="insertAxorForm">
                <label class="infoLabel" style="color: #2b542c"  for="topId_Ax"> Super Category </label><select class="form-control" style="width: 50%;" id="topId_Ax" name="topIdAxor_insert">
                <option value="3"> Hansgrohe & Axor</option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub1id_Axor">Hansgrohe & Axor bölünmesi</label> <select class="form-control" style="width: 50%;" id="sub1id_Axor"  name="sub1Axor_insert">
                <option value="7"> Axor  </option>
            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="sub2id_Axor">Axor çeşitleri</label> <select class="form-control" style="width: 50%;" id="sub2id_Axor"  name="sub2Axor_insert">

            </select><br>

                <label class="infoLabel" style="color: #2b542c"  for="axorSub3_id"> Axor çeşitlerinin alt çeşitleri </label><select class="form-control" style="width: 50%;" id="axorSub3_id" name="sub3axor_insert">
                <option value="0"> Choose category</option>
                <optgroup class="optGRP" label="Starck çeşitleri">
                    <option value="134">Normal starck</option>
                    <option value="135">Starck x</option>
                    <option value="136">Starck classic</option>
                </optgroup>
                <optgroup class="optGRP" id="accessoriesCategoryAxor" label="Accessories çeşitleri">

                </optgroup>
                <optgroup class="optGRP" label="Electronics mixers ">
                    <option value="148">Starck</option>
                    <option value="149">Starck x</option>
                    <option value="150">Starck organik</option>
                    <option value="151">Citterio</option>
                    <option value="152">uno2</option>
                </optgroup>
            </select><br>
                <label class="infoLabel" style="color: #2b542c"  for="axorCod_insert"> Kodu daxil edin :</label>  <input type="text" name="axorCodName_insert" class="form-control" style="width: 50%;" id="axorCod_insert">
                <label class="infoLabel" style="color: #2b542c"  for="axorProductName_insert"> Productun adını daxil edin : </label> <input type="text" name="axorProductNameName_insert" style="width: 50%;" class="form-control" id="axorProductName_insert">
                <label class="infoLabel" style="color: #2b542c"  for="axorProductUrl_insert">Productun URL ( ÜNVAN ) daxil edin :</label> <input type="text" name="axorProductUrlName_insert" class="form-control" id="axorProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c"  for="axorPicture_insert">Şəkli daxil edin :</label><input type="file" id="axorPicture_insert" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none" >
            </form>
            <h3 id="chsecValAxor" class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="axorBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
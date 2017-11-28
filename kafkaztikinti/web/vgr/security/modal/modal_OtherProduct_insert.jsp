<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function () {
        checkedKodOtherInsert();
    });
</script>

<div id="otherProduct" style="display: none">

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

            <form action="../../../cs?action=insert_OtherProduct" method="post" enctype="multipart/form-data"
                  id="insertOtherProductForm">
                <label class="infoLabel" style="color: #2b542c" for="topId_OtherProduct"> Super
                    Category </label><select class="form-control" style="width: 50%;" id="topId_OtherProduct"
                                             name="topIdOtherProduct_insert">
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

                <label class="infoLabel" style="color: #2b542c" for="otherCod_insert"> Kodu daxil edin
                    :</label> <input type="text" name="otherCodCodName_insert" class="form-control"
                                     style="width: 50%;" id="otherCod_insert">
                <label class="infoLabel" style="color: #2b542c" for="otherCodProductName_insert"> Productun
                    adını daxil edin : </label> <input type="text" name="otherCodProductNameName_insert"
                                                       style="width: 50%;" class="form-control"
                                                       id="otherCodProductName_insert">
                <label class="infoLabel" style="color: #2b542c" for="otherCodProductUrl_insert">Productun
                    URL ( ÜNVAN ) daxil edin :</label> <input type="text"
                                                              name="otherCodProductUrlName_insert"
                                                              class="form-control"
                                                              id="otherCodProductUrl_insert">
                <label class="infoLabel" style="color: #2b542c" for="otherCodPicture_insert">Şəkli daxil
                    edin :</label><input type="file" id="otherCodPicture_insert" name="filename">
                <input type="submit" value="Daxil et picture" style="display: none">
            </form>
            <h3 id="chsecValotherCod" class="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="otherCodBtn_insert">Daxil et</button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
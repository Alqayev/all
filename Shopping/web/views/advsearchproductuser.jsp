<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 16.07.2016
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(function () {
        $('#advSearchProductBtns').click(function () {
            advUserProductSearch();
        });
    });
</script>
<div id="productadvList" class="form-inline">
    <label for="advProductNameIdUser">Product name:</label> <input style="margin-top: 3%;margin-left: 12%;" placeholder="Product name" type="text" class="form-control"  id="advProductNameIdUser" /><br>
    <label for="advPriceMinUser">Price min:</label> <input style="margin-top: 3%;margin-left: 17%;" placeholder="Price min" type="number" class="form-control" id="advPriceMinUser" /><br>
    <label for="advPriceMaxUser">Price max:</label> <input style="margin-top: 3%;margin-left: 17%;" placeholder="Price max" type="number" class="form-control"  id="advPriceMaxUser" /><br>
    <label for="advBonucValueMinUser">Bonuce value  min:</label><input style="margin-top: 3%;margin-left: 8%;" placeholder="Bonuce value  min" type="number" class="form-control"  id="advBonucValueMinUser"/> <br>
    <label for="advBonucValueMaxUser">Bonuce value  max:</label><input style="margin-top: 3%;margin-left: 8%;" placeholder="Bonuce value  max" type="number" class="form-control"  id="advBonucValueMaxUser"  /> <br>

    <label for="advProductActiveSearchUser">Active :</label>
    <select class="form-control" id="advProductActiveSearchUser" style="width: 33%;margin-top: 3%;margin-left: 20%;"><p></p>

    </select>
    <div style="margin-right: 0px"> <input type="button" id="advSearchProductBtns" value="Search product" data-toggle="modal" data-target=""
                                           class="btn btn-primary active" style=" margin-left: 0px;width: 182px;margin-top: 0px;"></div>
</div>

<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 20.06.2016
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<script>

    $('#advCustomerLoginDateBegin').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advCustomerLoginDateEnd').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOrderedOrderDateBegin').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOrderedOrderDateEnd').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOrderedDeliveryDateBegin').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOrderedDeliveryDateEnd').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advPricebeginDate').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advPriceEndDate').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOpenBonuceDatebegin').datepicker({
        changeMonth: true,
        changeYear: true
    });
    $('#advOpenBonuceDateEnd').datepicker({
        changeMonth: true,
        changeYear: true
    });
    var globid=0;
    $('.menuButtonDesign').click(function () {
        var yol=$(this).attr("id");
        globid=yol;
    })
    $('#orderByDeliveryDate').click(function () {
        forDeliveryDateOrderedGroupBy();
        $('#showOrderedListDeliveryDateGroupBydiv').show();
        $('#showCustomerListGroupBydiv').hide();
        $('#showOrderedListGroupBydiv').hide();
        $('#showProductListGroupBydiv').hide();
        $('#showBonuceListGroupBydiv').hide();

        $('#showCustomerListdiv').hide();
        $('#showOrderedListdiv').hide();
        $('#showProductList').hide();
        $('#showBonuceList').hide();

        $("#customeradvDivShow").hide();
        $('#advOrderedListDiv').hide();
        $('#productadvList').hide();
        $("#bonuceAdvList").hide();
    });
    $('#orderBy').click(function () {
        if(globid=="showCustomersListButtonId") {
            customerGroupBy();
            $('#showCustomerListGroupBydiv').show();
            $('#showOrderedListGroupBydiv').hide();
            $('#showProductListGroupBydiv').hide();
            $('#showBonuceListGroupBydiv').hide();
            $('#showOrderedListDeliveryDateGroupBydiv').hide();

            $('#showCustomerListdiv').hide();
            $('#showOrderedListdiv').hide();
            $('#showProductList').hide();
            $('#showBonuceList').hide();

            $("#customeradvDivShow").hide();
            $('#advOrderedListDiv').hide();
            $('#productadvList').hide();
            $("#bonuceAdvList").hide();
            $('#orderByDeliveryDate').hide();



        }

        else if(globid=="showOrderedListButtonId"){
            orderedGroupBy();
            $('#orderByDeliveryDate').show();
            $('#showCustomerListGroupBydiv').hide();
            $('#showOrderedListGroupBydiv').show();
            $('#showProductListGroupBydiv').hide();
            $('#showBonuceListGroupBydiv').hide();
            $('#showOrderedListDeliveryDateGroupBydiv').hide();

            $('#showCustomerListdiv').hide();
            $('#showOrderedListdiv').hide();
            $('#showProductList').hide();
            $('#showBonuceList').hide();

            $("#customeradvDivShow").hide();
            $('#advOrderedListDiv').hide();
            $('#productadvList').hide();
            $("#bonuceAdvList").hide();
        }
        else if(globid=="showProductsListButtonId"){
            productGroupBy();
            $('#showCustomerListGroupBydiv').hide();
            $('#showOrderedListGroupBydiv').hide();
            $('#showProductListGroupBydiv').show();
            $('#showBonuceListGroupBydiv').hide();
            $('#showOrderedListDeliveryDateGroupBydiv').hide();

            $('#showCustomerListdiv').hide();
            $('#showOrderedListdiv').hide();
            $('#showProductList').hide();
            $('#showBonuceList').hide();

            $("#customeradvDivShow").hide();
            $('#advOrderedListDiv').hide();
            $('#productadvList').hide();
            $("#bonuceAdvList").hide();
            $('#orderByDeliveryDate').hide();
        }
        else if(globid=="showBonuceListButtonId"){
            bonuceGroupBy();
            $('#showCustomerListGroupBydiv').hide();
            $('#showOrderedListGroupBydiv').hide();
            $('#showProductListGroupBydiv').hide();
            $('#showBonuceListGroupBydiv').show();
            $('#showOrderedListDeliveryDateGroupBydiv').hide();

            $('#showCustomerListdiv').hide();
            $('#showOrderedListdiv').hide();
            $('#showProductList').hide();
            $('#showBonuceList').hide();

            $("#customeradvDivShow").hide();
            $('#advOrderedListDiv').hide();
            $('#productadvList').hide();
            $("#bonuceAdvList").hide();
            $('#orderByDeliveryDate').hide();
        };
    });
    $('#advSearchBtn').click(function () {
       if(globid=="showCustomersListButtonId"){
           $("#customeradvDivShow").show();
           $('#advOrderedListDiv').hide();
           $('#productadvList').hide();
           $("#bonuceAdvList").hide();
           $('#showCustomerListGroupBydiv').hide();
           $('#showOrderedListGroupBydiv').hide();
           $('#showProductListGroupBydiv').hide();
           $('#showBonuceListGroupBydiv').hide();
           $('#showOrderedListDeliveryDateGroupBydiv').hide();
           $('#orderByDeliveryDate').hide();

       }
        else if(globid=="showOrderedListButtonId"){
           $("#customeradvDivShow").hide();
         $('#advOrderedListDiv').show();
           $('#productadvList').hide();
           $("#bonuceAdvList").hide();
           $('#showCustomerListGroupBydiv').hide();
           $('#showOrderedListGroupBydiv').hide();
           $('#showProductListGroupBydiv').hide();
           $('#showBonuceListGroupBydiv').hide();
           $('#showOrderedListDeliveryDateGroupBydiv').hide();
           $('#orderByDeliveryDate').hide();
        }
        else if(globid=="showProductsListButtonId"){
            $('#productadvList').show();
           $("#customeradvDivShow").hide();
           $('#advOrderedListDiv').hide();
           $("#bonuceAdvList").hide();
           $('#showCustomerListGroupBydiv').hide();
           $('#showOrderedListGroupBydiv').hide();
           $('#showProductListGroupBydiv').hide();
           $('#showBonuceListGroupBydiv').hide();
           $('#showOrderedListDeliveryDateGroupBydiv').hide();
           $('#orderByDeliveryDate').hide();
        }
       else if(globid=="showBonuceListButtonId"){
           $('#bonuceAdvList').show();
           $('#productadvList').hide();
           $("#customeradvDivShow").hide();
           $('#advOrderedListDiv').hide();
           $('#showCustomerListGroupBydiv').hide();
           $('#showOrderedListGroupBydiv').hide();
           $('#showProductListGroupBydiv').hide();
           $('#showBonuceListGroupBydiv').hide();
           $('#showOrderedListDeliveryDateGroupBydiv').hide();
           $('#orderByDeliveryDate').hide();
       }
        $('#advSearchCustomerBtn').click(function () {

            advSerachCustomers();

        });
        $('#advSearchOrderedBtn').click(function () {
            advSerachOrders();
        });
        $('#advSearchProductBtn').click(function () {
            advSerachProducts();
        });
        $('#advSearchBonuceBtn').click(function () {
            advSerachBonuces();

        });
    });
</script>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#advSearchLoadDiv" href="#collapse1">
                A D V A N C E D &nbsp;&nbsp; S E A R C H</a>
        </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">


            <input type="button" id="advSearchBtn" value="Search list" data-toggle="modal" data-target=""
                   class="btn btn-success" style=" margin-left: 0px;width: 182px;margin-top: 0px;">

         <input type="button" id="orderBy" value="Order by list" data-toggle="modal" data-target=""
               class="btn btn-success" style=" margin-left: 0px;width: 182px;margin-top: 0px;">

        <input type="button" id="orderByDeliveryDate" value="Order by delivery date" data-toggle="modal" data-target=""
               class="btn btn-success" style=" margin-left: 0px;width: 182px;margin-top: 0px; display: none">


            <div id="customeradvDivShow" style="display: none;" class="form-inline">
                <div style="display: inline-block;width: 150px;" class="forms-controls"> Customer name: </div>   <input placeholder="Customer name" type="text" class="form-control"  id="advSearchCustomerNameId" style="width: 17%"/>
                <div style="display: inline-block;width: 150px;" class="forms-controls" > Customer surname: </div>  <input placeholder="Customer surname" type="text" class="form-control"  id="advSearchCustomerSurname" style="width: 17%"/>
                <div style="display: inline-block;width: 150px;" class="forms-controls"> Customer email: </div>  <input placeholder=" Customer email" type="text" class="form-control"  id="advSearchCustomerEmail" style="width: 17%"/>
                <div style="display: inline-block;width: 150px;" class="forms-controls"> Customer begin login date: </div>  <input placeholder="Format (mm/dd/yyyy)" type="text" class="form-control"  id="advCustomerLoginDateBegin"  style="width: 17%"/>
                <div style="display: inline-block;width: 150px;" class="forms-controls"> Customer end login date: </div>  <input placeholder="Format  (mm/dd/yyyy)" type="text" class="form-control"  id="advCustomerLoginDateEnd"  style="width: 17%"/>
                <div style="display: inline-block;width: 150px;" class="forms-controls">TASKS : </div>
                <select class="form-control"  id="advSerachCustomerTasks" style="width: 17%"><p></p>
                    <option value="2"> Choose tasks </option>
                    <option value="USER">  User </option>
                    <option value="ADMIN"> Admin user </option>
                </select>
                <div style="display: inline-block;width: 150px;" class="forms-controls">ACTIVE : </div>
                <select class="form-control"  id="advSearchCustomerActive" style="width: 17%"><p></p>
                    <option value="2"> Choose active </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
               <div style="margin-right: 0px"> <input type="button" id="advSearchCustomerBtn" value="Search customer" data-toggle="modal" data-target=""
                       class="btn btn-primary active" style=" margin-left: 0px;width: 182px;margin-top: 0px;"></div>
            </div>


            <%--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

            <div id="advOrderedListDiv" style="display: none; " class="form-inline">
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Customer name: </div>  <input type="text" placeholder="Customer name" class="form-control"  id="advOrderedNameId" style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Customer surname: </div>  <input type="text" placeholder="Customer surname" class="form-control"  id="advOrderedSurname" style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Customer email: </div>  <input type="email" placeholder="Customer email" class="form-control"  id="advOrderedEmail" style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Order begin  date: </div>  <input type="text" placeholder="(mm/dd/yyyy)" class="form-control"  id="advOrderedOrderDateBegin"  style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Order end  date: </div>  <input type="text" placeholder="(mm/dd/yyyy)" class="form-control"  id="advOrderedOrderDateEnd" style="width: 17%" />
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Delivery begin  date: </div>  <input type="text" placeholder="(mm/dd/yyyy)" class="form-control"  id="advOrderedDeliveryDateBegin"  style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Delivery end  date: </div>  <input type="text" placeholder="(mm/dd/yyyy)" class="form-control"  id="advOrderedDeliveryDateEnd"  style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Mobile : </div>  <input type="text" placeholder="Mobile" class="form-control"  id="advOrderedMobilebir" style="width: 17%" />
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Mobile 2 : </div>  <input type="text" placeholder="Mobile2" class="form-control"  id="advOrderedMobile"  style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Address : </div>  <input type="text" placeholder="Address" class="form-control"  id="advOrderedAddress"  style="width: 17%"/>
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Product name : </div>  <input type="text" placeholder="one min" class="form-control"  id="advProductNameac"  style="width: 17%"/>

                <div style="display: inline-block; width: 150px;" class="forms-controls"> Ordered count min : </div>  <input type="number" placeholder="two min" class="form-control"  id="advOrderedCountMin" style="width: 17%" />
                <div style="display: inline-block; width: 150px;" class="forms-controls"> Ordered count max : </div>  <input type="number" placeholder="two max" class="form-control"  id="advOrderedCountMax"  style="width: 17%"/>

                <div style="display: inline-block; width: 150px;" class="forms-controls">Active : </div>
                <select class="form-control" id="advOrderedActiveSearch" style="width: 17%"><p></p>
                    <option value="2"> Choose active </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
                <div style="margin-right: 0px"> <input type="button" id="advSearchOrderedBtn" value="Search customer" data-toggle="modal" data-target=""
                                                       class="btn btn-primary active" style=" margin-left: 0px;width: 182px;margin-top: 0px;"></div>
            </div>

            <%--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

            <div id="productadvList" style="display: none; " class="form-inline">
                <div style="display: inline-block" class="forms-controls"> Product name: </div>  <input placeholder="Product name" type="text" class="form-control"  id="advProductNameId" />
                <div style="display: inline-block" class="forms-controls"> Price min: </div>  <input placeholder="Price min" type="number" class="form-control" id="advPriceMin" />
                <div style="display: inline-block" class="forms-controls"> Price max: </div>  <input placeholder="Price max" type="number" class="form-control"  id="advPriceMax" />
                <div style="display: inline-block" class="forms-controls"> Bonuce value  min:</div>  <input placeholder="Bonuce value  min" type="number" class="form-control"  id="advBonucValueMin"  />
                <div style="display: inline-block" class="forms-controls">Bonuce value  max: </div>  <input placeholder="Bonuce value  max" type="number" class="form-control"  id="advBonucValueMax"  />
                <div style="display: inline-block" class="forms-controls"> imported  date begin : </div>  <input placeholder="(mm/dd/yyyy)" type="text" class="form-control" id="advPricebeginDate"  />
                <div style="display: inline-block" class="forms-controls"> imported  date end: </div>  <input placeholder="(mm/dd/yyyy)" type="text" class="form-control"  id="advPriceEndDate"  />

                <div style="display: inline-block; width: 150px;" class="forms-controls">Active : </div>
                <select class="form-control" id="advProductActiveSearch" style="width: 17%"><p></p>
                    <option value="2"> Choose active </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
                <div style="margin-right: 0px"> <input type="button" id="advSearchProductBtn" value="Search customer" data-toggle="modal" data-target=""
                                                       class="btn btn-primary active" style=" margin-left: 0px;width: 182px;margin-top: 0px;"></div>
            </div>


            <%--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


            <div id="bonuceAdvList" style="display: none; " class="form-inline">
                <div style="display: inline-block" class="forms-controls">  Name: </div>  <input placeholder="Name" type="text" class="form-control"  id="advCustomerBonuceNameId" />
                <div style="display: inline-block" class="forms-controls"> Surname: </div>  <input placeholder="Surname" type="text" class="form-control"  id="advCustomerBonuceSurnameId" />
                <div style="display: inline-block" class="forms-controls"> Email: </div>  <input placeholder="Email" type="email" class="form-control"  id="advCustomerBonuceEmailId" />
                <div style="display: inline-block" class="forms-controls"> Bonuce Name:</div>  <input placeholder="Bonuce Name" type="text" class="form-control"  id="advBonucNameId"  />
                <div style="display: inline-block" class="forms-controls">Bonuce Quantity  min: </div>  <input placeholder="Bonuce Quantity  min" type="number" class="form-control"  id="advBonucQuontityMin"  />
                <div style="display: inline-block" class="forms-controls">Bonuce Quantity  max: </div>  <input placeholder="Bonuce Quantity  max" type="number" class="form-control"  id="advBonucQuontityMax"  />
                <div style="display: inline-block" class="forms-controls">Open bonuce date begin : </div>  <input placeholder="(mm/dd/yyyy)" type="text" class="form-control"  id="advOpenBonuceDatebegin"  />
                <div style="display: inline-block" class="forms-controls">Open bonuce date end: </div>  <input placeholder="(mm/dd/yyyy)" type="text" class="form-control" id="advOpenBonuceDateEnd"  />

                <div style="display: inline-block; width: 150px;" class="forms-controls">Active : </div>
                <select class="form-control" id="advBonuceActiveSearch" style="width: 17%"><p></p>
                    <option value="2"> Choose active </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
                <div style="margin-right: 0px"> <input type="button" id="advSearchBonuceBtn" value="Search customer" data-toggle="modal" data-target=""
                                                       class="btn btn-primary active" style=" margin-left: 0px;width: 182px;margin-top: 0px;"></div>
            </div>

    </div>
</div>




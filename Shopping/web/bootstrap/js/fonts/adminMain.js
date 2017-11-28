/**
 * Created by TALEH on 18.06.2016.
 */
// S E L E C T   A R E A

var globId = 0;
function getCustomerList() {
  
    $.ajax({
        url: 'cs?action=getCustomerList',
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            $('#showCustomerListdiv').html(data);
        }
    });
};

function getOrderedList() {
    $.ajax({
        url: 'cs?action=getOrderedList',
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            $('#showOrderedListdiv').html(data);

        }
    });
};

function getProductList() {
    $.ajax({
        url: 'cs?action=getProductList',
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            $('#showProductList').html(data);
        }
    });
};

function getBonuceList() {
    $.ajax({
        url: 'cs?action=getBonuceList',
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            $('#showBonuceList').html(data);
        }
    });
};
// E N D   S E L E C T   A R E A


// E D I T   A R E A
function editCustomer(index) {
    globId = index;
    $.ajax({
        url: 'cs?action=editCustomerList',
        type: 'GET',
        data: 'data=' + index,
        dataType: 'html',
        success: function (data) {
            $('#customerModalShow').html(data);
            $('#customerModalShow').modal('show')
        }
    });
};

function editOrderedActive(index) {
    globId = index;
   
            $('#OrderedModalShow').load('views/orderedEdit.jsp',function () {
                $('#OrderedModalShow').modal('show');
            });
            
    
}

function editProduct(index) {
    globId = index;
    $.ajax({
        url: 'cs?action=editProductList',
        type: 'GET',
        data: 'data=' + index,
        dataType: 'html',
        success: function (data) {
            $('#productModalShow').html(data);
            $('#productModalShow').modal('show')
        }
    });
};

function editBonuce(index) {
    globId = index;
    $.ajax({
        url: 'cs?action=editBonuceList',
        type: 'GET',
        data: 'data=' + index,
        dataType: 'html',
        success: function (data) {
            $('#bonuceModalDiv').html(data);
            $('#bonuceModalDiv').modal('show')
        }
    });
};
//// E N D      E D I T     A R E A

// U P D A T E    A R E A
function updateCustomer() {
    var id = globId;
    var loginDate = $('#customerEditLoginDateTextId').val();
    var active = $('#customerActiveId').val();
    var tasks = $('#customerTaskId').val();
    var choosedTasks = $('#customerTaskTextId').val();
    var choosedActive = $('#customerActiveTextId').val();
    var defaultDate = $('#defoultDate').val();
    $.ajax({
        url: 'cs?action=updateCustomerList',
        type: 'POST',
        data: 'id=' + id + '&loginDate=' + loginDate + '&active=' + active + '&tasks=' + tasks + '&choosedTasks=' + choosedTasks + '&choosedActive=' + choosedActive + '&defaultDate=' + defaultDate,
        dataType: 'text',
        success: function (data) {
            $('#customerModalShow').modal('hide');
            getCustomerList();

        },
        complete: function () {
            alert('Update info')
        }
    });
};

function updateOrderdActive() {
    var id=globId;
    var active=$('#orderedActiveTextId').val();
    if (active==2){
        alert('search active')
    }else{
        $.ajax({
            url:'cs?action=updateOrderdActive',
            type:'POST',
            data:'id='+id+'&active='+active,
            dataType:'html',
            complete:function () {
                alert('Success update info')
            }
        });
    }
    
};

function updateProducts() {
    var id = globId;
    var productName = $('#productEditProductNameTextId').val();
    var active = $('#productActiveIdch').val();
    var choosedActive = $('#productActiveTextId').val();
    var picture = $('#productEditProductPictureTextId').val();
    var price = $('#productEditProductPriceTextId').val();
    var choosedDate = $('#productEditImportDateTextId').val();
    var bonuceValue = $('#productEditProductBonValTextId').val();
    var defaultDate = $('#productDefaultDate').val();
    var category=$('#productCategoryTextId').val();
    $.ajax({
        url: 'cs?action=updateProductList',
        type: 'POST',
        data: 'id=' + id + '&productName=' + productName + '&active=' + active + '&choosedActive=' + choosedActive + '&price=' + price + '&defaultDate=' + defaultDate + '&choosedDate=' + choosedDate + '&bonuceValue=' + bonuceValue+'&category='+category,
        dataType: 'text',
        success: function (data) {
            getProductList();
        },
        complete: function () {
            $('#picOwntexIdname').val(id);
            $('#ownPictureId').submit();
            getProductList();
        }
    });
};

function updateBonuce() {
    var id = globId;
    var bonuceNme = $('#EditBonuceNameTextId').val();
    var bonuceQuontity = $('#EditBonQuontityTextId').val();
    var bazaActive = $('#bonuceActiveId').val();
    var defoultActive = $('#bonuceActiveTextId').val();
    var defoultday = $('#defoultBonuceDay').val();
    var editDay = $('#EditBonOpDateTextId').val();

    $.ajax({
        url: 'cs?action=updateBonuce',
        type: 'POST',
        data: 'id=' + id + '&bonuceNme=' + bonuceNme + '&bonuceQuontity=' + bonuceQuontity + '&bazaActive=' + bazaActive + '&defoultActive=' + defoultActive + '&defoultday=' + defoultday + '&editDay=' + editDay,
        dataType: 'text',
        success: function (data) {
            $('#bonuceModalDiv').modal('hide');
            getBonuceList();

        },
        complete: function () {
            alert('Update info');
        }
    });
};
//E N D    U P D A T E    A R E A


//I N S E R T   A R E A


//E N D   I N S E R T    A R E A


//S E A R C H    A R E A
function advSerachCustomers() {
    var name = $('#advSearchCustomerNameId').val();
    var surname = $('#advSearchCustomerSurname').val();
    var email = $('#advSearchCustomerEmail').val();
    var beginDate = $('#advCustomerLoginDateBegin').val();
    var endDate = $('#advCustomerLoginDateEnd').val();
    var tasks = $('#advSerachCustomerTasks').val();
    var active = $('#advSearchCustomerActive').val();
    $.ajax({
        url: 'cs?action=advSerachCustomers',
        type: 'POST',
        data: 'name=' + name + '&surname=' + surname + '&email=' + email + '&beginDate=' + beginDate + '&task=' + tasks + '&active=' + active + '&endDate=' + endDate,
        dataType: 'html',
        success: function (data) {
            $('#showCustomerListdiv').html(data);
        }
    });
};

function advSerachOrders() {
    var name = $('#advOrderedNameId').val();
    var surname = $('#advOrderedSurname').val();
    var address = $('#advOrderedAddress').val();
    var email = $('#advOrderedEmail').val();
    var orderbeginDate = $('#advOrderedOrderDateBegin').val();
    var orderendDate = $('#advOrderedOrderDateEnd').val();
    var deliverybeginDate = $('#advOrderedDeliveryDateBegin').val();
    var deliveryendDate = $('#advOrderedDeliveryDateEnd').val();
    var mobile = $('#advOrderedMobilebir').val();
    var mobile2 = $('#advOrderedMobile').val();
    var productName = $('#advProductNameac').val();
    var countMin = $('#advOrderedCountMin').val();
    var countMax = $('#advOrderedCountMax').val();
    var active = $('#advOrderedActiveSearch').val();

    
    $.ajax({
        url: 'cs?action=advSerachOrders',
        type: 'POST',
        data: 'name=' + name+'&address='+address + '&surname=' + surname + '&email=' + email + '&orderbeginDate=' + orderbeginDate + '&orderendDate=' 
        + orderendDate + "&deliverybeginDate=" + deliverybeginDate + '&deliveryendDate=' + deliveryendDate + '&mobile=' + mobile + '&mobile2=' + mobile2 
        + '&productName=' + productName + '&countMin=' + countMin + '&countMax=' + countMax +'&active=' + active,
        dataType: 'html',
        success: function (data) {
            $('#showOrderedListdiv').html(data);
        }
    });
};

function advSerachProducts() {
    var name = $('#advProductNameId').val();
    var minPrice = $('#advPriceMin').val();
    var advPriceMax = $('#advPriceMax').val();
    var advBonucValueMin = $('#advBonucValueMin').val();
    var advBonucValueMax = $('#advBonucValueMax').val();
    var advPricebeginDate = $('#advPricebeginDate').val();
    var advPriceEndDate = $('#advPriceEndDate').val();
    var advProductActiveSearch = $('#advProductActiveSearch').val();
    
    $.ajax({
        url: 'cs?action=advSerachProducts',
        type: 'POST',
        data: 'name=' + name + '&minPrice=' + minPrice + '&advPriceMax=' + advPriceMax + '&advBonucValueMin=' + advBonucValueMin + '&advBonucValueMax=' 
        + advBonucValueMax + '&advPricebeginDate=' + advPricebeginDate + '&advPriceEndDate=' + advPriceEndDate+'&advProductActiveSearch='+advProductActiveSearch,
        dataType: 'html',
        success: function (data) {
            $('#showProductList').html(data);
        }
    });
};

function advSerachBonuces() {
    var name = $('#advCustomerBonuceNameId').val();
    var advCustomerBonuceSurnameId = $('#advCustomerBonuceSurnameId').val();
    var advCustomerBonuceEmailId = $('#advCustomerBonuceEmailId').val();
    var advBonucNameId = $('#advBonucNameId').val();
    var advBonucQuontityMin = $('#advBonucQuontityMin').val();
    var advBonucQuontityMax = $('#advBonucQuontityMax').val();
    var advOpenBonuceDatebegin = $('#advOpenBonuceDatebegin').val();
    var advOpenBonuceDateEnd = $('#advOpenBonuceDateEnd').val();
    var advBonuceActiveSearch = $('#advBonuceActiveSearch').val();

    $.ajax({
        url: 'cs?action=advSerachBonuces',
        type: 'POST',
        data: 'name=' + name + '&advCustomerBonuceSurnameId=' + advCustomerBonuceSurnameId + '&advCustomerBonuceEmailId=' + advCustomerBonuceEmailId 
        + '&advBonucNameId=' + advBonucNameId + '&advBonucQuontityMin=' + advBonucQuontityMin + '&advBonucQuontityMax=' + advBonucQuontityMax + 
        '&advOpenBonuceDatebegin=' + advOpenBonuceDatebegin+'&advOpenBonuceDateEnd='+advOpenBonuceDateEnd+'&advBonuceActiveSearch='+advBonuceActiveSearch,
        dataType: 'html',
        success: function (data) {
            $('#showBonuceList').html(data);
        }
    });
};
//E N D   S E A R C H    A R E A

//S E N D    M A I L

function sendMailCustomer(index) {
    globId = index;
    $('#sendMailModalDiv').load('views/sendmail.jsp',function () {
        $('#sendMailModalDiv').modal('show');
        $('#inputScreet').val(globId);
    });
    
    
};

//E N D    S E N D    M A I L


// O R D E R    BY 
function customerGroupBy() {
    $.ajax({
        url:'cs?action=customerGroupBy',
        type:'GET',
        dataType:'html',
        success:function (data) {
    $('#showCustomerListGroupBydiv').html(data);
           
        }
    });
};

function orderedGroupBy() {
    $.ajax({
        url:'cs?action=orderedGroupBy',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#showOrderedListGroupBydiv').html(data);

        }
    });
};

function productGroupBy() {
    $.ajax({
        url:'cs?action=productGroupBy',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#showProductListGroupBydiv').html(data);

        }
    });
};

function bonuceGroupBy() {
    $.ajax({
        url:'cs?action=bonuceGroupBy',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#showBonuceListGroupBydiv').html(data);

        }
    });
};

function forDeliveryDateOrderedGroupBy() {
    $.ajax({
        url:'cs?action=forDeliveryDateOrderedGroupBy',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#showOrderedListDeliveryDateGroupBydiv').html(data);

        }
    });
};

// E N D   G R O U P      BY 
// C H E C K    B O X
function insertCheckBox() {
    $.ajax({
        url:'cs?action=insertCheckBox',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#insertCheckBox').html(data);
        }
    });
};

//E N D   C H E C K    B O X

function editCombo(index) {
    $.ajax({
        url:'cs?action=insertCheckBox',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#productCategoryTextId').html(data);
            $('#productCategoryTextId').val(index);
        }
    });
};


function sc() {
    // alwaysRunning(); //Thread
    // sendMailOldUsers(); //Thread
    $('#advSearchLoadDiv').load("views/accardion.jsp");
    $('#showCustomersListButtonId').click(function () {
        getCustomerList();
        $('#showCustomerListdiv').show();
        $('#showOrderedListdiv').hide();
        $('#showProductList').hide();
        $('#showBonuceList').hide();
        $('#showCustomerListGroupBydiv').hide();
        $('#showOrderedListGroupBydiv').hide();
        $('#showProductListGroupBydiv').hide();
        $('#showBonuceListGroupBydiv').hide();
        $('#showOrderedListDeliveryDateGroupBydiv').hide();
        $('#orderByDeliveryDate').hide();
        
    });

    $('#showOrderedListButtonId').click(function () {
        $('#showOrderedListdiv').show(); 
        $('#showCustomerListdiv').hide();
        $('#showProductList').hide();
        $('#showBonuceList').hide();
        $('#showCustomerListGroupBydiv').hide();
        $('#showOrderedListGroupBydiv').hide();
        $('#showProductListGroupBydiv').hide();
        $('#showBonuceListGroupBydiv').hide();
        $('#showOrderedListDeliveryDateGroupBydiv').hide();
        $('#orderByDeliveryDate').hide();
         getOrderedList();
    });

    $('#showProductsListButtonId').click(function () {
        $('#showProductList').show();
        $('#showOrderedListdiv').hide();
        $('#showCustomerListdiv').hide();
        $('#showBonuceList').hide();
        $('#showCustomerListGroupBydiv').hide();
        $('#showOrderedListGroupBydiv').hide();
        $('#showProductListGroupBydiv').hide();
        $('#showBonuceListGroupBydiv').hide();
        $('#showOrderedListDeliveryDateGroupBydiv').hide();
        $('#orderByDeliveryDate').hide();
        getProductList();
    });

    $('#showBonuceListButtonId').click(function () {
        $('#showBonuceList').show();
        $('#showOrderedListdiv').hide();
        $('#showCustomerListdiv').hide();
        $('#showProductList').hide();
        $('#showCustomerListGroupBydiv').hide();
        $('#showOrderedListGroupBydiv').hide();
        $('#showProductListGroupBydiv').hide();
        $('#showBonuceListGroupBydiv').hide();
        $('#showOrderedListDeliveryDateGroupBydiv').hide();
        $('#orderByDeliveryDate').hide();
        getBonuceList();
    });
    $('#sendAllMailButton').click(function () {
        $('#sendallUsersMailModalDiv').load("views/sendmailallusers.jsp",function () {
            $('#sendallUsersMailModalDiv').modal('show')
        });
    });
};
function dialogScriptModal() {
    $( "#customerModalDiv" ).dialog({
        resizable: false,
         autoOpen:false,
        title:'Edit Customer',
        height:350,
        width:500,
        modal: true,
        buttons: {
            "Update info": function() {
                updateCustomer();
                $( this ).dialog( "open" );
            },
            Cancel: function() {
                $( this ).dialog( "close" );
            }
        }
    });

    $( "#productModalDiv" ).dialog({
        resizable: false,
        autoOpen:false,
        title:'Edit Customer',
        height:580,
        width:500,
        modal: true,
        buttons: {
            "Update info": function() {
                updateProducts();
                $( this ).dialog( "open" );
            },
            Cancel: function() {
                $( this ).dialog( "close" );
            }
        }
    });

    $( "#bonuceModalDiv" ).dialog({
        resizable: false,
        autoOpen:false,
        title:'Edit Customer',
        height:580,
        width:500,
        modal: true,
        buttons: {
            "Update info": function() {
                updateBonuce();
                $( this ).dialog( "open" );
            },
            Cancel: function() {
                $( this ).dialog( "close" );
            }
        }
    });

    $( "#insertProductModalDiv" ).dialog({
        resizable: false,
        autoOpen:false,
        title:'Insert Customer',
        height:580,
        width:500,
        modal: true,
        buttons: {
            "Update info": function() {
                insertProduct();
                $( this ).dialog( "open" );
            },
            Cancel: function() {
                $( this ).dialog( "close" );
            }
        }
    });
};

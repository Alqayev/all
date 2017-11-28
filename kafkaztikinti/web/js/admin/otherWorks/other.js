var globId='';
function deleteVitraPr(kod) {
    $.ajax({
        url:'../../../cs?action=deleteVitraProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            select_V();
        })
    });
}

function serch_CodVitra() {
    $('#serachCod_vitra').keyup(function () {
        var kod=$('#serachCod_vitra').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+1+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                $('#vitraSearchContent').html(data);
                $('#vitraUpdate').show();
                $('#frankeSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#vitraInsert').hide();
                $('#vitraDelete').hide();
                $('#geberitSelect').hide();
            })
        })
    })
}

function checkedKod_vitra() {
    $('#vitraBtn_insert').click(function () {
        var kod=$('#vitraProducCod').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    $('#insertPicForm_vitra').submit();
                }else
                {
                    $('#fal_vitra').html(data);
                }

            })
        });
    });
}
// G E B E R I T
function checkedKod() {
    $('#geberitBtn_insert').click(function () {
        var kod=$('#geberitCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    $('#insertGeberitForm').submit();
                }else
                {
                    $('#fal').html(data);
                }

            })
        });
    });
}

function serch_CodGeberit() {
    $('#serachCod_geb').keyup(function () {
        var kod=$('#serachCod_geb').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+4+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                $('#geberitContentId').html(data);
                $('#geberitSelect').show();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}

function deleteGeberitPr(kod) {
    $.ajax({
        url:'../../../cs?action=deleteGeberitProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            select_G();
        })
    });
}

function editGeberitPr(kod) {
    globId=kod;
    $.ajax({
        url:'../../../cs?action=editGeberitProduct',
        method:'POST',
        data:'update='+kod,
        dataType:'html',
        success:(function (data) {
            $('#geberitEdit').html(data);
            $('#geberitEdit').modal('show');
        })
    });
}

                            // H A N S G R O H E
function checkedKodHansgroheInsert() {
    $('#hansgroheBtn_insert').click(function () {
        var kod=$('#hansgroheCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    $('#insertHansgroheForm').submit();
                }else
                {
                    $('#fal1').html(data);
                }

            })
        });
    });
}

function deleteHansgrohePr(kod) {
    $.ajax({
        url:'../../../cs?action=deleteHansgroheProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            select_H();
        })
    });
}

function editHansgrohePr(kod) {
    globId=kod;
    $.ajax({
        url:'../../../cs?action=editHannsgroheProduct',
        method:'POST',
        data:'update='+kod,
        dataType:'html',
        success:(function (data) {
            $('#hansgroheEdit').html(data);
            $('#hansgroheEdit').modal('show');
        })
    });
}
function serch_CodHansgrohe() {
    $('#serachCod_h').keyup(function () {
        var kod=$('#serachCod_h').val();

        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+3+'&sub1='+6,
            dataType:'html',
            success:(function (data) {
                $('#hansgroheContentId').html(data);
                $('#hansgroheSelect').show();
                $('#frankeSelect').hide();
                $('#geberitSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}

                                                // A X O R
function checkedKodAxorInsert() {
    $('#axorBtn_insert').click(function () {

        var ch=$('#sub2id_Axor').val();
        var kod=$('#axorCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'&&ch!=0){
                    $('#insertAxorForm').submit();
                }else
                {
                    if (ch==0){
                        $('#chsecValAxor').html('Axor çeşitleri boş geçilemez');
                    }else{
                        $('#fal_A').html(data);
                    }

                }

            })
        });
    });
}

function deleteAxorPr(kod) {
    $.ajax({
        url:'../../../cs?action=deleteAxorProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            select_Ax();
        })
    });
}

function editAxorPr(kod) {
    globId=kod;
    $.ajax({
        url:'../../../cs?action=editAxorProduct',
        method:'POST',
        data:'update='+kod,
        dataType:'html',
        success:(function (data) {
            $('#AxorEdit').html(data);
            $('#AxorEdit').modal('show');
        })
    });
}

function serch_CodAxor() {
    $('#serachCod_Ax').keyup(function () {
        var kod=$('#serachCod_Ax').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+3+'&sub1='+7,
            dataType:'html',
            success:(function (data) {
                $('#contentAxor_search').html(data);
                $('#AxorSelect').show();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();

            })
        })
    })
}

                // F R A N K E    M A R K A S I

function checkedKodFr() {
    $('#frankeBtn_insert').click(function () {
        var kod=$('#frankeCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    $('#insertFrankeForm').submit();
                }else
                {
                    $('#fal_franke').html(data);
                }

            })
        });
    });
}

function deleteFrankePr(kod) {
    $.ajax({
        url:'../../../cs?action=deleteGeberitProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            select_Fr();
        })
    });
}


function editFrankePr(kod) {
    globId=kod;
    $.ajax({
        url:'../../../cs?action=editFrankeProduct',
        method:'POST',
        data:'update='+kod,
        dataType:'html',
        success:(function (data) {
            $('#frankeEdit').html(data);
            $('#frankeEdit').modal('show');
        })
    });
}

function serch_CodFranke() {
    $('#serachCod_franke').keyup(function () {
        var kod=$('#serachCod_franke').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+5+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                alert(data)
                $('#frankeContentId').html(data);
                $('#frankeSelect').show();
                $('#geberitSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}

function checkedKodForTeuco() {
    $('#teucoBtn_insert').click(function () {
        var kod=$('#teucoCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    $('#insertTeucoForm').submit();
                }else
                {
                    $('#fal_teuco').html(data);
                }

            })
        });
    });
}


//    T O P 10 KATEGORY

function deleteTop10Pr(kod,del) {
    $.ajax({
        url:'../../../cs?action=deleteGeberitProduct',
        method:'POST',
        data:'delete='+kod,
        dataType:'html',
        success:(function () {
            if(del==6){
                select_Te();
            }
             if(del==7){
                select_Fap();
            }
            if(del>7){
                select_otherProduct(del);
            }


        })
    });
}

function editTop10Pr(kod,topId) {
    globId=kod;
    // alert(kod+'- '+topId)
    $.ajax({
        url:'../../../cs?action=editTop10Product',
        method:'POST',
        data:'update='+kod+'&topId='+topId,
        dataType:'html',
        success:(function (data) {
            if (topId==6){
                $('#teucoEdit').html(data);
                $('#teucoEdit').modal('show');
            }
            if (topId==7){
                $('#frankeEdit').html(data);
                $('#frankeEdit').modal('show');
            }
            if(topId>7){
                $('#otherProductEdit').html(data);
                $('#otherProductEdit').modal('show');
            }

        })
    });
}




function serch_CodTeuco() {
    $('#serachCod_teuco').keyup(function () {
        var kod=$('#serachCod_teuco').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+6+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                // alert(data)
                $('#teucoContentId').html(data);
                $('#geberitSelect').hide();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}

function serch_CodFap() {
    $('#serachCod_fap').keyup(function () {
        var kod=$('#serachCod_fap').val();
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+7+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                // alert(data)
                $('#fapContentId').html(data);
                $('#geberitSelect').hide();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}


//F A P   M A R K A S I
function checkedKodFapInsert() {
    $('#fapBtn_insert').click(function () {
        var kod=$('#fapCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'){
                    // alert('d')
                    $('#insertFapForm').submit();
                }else
                {
                    $('#fal1_fap').html(data);
                }

            })
        });
    });
}


function checkedKodOtherInsert() {
    $('#otherCodBtn_insert').click(function () {

        var ch=$('#topId_OtherProduct').val();
        var kod=$('#otherCod_insert').val();
        $.ajax({
            url:'../../../cs?action=checkedGeberitCodForInsert',
            method:'POST',
            data:'kod='+kod,
            dataType:'html',
            success:(function (data) {
                var checkd=data;
                if(checkd.trim()=='null'&&ch!=0){
                    $('#insertOtherProductForm').submit();
                }else
                {
                    if (ch==0){
                        $('#chsecValotherCod').html('Axor çeşitleri boş geçilemez');
                    }if(ch!=0){
                    $('#chsecValotherCod').html('')
                    $('#otherProduct').html(data);
                }

                }

            })
        });
    });
}


function serch_CodOtherProduct(index) {
    $('#serachCod_otherPrds').keyup(function () {
        var kod=$('#serachCod_otherPrds').val();
        // alert(index)
        $.ajax({
            url:'../../../cs?action=selectProductBy_Cod',
            method:'POST',
            data:'kod='+kod+'&id='+index+'&sub1='+0,
            dataType:'html',
            success:(function (data) {
                $('#selectOtherProduct_con').html(data);
                $('#fapSelect').hide();
                $('#geberitSelect').hide();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        })
    })
}

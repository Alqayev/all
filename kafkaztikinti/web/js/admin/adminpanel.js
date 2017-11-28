var globSelectOperating = 0;
function selectOperating(id) {
    if (id == 1) {
        $('#infoOperating').html('Product siyahisi üzərində dəyişiklik edəcəksiniz');
        globSelectOperating = id;
    }
    else if (id == 2) {
        $('#infoOperating').html('Siz Daxiletmə Əməliyyati yerinə yetirəcəksiniz');
        globSelectOperating = id;
    }
    else if (id == 3) {
        $('#infoOperating').html('Siz silmə Əməliyyati yerinə yetirəcəksiniz');
        globSelectOperating = id;
    }
    else if (id == 4) {
        $('#infoOperating').html('Product siyahisi göstəriləcək');
        globSelectOperating = id;
    }
    else {
        alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
    }
}

function vitraControlProduct() {
    $('#vitraAdmin').click(function () {
        if (globSelectOperating == 1) {
            $('#vitraUpdate').load("../content/_content_vitra_update.jsp",function () {
                $('#vitraUpdate').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#vitraSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#vitraInsert').hide();
                $('#vitraDelete').hide();
                $('#geberitSelect').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#vitraInsert').load("../content/_content_vitra_insert.jsp",function () {
                $('#vitraInsert').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraUpdate').hide();
                $('#AxorSelect').hide();
                $('#vitraDelete').hide();
                $('#geberitSelect').hide();
                $('#hansgroheSelect').hide();

            })
        }
        else if (globSelectOperating == 3) {
            $('#vitraDelete').load("../content/_content_vitra_delete.jsp",function () {
                $('#vitraDelete').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#vitraSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
                $('#geberitSelect').hide();
                $('#hansgroheSelect').hide();

            })
        }
        else if (globSelectOperating == 4) {
            $('#vitraSelect').load("../content/_content_vitra_select.jsp",function () {
                $('#vitraSelect').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#vitraDelete').hide();
                $('#AxorSelect').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
                $('#geberitSelect').hide();
                $('#hansgroheSelect').hide();
            })
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function duravitControlProduct() {
    $('#DuravitAdmin').click(function () {
        if (globSelectOperating == 1) {
            alert('daxil edildi');
        }
        else if (globSelectOperating == 2) {
            alert('update edildi');
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function hansgroheControlProduct() {
    $('#HansgroheAdmin').click(function () {
        if (globSelectOperating == 4) {
            $('#hansgroheSelect').load("../content/_content_hansgrohe_select.jsp",function () {
                $('#hansgroheSelect').show();
                $('#otherProductSelect').hide();
                $('#teucoSelect').hide();
                $('#fapSelect').hide();
                $('#frankeSelect').hide();
                $('#geberitSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#hansgroheInsert').load("../modal/modal_Hansgrohe_insert.jsp",function () {
                $('#hansgroheInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}

function axorControlProduct() {
    $('#AxorAdmin').click(function () {
        // alert('ko')
        if (globSelectOperating == 4) {
            $('#AxorSelect').load("../content/_content_axor_select.jsp",function () {
                $('#AxorSelect').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#AxorInsert').load("../modal/modal_Axor_insert.jsp",function () {
                $('#AxorInsert').modal('show');
            });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}

function geberitControlProduct() {
    $('#geberitAdmin').click(function () {
        // alert('ok')
        if (globSelectOperating == 4) {

            $('#geberitSelect').load("../content/_content_geberit_select.jsp",function () {
                $('#geberitSelect').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#hansgroheSelect').hide();
                $('#AxorSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            // alert('iki')
                $('#geberitInsert').load("../modal/modal_Geberit_insert.jsp",function () {
                    $('#geberitInsert').modal('show');
                });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Product Daxil et');
        }
    });
}

function farnkeControlProduct() {
    $('#frankeAdmin').click(function () {
        if (globSelectOperating == 4) {
            $('#frankeSelect').load("../content/_content_franke_select.jsp",function () {
                $('#frankeSelect').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#frankeInsert').load("../modal/modal_Franke_insert.jsp",function () {
                $('#frankeInsert').modal('show');
            });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}

function teucoControlProduct() {
    $('#teucoAdmin').click(function () {
        if (globSelectOperating == 4) {
            $('#frankeSelect').load("../content/_content_teuco_select.jsp",function () {
                $('#teucoSelect').show();
                $('#otherProductSelect').hide();
                $('#fapSelect').hide();
                $('#frankeSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#teucoInsert').load("../modal/modal_Teuco_insert.jsp",function () {
                $('#teucoInsert').modal('show');
            });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}


function fapControlProduct() {
    $('#fapAdmin').click(function () {
        if (globSelectOperating == 4) {
            $('#fapSelect').load("../content/_content_fap_select.jsp",function () {
                $('#fapSelect').show();
                $('#otherProductSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();
            })
        }
        else if (globSelectOperating == 2) {
            $('#fapInsert').load("../modal/modal_Fap_insert.jsp",function () {
                $('#fapInsert').modal('show');
            });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}

function seutoControlProduct() {
    $('#setaAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('9');
                $('#otherProductSelect').show();
                $('#fapSelect').hide();
                $('#teucoSelect').hide();
                $('#frankeSelect').hide();
                $('#AxorSelect').hide();
                $('#hansgroheSelect').hide();
                $('#geberitSelect').hide();
                $('#vitraSelect').hide();
                $('#vitraDelete').hide();
                $('#vitraUpdate').hide();
                $('#vitraInsert').hide();

        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function dysonControlProduct() {
    $('#dysonAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('8');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });

        }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər , Product Daxil et');
        }
    });
}

function devonControlProduct() {
    $('#DevonAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('10');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function schluterControlProduct() {
    $('#SchluterAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('11');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}


function burgbadControlProduct() {
    $('#BurgbadAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('12');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function eurodesignControlProduct() {
    $('#EurodesignAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('13');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function oazisControlProduct() {
    $('#OazisAdmin').click(function () {
        if (globSelectOperating == 4) {
            // alert('i')
            select_otherProduct('15');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}

function toscecuatroControlProduct() {
    $('#ToscecuatroAdmin').click(function () {
        if (globSelectOperating == 4) {
            select_otherProduct('14');
            $('#otherProductSelect').show();
            $('#fapSelect').hide();
            $('#teucoSelect').hide();
            $('#frankeSelect').hide();
            $('#AxorSelect').hide();
            $('#hansgroheSelect').hide();
            $('#geberitSelect').hide();
            $('#vitraSelect').hide();
            $('#vitraDelete').hide();
            $('#vitraUpdate').hide();
            $('#vitraInsert').hide();
        }
        else if (globSelectOperating == 2) {
            $('#otherProductInsert').load("../modal/modal_OtherProduct_insert.jsp",function () {
                $('#otherProductInsert').modal('show');
            });
        }
        // else if (globSelectOperating == 3) {
        //     alert('delete edildi');
        // }
        else {
            alert('Seçə biləcəyiniz əməliyatlat : Product göstər ,Praducta düzəliş et, Product Daxil et,Product sil');
        }
    });
}


function select_otherProduct(topId) {
    // alert('ok')
    $.ajax({
        url:'../../../cs?action=select_Top10Product',
        method:'GET',
        data:'topId='+topId,
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#otherProductSelect').html(data);
            serch_CodOtherProduct(topId);
        })
    });
}




function loadSeriSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seriCesitleri').html(data);
        })
    })
}

function loadRenkSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadRenkSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#renkCesitleri').html(data);
        })
    })
}

function loadEbatSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadEbatSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#ebatCesitleri').html(data);
        })
    })
}

function loadGenislikSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadGenislikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#genislikCesitleri').html(data);
        })
    })
}

function loadDerinlikSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadDerinlikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#derinlikCesitleri').html(data);
        })
    })
}

function loadYukseklikSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadYukseklikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#yukseklikCesitleri').html(data);
        })
    })
}

function loadMontajTipiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadMontajTipiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#montajTipiCesitleri').html(data);
        })
    })
}

function loadBaglantiTipiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadBaglantiTipiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#baglantiTipiCesitleri').html(data);
        })
    })
}

function loadYikamaSeceneyiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadYikamaSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#yikamaSeceneyiCesitleri').html(data);
        })
    })
}

function hidronasajSeceneyiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadhisromasajSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#hidromasajSeceneyiCesitleri').html(data);
        })
    })
}

function uygulamaSeceneyiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loaduygulamaSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#uygulamaSeceneyiCesitleri').html(data);
        })
    })
}

function kapakTasarimiSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadKapakTasarimiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#kapakTasarimiCesitleri').html(data);
        })
    })
}

function seramikBanyoLavaboSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadseramikBanyoLavaboSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikBanyoLavaboCesitleri').html(data);
        })
    })
}

function seramikBanyoKlozetSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadseramikBanyoKlozetSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikBanyoKlozetCesitleri').html(data);
        })
    })
}

function seramikTamamlayiciUrunSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadseramikTamamlayiciUrunSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikTamamlayiciUrunlerCesitleri').html(data);
        })
    })
}

function seramikYasliBedenselEngelliUrunSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadseramikYasliBedenselEngelliUrunSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikYasliBedenselEngelliUrunlerCesitleri').html(data);
        })
    })
}

function seramikArtemaAksesuarlarSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadseramikArtemaAksesuarlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikArtemaAksesuarlarCesitleri').html(data);
        })
    })
}

function sub3ArmaturlarSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadsub3ArmaturlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub3Armaturlar').html(data);
        })
    })
}

function sub3AksesuarlarSelectBox() {
    $.ajax({
        url:'../../../cs?action=loadsub3AksesuarlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub3Aksesuarlar').html(data);
        })
    })
}


//   E D I T        L O A D     S E L E C T  B O X


function loadSeriSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seriCesitleri_edit').html(data);
        })
    })
}

function loadRenkSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadRenkSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#renkCesitleri_edit').html(data);
        })
    })
}

function loadEbatSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadEbatSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#ebatCesitleri_edit').html(data);
        })
    })
}

function loadGenislikSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadGenislikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#genislikCesitleri_edit').html(data);
        })
    })
}

function loadDerinlikSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadDerinlikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#derinlikCesitleri_edit').html(data);
        })
    })
}

function loadYukseklikSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadYukseklikSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#yukseklikCesitleri_edit').html(data);
        })
    })
}

function loadMontajTipiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadMontajTipiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#montajTipiCesitleri_edit').html(data);
        })
    })
}

function loadBaglantiTipiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadBaglantiTipiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#baglantiTipiCesitleri_edit').html(data);
        })
    })
}

function loadYikamaSeceneyiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadYikamaSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#yikamaSeceneyiCesitleri_edit').html(data);
        })
    })
}

function hidronasajSeceneyiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadhisromasajSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#hidromasajSeceneyiCesitleri_edit').html(data);
        })
    })
}

function uygulamaSeceneyiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loaduygulamaSeceneyiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#uygulamaSeceneyiCesitleri_edit').html(data);
        })
    })
}

function kapakTasarimiSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadKapakTasarimiSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#kapakTasarimiCesitleri_edit').html(data);
        })
    })
}

function seramikBanyoLavaboSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadseramikBanyoLavaboSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikBanyoLavaboCesitleri_edit').html(data);
        })
    })
}

function seramikBanyoKlozetSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadseramikBanyoKlozetSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikBanyoKlozetCesitleri_edit').html(data);
        })
    })
}

function seramikTamamlayiciUrunSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadseramikTamamlayiciUrunSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikTamamlayiciUrunlerCesitleri_edit').html(data);
        })
    })
}

function seramikYasliBedenselEngelliUrunSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadseramikYasliBedenselEngelliUrunSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').html(data);
        })
    })
}

function seramikArtemaAksesuarlarSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadseramikArtemaAksesuarlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#seramikArtemaAksesuarlarCesitleri_edit').html(data);
        })
    })
}

function sub3ArmaturlarSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadsub3ArmaturlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub3Armaturlar_edit').html(data);
        })
    })
}

function sub3AksesuarlarSelectBox_edit() {
    $.ajax({
        url:'../../../cs?action=loadsub3AksesuarlarSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub3Aksesuarlar_edit').html(data);
        })
    })
}

//  G E B R I T     S E L E C T    B O X

function loadgeberitCategory() {
    $.ajax({
        url:'../../../cs?action=loadsub1GeberitSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub1id_Geberit').html(data);
        })
    })
}
function loadgeberitFotoselliSistemlerOptgroupCategory() {
    $.ajax({
        url:'../../../cs?action=loadsub2GeberitFotoSelliSistemlerSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#fotoselliSistemlerOptgroup').html(data);
        })
    })
}
function loadgeberitkonstruksiyonMontajElemanlariOptGrpCategory() {
    $.ajax({
        url:'../../../cs?action=loadsub2GeberitkonstruksiyonMontajElemanlariOptGrpSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#konstruksiyonMontajElemanlariOptGrp').html(data);
        })
    })
}

function loadgeberitCategory_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadsub1GeberitSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub1id_Geberit_edit').html(data);
            $('#sub1id_Geberit_edit').val(index);
        })
    })
}

function loadgeberitFotoselliSistemlerOptgroupCategory_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadsub2GeberitFotoSelliSistemlerSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#fotoselliSistemlerOptgroup_edit').html(data);
            $('#sub2_id_edit').val(index);
        })
    })
}
function loadgeberitkonstruksiyonMontajElemanlariOptGrpCategory_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadsub2GeberitkonstruksiyonMontajElemanlariOptGrpSelectBox',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#konstruksiyonMontajElemanlariOptGrp_edit').html(data);
            $('#sub2_id_edit').val(index);

        })
    })
}


//    H A N S G R O H E    M A R K A S I

function loadHansgroheSub2Category() {
    $.ajax({
        url:'../../../cs?action=loadHansgroheSub2Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#sub2id_Hansgrohe').html(data);
            // $('#sub2_id_edit').val(index);

        })
    })
}

function loadHansgroheTalisOptGrpCategory() {
    $.ajax({
        url:'../../../cs?action=loadHansgroheTalisOptGrpCategory',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#talisCategory').html(data);
        })
    })
}


function loadHansgroheSub2Category_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadHansgroheSub2Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#sub2id_Hansgrohe_edit').html(data);
            $('#sub2id_Hansgrohe_edit').val(index);

        })
    })
}

function loadHansgroheTalisOptGrpCategory_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadHansgroheTalisOptGrpCategory',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#talisCategory_edit').html(data);
            $('#hansgroheSub3_id_edit').val(index);

        })
    })
}

//    A X O R    M A R K A S I

function loadAxorSub2Category() {
    $.ajax({
        url:'../../../cs?action=loadAxorSub2Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#sub2id_Axor').html(data);
            // $('#sub2_id_edit').val(index);

        })
    })
}

function loadAxorAccessoriesOptGrpCategory() {
    $.ajax({
        url:'../../../cs?action=loadAxorAccessoriesOptGrpCategory',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#accessoriesCategoryAxor').html(data);
        })
    })
}


function loadAxorSub2Category_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadAxorSub2Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            // alert(data)
            $('#sub2id_Axor_update').html(data);
            $('#sub2id_Axor_update').val(index);

        })
    })
}

function loadAxorAccessoriesOptGrpCategory_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadAxorAccessoriesOptGrpCategory',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#accessoriesCategoryAxor_update').html(data);
            $('#axorSub3_id_update').val(index);
        })
    })
}


//    A X O R    M A R K A S I

function loadFrankeSub1Category() {
    $.ajax({
        url:'../../../cs?action=loadFrankeSub1Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub1id_Franke').html(data);

        })
    })
}

function loadFrankeSub1Category_edit(index) {
    $.ajax({
        url:'../../../cs?action=loadFrankeSub1Category',
        method:'GET',
        dataType:'html',
        success:(function (data) {
            $('#sub1id_Franke_edit').html(data);
            $('#sub1id_Franke_edit').val(index);
        })
    })
}



//    F A P   M A R K A S I
function loadTop10Sub2Category(index) {
    $.ajax({
        url:'../../../cs?action=loadTop10Sub2Category',
        method:'GET',
        data:'sub2='+index,
        dataType:'html',
        success:(function (data) {

            if(index==61){
                $('#pastabyankaOptGrp').html(data);
            }
            if(index==62){
                $('#atelyer').html(data);
            }
            if(index==63){
                $('#pavimente').html(data);
            }

        })
    })
}
function loadTop10Sub2Category_edit(index,val) {
    $.ajax({
        url:'../../../cs?action=loadTop10Sub2Category',
        method:'GET',
        data:'sub2='+index,
        dataType:'html',
        success:(function (data) {

            if(index==61){
                $('#pastabyankaOptGrp_edit').html(data);
            }
            if(index==62){
                $('#atelyer_edit').html(data);
            }
            if(index==63){
                $('#pavimente_edit').html(data);
            }
            $('#fapSub2_id_edit').val(val);

        })
    })
}

var globSub3=0;
function chooseSelectVal() {

    var vitraAdmin=$('#vitraUrun').val();
    // $('#sub2Table').val(0);
    if(vitraAdmin==1){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        $('#seramikBanyoCesitleri').attr('disabled',false);
        $('#banyoMobilyasiCesitleri').attr('disabled',true);
        $('#armaturlerDusSistemleriCesitleri').attr('disabled',true);
        $('#yikanmaAlanlariCesitleri').attr('disabled',true);
        $('#gommeRezervuarlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#sub3BanyoMobilyasi').hide();
        $('#sub3ArmaturlerDusSistemleri').hide();
        $('#sub3YikanmaAlanlari').hide();
        $('#sub3GommeRezervuar').hide();
        $('#sub3').show();
    }
    else if(vitraAdmin==2){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        $('#banyoMobilyasiCesitleri').attr('disabled',false);
        $('#seramikBanyoCesitleri').attr('disabled',true);
        $('#armaturlerDusSistemleriCesitleri').attr('disabled',true);
        $('#yikanmaAlanlariCesitleri').attr('disabled',true);
        $('#gommeRezervuarlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#sub3').hide();
        $('#sub3ArmaturlerDusSistemleri').hide();
        $('#sub3YikanmaAlanlari').hide();
        $('#sub3GommeRezervuar').hide();
        $('#sub3BanyoMobilyasi').show();
    }
    else if(vitraAdmin==3){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        $('#armaturlerDusSistemleriCesitleri').attr('disabled',false);
        $('#seramikBanyoCesitleri').attr('disabled',true);
        $('#banyoMobilyasiCesitleri').attr('disabled',true);
        $('#yikanmaAlanlariCesitleri').attr('disabled',true);
        $('#gommeRezervuarlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');



        $('#sub3').hide();
        $('#sub3BanyoMobilyasi').hide();
        $('#sub3YikanmaAlanlari').hide();
        $('#sub3GommeRezervuar').hide();
        $('#sub3ArmaturlerDusSistemleri').show();
    }
    else if(vitraAdmin==4){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        $('#yikanmaAlanlariCesitleri').attr('disabled',false);
        $('#seramikBanyoCesitleri').attr('disabled',true);
        $('#banyoMobilyasiCesitleri').attr('disabled',true);
        $('#armaturlerDusSistemleriCesitleri').attr('disabled',true);
        $('#gommeRezervuarlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);


        $('#sub3').hide();
        $('#sub3BanyoMobilyasi').hide();
        $('#sub3ArmaturlerDusSistemleri').hide();
        $('#sub3GommeRezervuar').hide();
        $('#sub3YikanmaAlanlari').show();
    }
    else if(vitraAdmin==5){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        $('#gommeRezervuarlariCesitleri').attr('disabled',false);
        $('#seramikBanyoCesitleri').attr('disabled',true);
        $('#banyoMobilyasiCesitleri').attr('disabled',true);
        $('#armaturlerDusSistemleriCesitleri').attr('disabled',true);
        $('#yikanmaAlanlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#sub3').hide();
        $('#sub3BanyoMobilyasi').hide();
        $('#sub3ArmaturlerDusSistemleri').hide();
        $('#sub3YikanmaAlanlari').hide();
        $('#sub3GommeRezervuar').show();

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');


    }
    else{
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);

        alert('Zəhmət olmasa ürün seçin');
        $('#seramikBanyoCesitleri').attr('disabled',true);
        $('#banyoMobilyasiCesitleri').attr('disabled',true);
        $('#armaturlerDusSistemleriCesitleri').attr('disabled',true);
        $('#yikanmaAlanlariCesitleri').attr('disabled',true);
        $('#gommeRezervuarlariCesitleri').attr('disabled',true);

        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);
        $('#seramikBanyoCesitleri').val(0);
        $('#armaturlerDusSistemleriCesitleri').val(0);
        $('#yikanmaAlanlariCesitleri').val(0);
        $('#gommeRezervuarlariCesitleri').val(0);

        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');

        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');


        $('#sub3').hide();
        $('#sub3BanyoMobilyasi').hide();
        $('#sub3ArmaturlerDusSistemleri').hide();
        $('#sub3YikanmaAlanlari').hide();
        $('#sub3GommeRezervuar').hide();
    }
}

//    S U B 2   T A B L E   C O N T R O L

function chooseSub3TableSelectVal() {
    var vitraAdmin=$('#seramikBanyoCesitleri').val();
    if(vitraAdmin==1){
        $('#lavobaLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikBanyoLavaboCesitleri').attr('disabled',false);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==2){
        $('#klozetLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikBanyoKlozetCesitleri').attr('disabled',false);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==3){
        $('#pisuvarLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',false);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);

    }
    else if(vitraAdmin==4){

        $('#dusteknesiLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikDusteknesiCesitleri').attr('disabled',false);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==5){
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==6){
        $('#bideLabel').css('color','red');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#seramikBideCesitleri').attr('disabled',false);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==7){
        $('#tamamlayiciLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',false);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==8){
        $('#yasVeBedLabel').css('color','red');
        $('#artemaLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',false);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else if(vitraAdmin==9){
        $('#artemaLabel').css('color','red');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#bideLabel').css('color','#4cae4c');
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',false);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');

        $('#banyoMobilyasiCesitleri').val(0);

        $('#sub2Table').val(vitraAdmin);
    }
    else{
        $('#artemaLabel').css('color','#4cae4c');
        $('#yasVeBedLabel').css('color','#4cae4c');
        $('#tamamlayiciLabel').css('color','#4cae4c');
        $('#dusteknesiLabel').css('color','#4cae4c');
        $('#pisuvarLabel').css('color','#4cae4c');
        $('#klozetLabel').css('color','#4cae4c');
        $('#lavobaLabel').css('color','#4cae4c');
        $('#seramikArtemaAksesuarlarCesitleri').attr('disabled',true);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri').attr('disabled',true);
        $('#seramikTamamlayiciUrunlerCesitleri').attr('disabled',true);
        $('#seramikBideCesitleri').attr('disabled',true);
        $('#seramikDusteknesiCesitleri').attr('disabled',true);
        $('#seramikBanyoPisuvarCesitleri').attr('disabled',true);
        $('#seramikBanyoKlozetCesitleri').attr('disabled',true);
        $('#seramikBanyoLavaboCesitleri').attr('disabled',true);

        $('#banyoMobilyasiCesitleri').val(0);

        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');
    }
}

function chooseSub3TableBanyoMobilyasiSelectVal() {
    var vitraAdmin=$('#banyoMobilyasiCesitleri').val();
    if(vitraAdmin==15){
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',false);
        $('#banyoMobLabel').css('color','red');
    }else{
        $('#banyoMobilyasiYamamlayiciUrunler').attr('disabled',true);
        $('#banyoMobLabel').css('color','#4cae4c');
    }
    if(vitraAdmin!=0){
        $('#sub2Table').val(vitraAdmin);
    }
}

function chooseSub3TableArmaturlarDusSistemleri() {
    var vitraAdmin=$('#armaturlerDusSistemleriCesitleri').val();
    if(vitraAdmin==18){
        $('#sub3Armaturlar').attr('disabled',false);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);

        $('#armaturleLabel').css('color','red');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');
        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
    }
    else if(vitraAdmin==19){
        $('#sub3DusSistemleri').attr('disabled',false);
        $('#sub3Armaturlar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);

        $('#dussistemleriLabel').css('color','red');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');
        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
    }else if(vitraAdmin==20){
        $('#sub3Aksesuarlar').attr('disabled',false);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);
        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);

        $('#aksesuarlarLabel').css('color','red');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
    }else if(vitraAdmin==21){
        $('#sub3ArmaturTamamlayicilar').attr('disabled',false);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','red');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');
    }
    else{
        $('#sub3ArmaturTamamlayicilar').attr('disabled',true);
        $('#sub3Aksesuarlar').attr('disabled',true);
        $('#sub3DusSistemleri').attr('disabled',true);
        $('#sub3Armaturlar').attr('disabled',true);

        $('#armaturTamamlayiciLabel').css('color','#4cae4c');
        $('#armaturleLabel').css('color','#4cae4c');
        $('#dussistemleriLabel').css('color','#4cae4c');
        $('#aksesuarlarLabel').css('color','#4cae4c');
    }
    if(vitraAdmin!=0){
        $('#sub2Table').val(vitraAdmin);
    }
}

function chooseSub3YikamaAlaniSeceneyi() {
    var vitraAdmin=$('#yikanmaAlanlariCesitleri').val();

    if(vitraAdmin==22){

        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');


        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);

    }
    else if(vitraAdmin==23){
        $('#baharliasajliLabel').css('color','red');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3BuharliMasajliUniteler').attr('disabled',false);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);


    }
    else if(vitraAdmin==24){
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
    }
    else if(vitraAdmin==25){
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','red');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3Kuvetler').attr('disabled',false);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
    }
    else if(vitraAdmin==26){
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','red');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3DusTekneleri').attr('disabled',false);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
    }
    else if(vitraAdmin==27){
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','red');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3VflowDusKanallari').attr('disabled',false);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
    }
    else if(vitraAdmin==28){
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','red');

        $('#sub3ArtemaDusSistemleri').attr('disabled',false);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);

    }
    else {
        $('#baharliasajliLabel').css('color','#4cae4c');
        $('#kuvetlerLabel').css('color','#4cae4c');
        $('#dusTekneleriLabel').css('color','#4cae4c');
        $('#vflowDusKnLabel').css('color','#4cae4c');
        $('#artemaDusLabel').css('color','#4cae4c');

        $('#sub3ArtemaDusSistemleri').attr('disabled',true);
        $('#sub3DusTekneleri').attr('disabled',true);
        $('#sub3Kuvetler').attr('disabled',true);
        $('#sub3BuharliMasajliUniteler').attr('disabled',true);
        $('#sub3VflowDusKanallari').attr('disabled',true);
    }

    if(vitraAdmin!=0){
        $('#sub2Table').val(vitraAdmin);
    }
}

function chooseSub3GommeRezervuarlari() {
    var vitraAdmin = $('#gommeRezervuarlariCesitleri').val();

    if (vitraAdmin == 29) {
        $('#kumandaPanelleriLabel').css('color','red');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');

        $('#sub3KumandaPanelleri').attr('disabled',false);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);
        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
    }
    else if (vitraAdmin == 30) {
        $('#tugladuvarlaricinLabel').css('color','red');
        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',false);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);
    }
    else if (vitraAdmin == 31) {
        $('#alcipanDuvarlarIcinLabel').css('color','red');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',false);
    }else{
        $('#alcipanDuvarlarIcinLabel').css('color','#4cae4c');
        $('#tugladuvarlaricinLabel').css('color','#4cae4c');
        $('#kumandaPanelleriLabel').css('color','#4cae4c');

        $('#sub3TuglaDuvarlarIcin').attr('disabled',true);
        $('#sub3KumandaPanelleri').attr('disabled',true);
        $('#sub3AlcipanDuvarlarIcin').attr('disabled',true);
    }
    if(vitraAdmin!=0){
        $('#sub2Table').val(vitraAdmin);
    }
}

function sub3Value() {
    var lavVal=$('#seramikBanyoLavaboCesitleri').val();
    var lavKlozet=$('#seramikBanyoKlozetCesitleri').val();
    var lavPisuvar=$('#seramikBanyoPisuvarCesitleri').val();
    var lavYasliBedensel=$('#seramikYasliBedenselEngelliUrunlerCesitleri').val();
    var lavDusTek=$('#seramikDusteknesiCesitleri').val();
    var lavBide=$('#seramikBideCesitleri').val();
    var lavTamamlayici=$('#seramikTamamlayiciUrunlerCesitleri').val();
    var lavArtemaSer=$('#seramikArtemaAksesuarlarCesitleri').val();
    var lavBanyoMob=$('#banyoMobilyasiYamamlayiciUrunler').val();
    var lavSub3Armatur=$('#sub3Armaturlar').val();
    var lavSub3DusSis=$('#sub3DusSistemleri').val();
    var lavSub3Akses=$('#sub3Aksesuarlar').val();
    var lavSub3ArTamamlayici=$('#sub3ArmaturTamamlayicilar').val();
    var lavSub3BuharliMasUn=$('#sub3BuharliMasajliUniteler').val();
    var lavSub3Kuvetler=$('#sub3Kuvetler').val();
    var lavSub3DusTek=$('#sub3DusTekneleri').val();
    var lavsub3VflowDusKanallari=$('#sub3VflowDusKanallari').val();
    var lavsub3ArtemaDusSistemleri=$('#sub3ArtemaDusSistemleri').val();
    var lavsub3KumandaPanelleri=$('#sub3KumandaPanelleri').val();
    var lavsub3TuglaDuvarlarIcin=$('#sub3TuglaDuvarlarIcin').val();
    var lavsub3AlcipanDuvarlarIcin=$('#sub3AlcipanDuvarlarIcin').val();
    if(lavVal!=0){
        $('#sub3Table').val(lavVal);
    }
     if(lavKlozet!=0){
        $('#sub3Table').val(lavKlozet);
    }
     if(lavPisuvar!=0){
        $('#sub3Table').val(lavPisuvar);
    }
    if(lavSub3ArTamamlayici!=0){
        $('#sub3Table').val(lavSub3ArTamamlayici);
    }
     if(lavYasliBedensel!=0){
        $('#sub3Table').val(lavYasliBedensel);
    }
     if(lavDusTek!=0){
        $('#sub3Table').val(lavDusTek);
    }
     if(lavBide!=0){
        $('#sub3Table').val(lavBide);
    }
     if(lavTamamlayici!=0){
        $('#sub3Table').val(lavTamamlayici);
    }
     if(lavArtemaSer!=0){
        $('#sub3Table').val(lavArtemaSer);
    }
     if(lavBanyoMob!=0){
        $('#sub3Table').val(lavBanyoMob);
    }
     if(lavSub3Armatur!=0){
        $('#sub3Table').val(lavSub3Armatur);
    }
     if(lavSub3DusSis!=0){
        $('#sub3Table').val(lavSub3DusSis);
    }
     if(lavSub3Akses!=0){
        $('#sub3Table').val(lavSub3Akses);
    }
     if(lavSub3BuharliMasUn!=0){
        $('#sub3Table').val(lavSub3BuharliMasUn);
    }
     if(lavSub3Kuvetler!=0){
        $('#sub3Table').val(lavSub3Kuvetler);
    }
     if(lavSub3DusTek!=0){
        $('#sub3Table').val(lavSub3DusTek);
    }
     if(lavsub3VflowDusKanallari!=0){
        $('#sub3Table').val(lavsub3VflowDusKanallari);
    }
     if(lavsub3ArtemaDusSistemleri!=0){
        $('#sub3Table').val(lavsub3ArtemaDusSistemleri);
    }
     if(lavsub3KumandaPanelleri!=0){
        $('#sub3Table').val(lavsub3KumandaPanelleri);
    }
     if(lavsub3TuglaDuvarlarIcin!=0){
        $('#sub3Table').val(lavsub3TuglaDuvarlarIcin);
    }
     if(lavsub3AlcipanDuvarlarIcin!=0){
        $('#sub3Table').val(lavsub3AlcipanDuvarlarIcin);
    }

}

function sub3Value_edit() {
    var lavVal=$('#seramikBanyoLavaboCesitleri_edit').val();
    var lavKlozet=$('#seramikBanyoKlozetCesitleri_edit').val();
    var lavPisuvar=$('#seramikBanyoPisuvarCesitleri_edit').val();
    var lavYasliBedensel=$('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val();
    var lavDusTek=$('#seramikDusteknesiCesitleri_edit').val();
    var lavBide=$('#seramikBideCesitleri_edit').val();
    var lavTamamlayici=$('#seramikTamamlayiciUrunlerCesitleri_edit').val();
    var lavArtemaSer=$('#seramikArtemaAksesuarlarCesitleri_edit').val();
    var lavBanyoMob=$('#banyoMobilyasiYamamlayiciUrunler_edit').val();
    var lavSub3Armatur=$('#sub3Armaturlar_edit').val();
    var lavSub3DusSis=$('#sub3DusSistemleri_edit').val();
    var lavSub3Akses=$('#sub3Aksesuarlar_edit').val();
    var lavSub3ArTamamlayici=$('#sub3ArmaturTamamlayicilar_edit').val();
    var lavSub3BuharliMasUn=$('#sub3BuharliMasajliUniteler_edit').val();
    var lavSub3Kuvetler=$('#sub3Kuvetler_edit').val();
    var lavSub3DusTek=$('#sub3DusTekneleri_edit').val();
    var lavsub3VflowDusKanallari=$('#sub3VflowDusKanallari_edit').val();
    var lavsub3ArtemaDusSistemleri=$('#sub3ArtemaDusSistemleri_edit').val();
    var lavsub3KumandaPanelleri=$('#sub3KumandaPanelleri_edit').val();
    var lavsub3TuglaDuvarlarIcin=$('#sub3TuglaDuvarlarIcin_edit').val();
    var lavsub3AlcipanDuvarlarIcin=$('#sub3AlcipanDuvarlarIcin_edit').val();
    if(lavVal!=0){

        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavVal);

    }
    if(lavKlozet!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavKlozet);

    }
    if(lavPisuvar!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavPisuvar);
    }
    if(lavSub3ArTamamlayici!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3ArTamamlayici);

    }
    if(lavYasliBedensel!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavYasliBedensel);

    }
    if(lavDusTek!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavDusTek);
    }
    if(lavBide!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavBide);
    }
    if(lavTamamlayici!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavTamamlayici);
    }
    if(lavArtemaSer!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavArtemaSer);
    }
    if(lavBanyoMob!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavBanyoMob);
    }
    if(lavSub3Armatur!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3Armatur);
    }
    if(lavSub3DusSis!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3DusSis);
    }
    if(lavSub3Akses!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3Akses);
    }
    if(lavSub3BuharliMasUn!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3BuharliMasUn);
    }
    if(lavSub3Kuvetler!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3Kuvetler);
    }
    if(lavSub3DusTek!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavSub3DusTek);
    }
    if(lavsub3VflowDusKanallari!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavsub3VflowDusKanallari);
    }
    if(lavsub3ArtemaDusSistemleri!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavsub3ArtemaDusSistemleri);
    }
    if(lavsub3KumandaPanelleri!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavsub3KumandaPanelleri);
    }
    if(lavsub3TuglaDuvarlarIcin!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3AlcipanDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavsub3TuglaDuvarlarIcin);
    }
    if(lavsub3AlcipanDuvarlarIcin!=0){

        $('#seramikBanyoLavaboCesitleri_edit').val(0);
        $('#seramikBanyoKlozetCesitleri_edit').val(0);
        $('#sub3ArmaturTamamlayicilar_edit').val(0);
        $('#seramikYasliBedenselEngelliUrunlerCesitleri_edit').val(0);
        $('#seramikDusteknesiCesitleri_edit').val(0);
        $('#seramikBideCesitleri_edit').val(0);
        $('#seramikTamamlayiciUrunlerCesitleri_edit').val(0);
        $('#seramikArtemaAksesuarlarCesitleri_edit').val(0);
        $('#banyoMobilyasiYamamlayiciUrunler_edit').val(0);
        $('#sub3Armaturlar_edit').val(0);
        $('#sub3DusSistemleri_edit').val(0);
        $('#seramikBanyoPisuvarCesitleri_edit').val(0);
        $('#sub3Aksesuarlar_edit').val(0);
        $('#sub3BuharliMasajliUniteler_edit').val(0);
        $('#sub3Kuvetler_edit').val(0);
        $('#sub3DusTekneleri_edit').val(0);
        $('#sub3VflowDusKanallari_edit').val(0);
        $('#sub3ArtemaDusSistemleri_edit').val(0);
        $('#sub3KumandaPanelleri_edit').val(0);
        $('#sub3TuglaDuvarlarIcin_edit').val(0);
        $('#sub3Table_edit').val(lavsub3AlcipanDuvarlarIcin);
    }
}


function sub2Value_edit() {
    var gomme=$('#gommeRezervuarlariCesitleri_edit').val();
    var yikama=$('#yikanmaAlanlariCesitleri_edit').val();
    var armaturlar=$('#armaturlerDusSistemleriCesitleri_edit').val();
    var banyoMob=$('#banyoMobilyasiCesitleri_edit').val();
    var seramik=$('#seramikBanyoCesitleri_edit').val();

    if(gomme!=0){
        // $('#gommeRezervuarlariCesitleri_edit').val();
       $('#yikanmaAlanlariCesitleri_edit').val(0);
        $('#armaturlerDusSistemleriCesitleri_edit').val(0);
        $('#banyoMobilyasiCesitleri_edit').val(0);
        $('#seramikBanyoCesitleri_edit').val(0);
        $('#sub2Table_edit').val(gomme);
    }
    if(yikama!=0){
        $('#gommeRezervuarlariCesitleri_edit').val(0);
        $('#armaturlerDusSistemleriCesitleri_edit').val(0);
        $('#banyoMobilyasiCesitleri_edit').val(0);
        $('#seramikBanyoCesitleri_edit').val(0);
        $('#sub2Table_edit').val(yikama);
    }
    if(armaturlar!=0){
        $('#gommeRezervuarlariCesitleri_edit').val(0);
        $('#yikanmaAlanlariCesitleri_edit').val(0);
        $('#banyoMobilyasiCesitleri_edit').val(0);
        $('#seramikBanyoCesitleri_edit').val(0);
        $('#sub2Table_edit').val(armaturlar);
    }
    if(banyoMob!=0){
        $('#gommeRezervuarlariCesitleri_edit').val(0);
        $('#yikanmaAlanlariCesitleri_edit').val(0);
        $('#armaturlerDusSistemleriCesitleri_edit').val(0);
        $('#seramikBanyoCesitleri_edit').val(0);
        $('#sub2Table_edit').val(banyoMob);
    }
    if(seramik!=0){
        $('#gommeRezervuarlariCesitleri_edit').val(0);
        $('#yikanmaAlanlariCesitleri_edit').val(0);
        $('#armaturlerDusSistemleriCesitleri_edit').val(0);
        $('#banyoMobilyasiCesitleri_edit').val(0);
        $('#sub2Table_edit').val(seramik);
    }

}
// function controlSeramikBanyoUrunleri() {
//     var seraikBanyooxControl=$('#seramikBanyoCesitleri').val();
//     if(seraikBanyooxControl==1){
//
//     }
// }
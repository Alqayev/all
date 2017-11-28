<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function () {
        seramikBanyoLavaboSelectBox_edit();
        loadSeriSelectBox_edit();
        loadRenkSelectBox_edit();
        loadEbatSelectBox_edit();
        loadGenislikSelectBox_edit();
        loadDerinlikSelectBox_edit();
        loadYukseklikSelectBox_edit();
        loadMontajTipiSelectBox_edit();
        loadBaglantiTipiSelectBox_edit();
        loadYikamaSeceneyiSelectBox_edit();
        hidronasajSeceneyiSelectBox_edit();
        uygulamaSeceneyiSelectBox_edit();
        kapakTasarimiSelectBox_edit();
        seramikBanyoKlozetSelectBox_edit();
        seramikTamamlayiciUrunSelectBox_edit();
        seramikYasliBedenselEngelliUrunSelectBox_edit();
        seramikArtemaAksesuarlarSelectBox_edit();
        sub3ArmaturlarSelectBox_edit();
        sub3AksesuarlarSelectBox_edit();

        $('#nextLevel_edit').click(function () {
            var ch1=$('#sub2Table').val();
            var ch2=$('#sub3Table').val();

            if(ch1!=0&&ch1!=''){
                $('#nextLevel').css('display','none')
                $('#bootomInfo').show();
                $('#shInfo').hide();
            }
//            else{
                $('#shInfo_edit').show();
                $('#bootomInfo_edit').show();
//            }
        })

$('#searchVitraByCodbtn').click(function () {
    var edVitra=$('#searchVitraByCod').val();

        $.ajax({
            url:'../../../cs?action=editVitraProduct',
            method:'POST',
            data:'edit='+edVitra,
            dataType:'html',
            success:(function (data) {
                $('#oldInformation').html(data);
            })
        })

})

    });
    //    function tt() {
    //        var a = $("input[name='cocuklarIcin']:checked").val();
    //        alert(a)
    //    }
</script>

<div style=" background-color: burlywood;">
    <div align="center" style="height: 90px"><h1>V I T R A malları üzərində dəyişiklik edəcəksininiz</h1></div>
    <div style="margin-bottom: 57px;background-color: aliceblue;">
        Üzərində düzəliş etmək istədiyiniz malın kodunu daxil edin <input type="text" id="searchVitraByCod"> <br/><br/>



        <h4 id="editChecked" style="color: red"></h4>
        <input class="btn-primary" type="button" id="searchVitraByCodbtn" value="Productu axtar">
        <div id="oldInformation" style="display:none">
            <h3>Köhnə məlumatlar</h3>
        </div>
    </div>

    <div>

        <form action="../../../cs?action=updateVitraProduct" method="post" enctype="multipart/form-data" id="editPicForm">
            <div class="vitraDesignSelectBox">
                <label for="topStatus_edit" class="col-sm-2 control-label" style="width: auto;color: red"> Praductun silinmə vəya qaytarılmasını tənzimləyin </label>
                <select class="form-control" name="topId_Status_edit" id="topStatus_edit"  style="width: auto" >
                    <option value="1" >Product activ haldadır</option>
                    <option value="0" >Product Silinmiş haldadır</option>
                </select>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="topId_edit" class="col-sm-2 control-label" style="width: auto">Vitra: </label>
                <select class="form-control" name="topId_v_edit" id="topId_edit"  style="width: auto" >
                    <option value="1" style="color: red">Vitra</option>
                </select>
            </div>
            <div style="height: 168px;">


                <div class="vitraDesignSelectBox">
                    <label for="vitraProducCod_edit" class="col-sm-2 control-label" style="width: auto">Malın yeni kodunu daxil edin
                        : </label>
                    <input type="text" name="vitraProducCodName_edit" id="vitraProducCod_edit" class="form-control" style="width: 50%;">
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="vitraProducName_edit" class="col-sm-2 control-label" style="width: auto">Malın yeni adıni daxil edin
                        : </label>
                    <input type="text" name="vitraProducNameName_edit" id="vitraProducName_edit" class="form-control" style="width: 50%;">
                </div>

                <%--<div class="vitraDesignSelectBox">--%>
                <label for="vitraProducInfoUrlId_edit" class="col-sm-2 control-label" style="width: auto">Mal haqqında
                    informasiya olan yeni URL (ünvan)
                    : </label>
                <input type="text" name="vitraProducInfoUrlName_edit" id="vitraProducInfoUrlId_edit" class="form-control" style="width: 61.5%">
                <%--</div>--%>

            </div>
            <%--S U B 1      T A B L E --%>
            <div class="vitraDesignSelectBox">
                <label for="vitraUrun_yeni" id="vitraUrun_Edit" class="col-sm-2 control-label" style="width: auto">Yeni Ürün seçin : </label>
                <select class="form-control" name="sub1TableName_yeni" id="vitraUrun_yeni" onchange="" style="width: auto">
                    <option value="0" style="color: red">Ürün</option>
                    <option value="1">Sermaik banyo ürünleri</option>
                    <option value="2">Banyo mobilyası</option>
                    <option value="3">Armatürler & Duş Sistemleri & Aksesuarlar</option>
                    <option value="4">Yıkanma Alanları</option>
                    <option value="5">Gömme Rezervuar</option>
                </select>
            </div>


            <%--E N D     S U B 1      T A B L E --%>



            <%--S U B 2      T A B L E --%>

            <div class="vitraDesignSelectBox">
                <label for="seramikBanyoCesitleri_edit" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Seramik banyo ürün
                    çeşitleri : </label>
                <select class="form-control" name="seramikBanyoCesitleriName_edit" onchange="sub2Value_edit()" id="seramikBanyoCesitleri_edit" style="width: auto" >
                    <option value="0" style="color: red">Seramik banyo ürün çeşitleri</option>
                    <option value="1">Lavabo</option>
                    <option value="2">Klozet</option>
                    <option value="3">Pisuvar</option>
                    <option value="4">Duş Teknesi</option>
                    <option value="5">Helataşı</option>
                    <option value="6">Bide</option>
                    <option value="7">Tamamlayıcı Ürünler</option>
                    <option value="8">Yaşlı ve Bedensel Engelli Ürünler</option>
                    <option value="9">ARTEMA Aksesuarlar</option>
                </select>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="banyoMobilyasiCesitleri_edit" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Banyo mobilyası ürün
                    çeşitleri : </label>
                <div class="col-sm-2">
                    <select class="form-control"  name="banyoMobilyasiCesitleriName_edit" onchange="sub2Value_edit()" id="banyoMobilyasiCesitleri_edit" style="width: auto" >
                        <option value="0" style="color: red">Banyo mobilyası ürün çeşitleri</option>
                        <option value="10">Lavabo Dolabı</option>
                        <option value="11">Boy Dolabı</option>
                        <option value="12">Orta Üniteler</option>
                        <option value="13">Tezgah</option>
                        <option value="14">Aynalar</option>
                        <option value="15">Tamamlayıcı Ürünler</option>
                        <option value="16">Otel Üniteleri</option>
                        <option value="17">Banyo Setleri</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="armaturlerDusSistemleriCesitleri_edit" id="armaturlarDusSistemleri" class="col-sm-2 control-label" style="width: auto;;color: #2e6da4">Armatürler
                    &
                    Duş Sistemleri & Aksesuarlar : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="armaturlerDusSistemleriCesitleriName_edit" onchange="sub2Value_edit()" id="armaturlerDusSistemleriCesitleri_edit" style="width: auto" >
                        <option value="0" style="color: red">Armatürler & Duş Sistemleri & Aksesuarlar</option>
                        <option value="18">Armatürler</option>
                        <option value="19">Duş Sistemleri</option>
                        <option value="20">Aksesuarlar</option>
                        <option value="21">Armatür Tamamlayıcıları</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="yikanmaAlanlariCesitleri_edit" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Yıkanma Alanları
                    ürün
                    çeşitleri : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="yikanmaAlanlariCesitleriName_edit" onchange="sub2Value_edit()" id="yikanmaAlanlariCesitleri_edit" style="width: auto" >
                        <option value="0" style="color: red">Yıkanma Alanları</option>
                        <option value="22">SPA</option>
                        <option value="23">Buharlı/Masajlı Üniteler</option>
                        <option value="24">Kompakt Üniteler</option>
                        <option value="25">Küvetler</option>
                        <option value="26">Duş Tekneleri</option>
                        <option value="27">V-Flow Duş Kanalları</option>
                        <option value="28">ARTEMA Duş Sistemleri</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="gommeRezervuarlariCesitleri_edit" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Gömme
                    rezervuarlar
                    ürün çeşitleri : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="gommeRezervuarlariCesitleriName_edit" onchange="sub2Value_edit()" id="gommeRezervuarlariCesitleri_edit" style="width: auto" >
                        <option value="0" style="color: red">Gömme rezervuarlar</option>
                        <option value="29">Kumanda Panelleri</option>
                        <option value="30">Tuğla Duvarlar için</option>
                        <option value="31">Alçıpan Duvarlar için</option>
                    </select>
                </div>

            </div>

            <%--E N D   S U B 2   T A B L E--%>

            <%--S U B 3   T A B L E--%>
            <div id="sub3" style="background-color: aliceblue;">
                <h2 style="text-align: center"> Seramik Banyo alt Ürün çeşitleri </h2>
                <div class="vitraDesignSelectBox">
                    <label for="seramikBanyoLavaboCesitleri_edit" id="lavobaLabel_edit"  class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Lavabo çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikBanyoLavaboCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikBanyoLavaboCesitleri_edit" style="width: auto" >

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikBanyoKlozetCesitleri_edit" id="klozetLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c" >Seramik Banyo - Klozet çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikBanyoKlozetCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikBanyoKlozetCesitleri_edit" style="width: auto" >

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikBanyoPisuvarCesitleri_edit" id="pisuvarLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Pisuvar çeşitleri :</label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikBanyoPisuvarCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikBanyoPisuvarCesitleri_edit" style="width: auto" >
                            <option value="0" style="color: red">Pisuvar çeşitleri </option>
                            <option value="18">fotoselli pisuvar</option>
                            <option value="19">arkadan_su_girisli</option>
                            <option value="20">usten_su_girisli</option>
                            <option value="21">susuz_pisuvar</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikYasliBedenselEngelliUrunlerCesitleri_edit" id="yasVeBedLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Yaşlı ve bedensel engelliler için : </label>
                    <div class="col-sm-2">
                        <select class="form-control"  name="seramikYasliVeBedenselEngelliUrunCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikYasliBedenselEngelliUrunlerCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikDusteknesiCesitleri_edit" id="dusteknesiLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Duşteknesi çeşitleri :</label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikDusteknesiCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikDusteknesiCesitleri_edit" style="width: auto" >
                            <option value="0" style="color: red">Duşteknesi çeşitleri </option>
                            <option value="22">dikdortgen_su_teknesi</option>
                            <option value="23">kare_dus_teknesi</option>
                            <option value="24">kose_dus_teknesi</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikBideCesitleri_edit" id="bideLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Bide çeşitleri :</label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikBideCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikBideCesitleri_edit" style="width: auto" >
                            <option value="0" style="color: red">Bide çeşitleri </option>
                            <option value="25">Asma Bide</option>
                            <option value="26">Yerden Bide</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikTamamlayiciUrunlerCesitleri_edit" id="tamamlayiciLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Tamamlayıcı ürün çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikTamamlayiciUrunCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikTamamlayiciUrunlerCesitleri_edit" style="width: auto" >

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="seramikArtemaAksesuarlarCesitleri_edit" id="artemaLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Artema aksesuarlar : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seramikArtemaAksesuarlarCesitleriName_edit" onchange="sub3Value_edit()"  id="seramikArtemaAksesuarlarCesitleri_edit" style="width: auto" >

                        </select>
                    </div>

                </div>
            </div>

            <div id="sub3BanyoMobilyasi" style=" background-color: #3c4e8c">
                <h2 style="text-align: center">Banyo mobilyasi alt cesitleri</h2>
                <div class="vitraDesignSelectBox">
                    <label for="banyoMobilyasiYamamlayiciUrunler_edit" id="banyoMobLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Banyo Mobilyasi - Tamamlayıcı ürünler :</label>
                    <div class="col-sm-2">
                        <select class="form-control" name="banyoMobilyasiYamamlayiciUrunName_edit" onchange="sub3Value_edit()" id="banyoMobilyasiYamamlayiciUrunler_edit" style="width: auto" >
                            <option value="0" style="color: red">Tamamlayıcı ürünler</option>
                            <option value="58">aydinlatma</option>
                            <option value="59">raflar</option>
                            <option value="60">aksesuar</option>
                            <option value="61">ayak_seti</option>
                            <option value="62">separator</option>
                        </select>
                    </div>
                </div>
            </div>

            <div id="sub3ArmaturlerDusSistemleri" style=" background-color: #278c8a">
                <h2 style="text-align: center">Armatürler & Duş Sistemleri & Aksesuarlar</h2>
                <div class="vitraDesignSelectBox">
                    <label for="sub3Armaturlar_edit" class="col-sm-2 control-label" id="armaturleLabel_edit" style="width: auto;color: #4cae4c">Armatürler : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3ArmaturlarName_edit" id="sub3Armaturlar_edit" onchange="sub3Value_edit()" style="width: auto" >

                        </select>
                    </div>
                </div>
                <div class="vitraDesignSelectBox">
                    <label for="sub3DusSistemleri_edit" id="dussistemleriLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Duş sistemleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3DusSistemleriName_edit" id="sub3DusSistemleri_edit" onchange="sub3Value_edit()" style="width: auto" >
                            <option value="0" style="color: red">Duş sistemleri </option>
                            <option value="74"> Duş Kolonları</option>
                            <option value="75"> Duş Başlıkları</option>
                            <option value="76">El Duşu Takımları</option>
                            <option value="77">Sürgülü El Duşu Takımları</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3Aksesuarlar_edit" id="aksesuarlarLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Aksesuarlar : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3AksesuarlarName_edit" id="sub3Aksesuarlar_edit" onchange="sub3Value_edit()" style="width: auto" >

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3ArmaturTamamlayicilar_edit" id="armaturTamamlayiciLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Armatür Tamamlayıcıları : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3ArmaturTamamlayicilarName_edit" onchange="sub3Value_edit()" id="sub3ArmaturTamamlayicilar_edit" style="width: auto" >
                            <option value="0" style="color: red">Armatür Tamamlayıcıları </option>
                            <option value="93"> Çıkış Uçları</option>
                            <option value="94"> Yönlendiriciler</option>
                            <option value="95">Sifonlar</option>
                        </select>
                    </div>
                </div>
            </div>

            <div id="sub3YikanmaAlanlari" style=" background-color: #278c43">
                <h2 style="text-align: center">Yıkama Alanları</h2>
                <div class="vitraDesignSelectBox">
                    <label for="sub3BuharliMasajliUniteler_edit" id="baharliasajliLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Buharlı/Masajlı Üniteler : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3BuharliMasajliUnitelerName_edit" onchange="sub3Value_edit()" id="sub3BuharliMasajliUniteler_edit" style="width: auto" >
                            <option value="0" style="color: red">Buharlı/Masajlı Üniteler </option>
                            <option value="96"> buharli_uniteler</option>
                            <option value="97"> masajli_uniteler</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3Kuvetler_edit" id="kuvetlerLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Küvetler : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3KuvetlerName_edit" onchange="sub3Value_edit()" id="sub3Kuvetler_edit" style="width: auto" >
                            <option value="0" style="color: red">Küvetler </option>
                            <option value="98"> akrilik</option>
                            <option value="99"> celik</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3DusTekneleri_edit" id="dusTekneleriLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Duş Tekneleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3DusTekneleriName_edit" onchange="sub3Value_edit()" id="sub3DusTekneleri_edit" style="width: auto" >
                            <option value="0" style="color: red">Duş Tekneleri </option>
                            <option value="100"> akrilik</option>
                            <option value="101"> celik</option>
                            <option value="102"> seramik</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3VflowDusKanallari_edit" id="vflowDusKnLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">V-Flow Duş Kanalları : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3VflowDusKanallariName_edit" onchange="sub3Value_edit()" id="sub3VflowDusKanallari_edit" style="width: auto" >
                            <option value="0" style="color: red">V-Flow Duş Kanalları </option>
                            <option value="103"> Dikdörtgen Duş Kanalları</option>
                            <option value="104">  Kare Duş Kanalları</option>
                            <option value="105">  Köşe Duş Kanalları</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3ArtemaDusSistemleri_edit" id="artemaDusLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">ARTEMA Duş Sistemleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3ArtemaDusSistemleriName_edit" onchange="sub3Value_edit()" id="sub3ArtemaDusSistemleri_edit" style="width: auto" >
                            <option value="0" style="color: red">ARTEMA Duş Sistemleri </option>
                            <option value="106"> Duş Kolonları</option>
                            <option value="107">  Duş Başlıkları</option>
                            <option value="108">  El Duşu Takımları</option>
                            <option value="109"> Sürgülü El Duşu Takımları</option>
                        </select>
                    </div>
                </div>
            </div>

            <div id="sub3GommeRezervuar" style=" background-color: #278c8a">
                <h2 style="text-align: center">Gömme Rezervuarları</h2>
                <div class="vitraDesignSelectBox">
                    <label for="sub3KumandaPanelleri_edit" id="kumandaPanelleriLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Kumanda Panelleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3KumandaPanelleriName_edit" onchange="sub3Value_edit()" id="sub3KumandaPanelleri_edit" style="width: auto" >
                            <option value="0" style="color: red">Kumanda Panelleri  </option>
                            <option value="110"> Pnömatik Kumanda Panelleri (8 cm)</option>
                            <option value="111">  Mekanik Kumanda Panelleri (8-12 cm)</option>
                            <option value="112">  Fotoselli Kumanda Panelleri (8-12 cm)</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3TuglaDuvarlarIcin_edit" id="tugladuvarlaricinLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Tuğla Duvarlar için : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3TuglaDuvarlarIcinName_edit" onchange="sub3Value_edit()" id="sub3TuglaDuvarlarIcin_edit" style="width: auto" >
                            <option value="0" style="color: red">Tuğla Duvarlar için  </option>
                            <option value="110"> VitrAPro Modeller</option>
                            <option value="111">   8 cm Modeller</option>
                            <option value="112">   12 cm Modeller</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3AlcipanDuvarlarIcin_edit" id="alcipanDuvarlarIcinLabel_edit" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Alçıpan Duvarlar için : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3AlcipanDuvarlarIcinName_edit" onchange="sub3Value_edit()" id="sub3AlcipanDuvarlarIcin_edit" style="width: auto" >
                            <option value="0" style="color: red">Alçıpan Duvarlar için  </option>
                            <option value="113"> VitrAPro Modeller</option>
                            <option value="114">   8 cm Modeller</option>
                            <option value="115">   12 cm Modeller</option>
                        </select>
                    </div>
                </div>
            </div>
            <h3 style="display: none;color: red" id="shInfo_edit">Yuxaridaki kategoriyalarin boş buraxılması düzgün doldurulmamağı müştəri axtarışı zamanı prablemlər yaradacaq</h3>
            <input type="number" id="sub2Table_edit" name="sub2TableName_edit" value="0">
            <input type="number" id="product_id_edit" name="productIdName_edit" value="0">
            <input type="number" id="sub3Table_edit" name="sub3TableName_edit" value="0">
            <input type="button" class="bg-primary" style="float: right;" value="Növbəti" id="nextLevel_edit">

            <%--E N D   S U B 3   T A B L E--%>

            <%--B O T T O M       C A T E G O R Y--%>
            <div id="bootomInfo_edit" style="display: none;">
                <div class="vitraDesignSelectBox">
                    <label for="seriCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Seri çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="seriCesitleriName_edit" id="seriCesitleri_edit" style="width: auto" >

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="renkCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Renk çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="renkCesitleriName_edit" id="renkCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="ebatCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Ebat çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="ebatCesitleriName_edit" id="ebatCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="tarzCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Tarz çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="tarzCesitleriName_edit" id="tarzCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Tarz çeşitleri seçiniz</option>
                            <option value="65">Sade ve Zamansız</option>
                            <option value="66">Şık ve Sıcak</option>
                            <option value="67">Özgün ve Modern</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="genislikCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Genişlik çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="genislikCesitleriName_edit" id="genislikCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="derinlikCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Derinlik çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="derinlikCesitleriName_edit" id="derinlikCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="yukseklikCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Yükseklik çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="yukseklikCesitleriName_edit" id="yukseklikCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="sekilCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Şekil çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sekilCesitleriName_edit" id="sekilCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Şekil çeşitleri seçiniz</option>
                            <option value="91">Özel</option>
                            <option value="92">Dikdörtgen</option>
                            <option value="93">Kare</option>
                            <option value="94">Oval</option>
                            <option value="479">Koşe</option>
                            <option value="480">Ofset</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="montajTipiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Montaj tipi çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="montajTipiCesitleriName_edit" id="montajTipiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="baglantiTipiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Bağlantı tipi
                        çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="baglantiTipiCesitleriName_edit" id="baglantiTipiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="yikamaSeceneyiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Yıkama seçeneyi
                        çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="yikamaSeceneyiCesitleriName_edit" id="yikamaSeceneyiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="kapakTasarimiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Kapak tasarırımı
                        çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="kapakTasarimiCesitleriName_edit" id="kapakTasarimiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="gucKaynagiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Güç kaynağı çeşitleri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="gucKaynagiCesitleriName_edit" id="gucKaynagiCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Güç kaynağı çeşitleri seçiniz</option>
                            <option value="118">Pilli</option>
                            <option value="119">Elektrikli</option>
                            <option value="181">Tesisat sıcak suyu</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="yavasKapanirCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Nasıl kapanıyor ?
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="yavasKapanirCesitleriName_edit" id="yavasKapanirCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Kapanma tarzı</option>
                            <option value="153">Yavaş kapanır var</option>
                            <option value="154">Yavaş kapanır yok</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="bunyeTipiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Bünye tipi seçiniz
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="bunyeTipiCesitleriName_edit" id="bunyeTipiCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Bünye tipi seçiniz</option>
                            <option value="156">Porselen</option>
                            <option value="157">Cam</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="akrilikPlakaCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Akrılık plaka seçiniz
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="akrilikPlakaCesitleriName_edit" id="akrilikPlakaCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Akrılık plaka seçiniz</option>
                            <option value="367">Okyanus</option>
                            <option value="368">Alba</option>
                            <option value="369">Beyaz</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="kapakYonuCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Kapak yönü : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="kapakYonuCesitleriName_edit" id="kapakYonuCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Kapak yönü seçiniz</option>
                            <option value="261">Sağ</option>
                            <option value="262">Sol</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="kapakRengiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Kapak rengi : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="kapakRengiCesitleriName_edit" id="kapakRengiCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Kapak Rengi seçiniz</option>
                            <option value="263">Doğal Meşe</option>
                            <option value="264">Vizon</option>
                            <option value="265">Mat Beyaz</option>
                            <option value="265">Mor</option>
                            <option value="298">Hareli Meşe</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="duvarYerlesimCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Duvar yerleşim yeri
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="duvarYerlesimCesitleriName_edit" id="duvarYerlesimCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Duvar yerleşim yeri seçiniz</option>
                            <option value="411">Düz Duvar</option>
                            <option value="412">L Duvar</option>
                            <option value="413">U Duvar</option>
                            <option value="427">Sağ</option>
                            <option value="428">Sol</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="kalinlikCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Kalınlık : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="kalinlikCesitleriName_edit" id="kalinlikCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Kalınlık</option>
                            <option value="477">3.5 mm</option>
                            <option value="478">2.2 mm</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="normalCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Eğim : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="normalCesitleriName_edit" id="normalCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Eğim</option>
                            <option value="501">Normal</option>
                            <option value="502">Düşük</option>
                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="hidromasajSeceneyiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Hidromasaj
                        Seçeneği
                        çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="hidromasajSeceneyiCesitleriName_edit" id="hidromasajSeceneyiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="uygulamaSeceneyiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Uygulama Seçeneği
                        çeşitleri : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="uygulamaSeceneyiCesitleriName_edit" id="uygulamaSeceneyiCesitleri_edit" style="width: auto">

                        </select>
                    </div>
                </div>

                <div class="vitraDesignSelectBox">
                    <label for="fonksyonSayisiCesitleri_edit" class="col-sm-2 control-label" style="width: auto">Fonksyon sayisi
                        seçin
                        : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="fonksyonSayisiCesitleriName_edit" id="fonksyonSayisiCesitleri_edit" style="width: auto">
                            <option value="0" style="color: red">Fonksyon sayı</option>
                            <option value="358">1F</option>
                            <option value="359">3F</option>
                            <option value="360">5F</option>
                        </select>
                    </div>
                </div>


                <div class="checkbox">
                    <label><input type="radio" name="cocuklarIcin_edit" id="cocuklar_editId1" class="cocuklarIc" value="1">Çocuklar için </label>
                    <label><input type="radio" name="cocuklarIcin_edit" id="cocuklar_editId2" class="cocuklarIc" value="0" checked>Çocuklar için diyil </label>
                </div>

                <div class="checkbox">
                    <label><input type="radio" value="1" class="yeniIc" id="yeni_editId1" name="yeniIcin_edit" checked>Yeni </label>
                    <label><input type="radio" value="0" class="yeniIc" id="yeni_editId2" name="yeniIcin_edit">Yeni gibi seçmiyorum</label>
                </div>
                <br><br>
                <span style="color: red">Profil şəkli (bir ədəd seçilə bilər)  : </span><input type="file" name="profil_edit"><br><br>
                <img src="" id="oldImageId" style="width: 50%" alt="Sekil Yoxdur"><br><br>
                <input type="submit" class="btn-success" value="Məlumatları daxil edin">
            </div>
        </form>
    </div>
</div>
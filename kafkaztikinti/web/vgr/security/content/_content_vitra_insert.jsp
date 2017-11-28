<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!-- Latest compiled and minified CSS -->--%>
<%--<meta charset="utf-8">--%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--&lt;%&ndash;ucluk&ndash;%&gt;--%>
<%--<script src="../../../bootstrap/fonts/js/jquery.min.js"></script>--%>
<%--<script src="../../../bootstrap/fonts/js/bootstrap.min.js"></script>--%>
<%--<script src="../../../bootstrap/fonts/js/jquery-ui.js"></script>--%>
<%--<link rel="stylesheet" href="../../../bootstrap/fonts/css/bootstrap.min.css">--%>
<%--&lt;%&ndash;ucluk&ndash;%&gt;--%>

<%--<link rel="stylesheet" href="../../../css/main.css">--%>

<%--<script src="../../../js/admin/adminpanel.js"></script>--%>
<%--<script src="../../../js/admin/selectBoxControl.js"></script>--%>

<script>
    $(function () {
        seramikBanyoLavaboSelectBox();
        loadSeriSelectBox();
        loadRenkSelectBox();
        loadEbatSelectBox();
        loadGenislikSelectBox();
        loadDerinlikSelectBox();
        loadYukseklikSelectBox();
        loadMontajTipiSelectBox();
        loadBaglantiTipiSelectBox();
        loadYikamaSeceneyiSelectBox();
        hidronasajSeceneyiSelectBox();
        uygulamaSeceneyiSelectBox();
        kapakTasarimiSelectBox();
        seramikBanyoKlozetSelectBox();
        seramikTamamlayiciUrunSelectBox();
        seramikYasliBedenselEngelliUrunSelectBox();
        seramikArtemaAksesuarlarSelectBox();
        sub3ArmaturlarSelectBox();
        sub3AksesuarlarSelectBox();

        checkedKod_vitra();

        $('#nextLevel').click(function () {
            var ch1=$('#sub2Table').val();
            var ch2=$('#sub3Table').val();

            if(ch1!=0&&ch1!=''){
                $('#nextLevel').css('display','none')
                $('#bootomInfo').show();
                $('#shInfo').hide();
            }else{
                $('#shInfo').show();
                $('#bootomInfo').hide();
            }
        })



    })
//    function tt() {
//        var a = $("input[name='cocuklarIcin']:checked").val();
//        alert(a)
//    }
</script>


<div style=" background-color: burlywood;">
    <div align="center" style="height: 90px"><h1>V I T R A mallarını daxil edəcəksininiz</h1></div>
    <div id="fal_vitra" style="display: none">

    </div>
    <form action="../../../cs?action=addVitraProduct" method="post" enctype="multipart/form-data" id="insertPicForm_vitra">
        <div class="vitraDesignSelectBox">
            <label for="topId" class="col-sm-2 control-label" style="width: auto">Vitra: </label>
            <select class="form-control" name="topId_v" id="topId"  style="width: auto" >
                <option value="1" style="color: red">Vitra</option>
            </select>
        </div>
        <div style="height: 168px;">


            <div class="vitraDesignSelectBox">
                <label for="vitraProducCod" class="col-sm-2 control-label" style="width: auto">Malın kodunu daxil edin
                    : </label>
                <input type="text" name="vitraProducCodName" id="vitraProducCod" class="form-control" style="width: 50%;">
            </div>

            <div class="vitraDesignSelectBox">
                <label for="vitraProducName" class="col-sm-2 control-label" style="width: auto">Malın adıni daxil edin
                    : </label>
                <input type="text" name="vitraProducNameName" id="vitraProducName" class="form-control" style="width: 50%;">
            </div>

            <%--<div class="vitraDesignSelectBox">--%>
            <label for="vitraProducInfoUrlId" class="col-sm-2 control-label" style="width: auto">Mal haqqında
                informasiya olan URL (ünvan)
                : </label>
            <input type="text" name="vitraProducInfoUrlName" id="vitraProducInfoUrlId" class="form-control" style="width: 61.5%">
            <%--</div>--%>

        </div>
                             <%--S U B 1      T A B L E --%>
        <div class="vitraDesignSelectBox">
            <label for="vitraUrun" class="col-sm-2 control-label" style="width: auto">Ürün seçin : </label>
            <select class="form-control" name="sub1TableName" id="vitraUrun" onchange="chooseSelectVal()" style="width: auto">
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
            <label for="seramikBanyoCesitleri" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Seramik banyo ürün
                çeşitleri : </label>
            <select class="form-control" name="seramikBanyoCesitleriName" onchange="chooseSub3TableSelectVal()" id="seramikBanyoCesitleri" style="width: auto" disabled>
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
            <label for="banyoMobilyasiCesitleri" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Banyo mobilyası ürün
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control"  name="banyoMobilyasiCesitleriName" onchange="chooseSub3TableBanyoMobilyasiSelectVal()" id="banyoMobilyasiCesitleri" style="width: auto" disabled>
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
            <label for="armaturlerDusSistemleriCesitleri" id="armaturlarDusSistemleri" class="col-sm-2 control-label" style="width: auto;;color: #2e6da4">Armatürler
                &
                Duş Sistemleri & Aksesuarlar : </label>
            <div class="col-sm-2">
                <select class="form-control" name="armaturlerDusSistemleriCesitleriName" onchange="chooseSub3TableArmaturlarDusSistemleri()" id="armaturlerDusSistemleriCesitleri" style="width: auto" disabled>
                    <option value="0" style="color: red">Armatürler & Duş Sistemleri & Aksesuarlar</option>
                    <option value="18">Armatürler</option>
                    <option value="19">Duş Sistemleri</option>
                    <option value="20">Aksesuarlar</option>
                    <option value="21">Armatür Tamamlayıcıları</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="yikanmaAlanlariCesitleri" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Yıkanma Alanları
                ürün
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="yikanmaAlanlariCesitleriName" onchange="chooseSub3YikamaAlaniSeceneyi()" id="yikanmaAlanlariCesitleri" style="width: auto" disabled>
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
            <label for="gommeRezervuarlariCesitleri" class="col-sm-2 control-label" style="width: auto;color: #2e6da4">Gömme
                rezervuarlar
                ürün çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="gommeRezervuarlariCesitleriName" onchange="chooseSub3GommeRezervuarlari()" id="gommeRezervuarlariCesitleri" style="width: auto" disabled>
                    <option value="0" style="color: red">Gömme rezervuarlar</option>
                    <option value="29">Kumanda Panelleri</option>
                    <option value="30">Tuğla Duvarlar için</option>
                    <option value="31">Alçıpan Duvarlar için</option>
                </select>
            </div>

        </div>

                                                         <%--E N D   S U B 2   T A B L E--%>

                                                             <%--S U B 3   T A B L E--%>
        <div id="sub3" style="display: none ;">
        <div class="vitraDesignSelectBox">
            <label for="seramikBanyoLavaboCesitleri" id="lavobaLabel"  class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Lavabo çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikBanyoLavaboCesitleriName" onchange="sub3Value()" disabled id="seramikBanyoLavaboCesitleri" style="width: auto" >

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikBanyoKlozetCesitleri" id="klozetLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c" >Seramik Banyo - Klozet çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikBanyoKlozetCesitleriName" onchange="sub3Value()" disabled id="seramikBanyoKlozetCesitleri" style="width: auto" >

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikBanyoPisuvarCesitleri" id="pisuvarLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Pisuvar çeşitleri :</label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikBanyoPisuvarCesitleriName" onchange="sub3Value()" disabled id="seramikBanyoPisuvarCesitleri" style="width: auto" >
                    <option value="0" style="color: red">Pisuvar çeşitleri </option>
                    <option value="18">fotoselli pisuvar</option>
                    <option value="19">arkadan_su_girisli</option>
                    <option value="20">usten_su_girisli</option>
                    <option value="21">susuz_pisuvar</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikYasliBedenselEngelliUrunlerCesitleri" id="yasVeBedLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Yaşlı ve bedensel engelliler için : </label>
            <div class="col-sm-2">
                <select class="form-control"  name="seramikYasliVeBedenselEngelliUrunCesitleriName" onchange="sub3Value()" disabled id="seramikYasliBedenselEngelliUrunlerCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikDusteknesiCesitleri" id="dusteknesiLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Duşteknesi çeşitleri :</label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikDusteknesiCesitleriName" onchange="sub3Value()" disabled id="seramikDusteknesiCesitleri" style="width: auto" >
                    <option value="0" style="color: red">Duşteknesi çeşitleri </option>
                    <option value="22">dikdortgen_su_teknesi</option>
                    <option value="23">kare_dus_teknesi</option>
                    <option value="24">kose_dus_teknesi</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikBideCesitleri" id="bideLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Bide çeşitleri :</label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikBideCesitleriName" onchange="sub3Value()" disabled id="seramikBideCesitleri" style="width: auto" >
                    <option value="0" style="color: red">Bide çeşitleri </option>
                    <option value="25">Asma Bide</option>
                    <option value="26">Yerden Bide</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikTamamlayiciUrunlerCesitleri" id="tamamlayiciLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Tamamlayıcı ürün çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikTamamlayiciUrunCesitleriName" onchange="sub3Value()" disabled id="seramikTamamlayiciUrunlerCesitleri" style="width: auto" >

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="seramikArtemaAksesuarlarCesitleri" id="artemaLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Seramik Banyo - Artema aksesuarlar : </label>
            <div class="col-sm-2">
                <select class="form-control" name="seramikArtemaAksesuarlarCesitleriName" onchange="sub3Value()" disabled id="seramikArtemaAksesuarlarCesitleri" style="width: auto" >

                </select>
            </div>

        </div>
        </div>

        <div id="sub3BanyoMobilyasi" style="display: none; background-color: #278c8a">
            <div class="vitraDesignSelectBox">
                <label for="banyoMobilyasiYamamlayiciUrunler" id="banyoMobLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Banyo Mobilyasi - Tamamlayıcı ürünler :</label>
                <div class="col-sm-2">
                    <select class="form-control" name="banyoMobilyasiYamamlayiciUrunName" onchange="sub3Value()" id="banyoMobilyasiYamamlayiciUrunler" style="width: auto" >
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

        <div id="sub3ArmaturlerDusSistemleri" style="display: none; background-color: #278c8a">
            <div class="vitraDesignSelectBox">
            <label for="sub3Armaturlar" class="col-sm-2 control-label" id="armaturleLabel" style="width: auto;color: #4cae4c">Armatürler : </label>
            <div class="col-sm-2">
                <select class="form-control" name="sub3ArmaturlarName" id="sub3Armaturlar" onchange="sub3Value()" style="width: auto" >

                </select>
            </div>
        </div>
       <div class="vitraDesignSelectBox">
            <label for="sub3DusSistemleri" id="dussistemleriLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Duş sistemleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="sub3DusSistemleriName" id="sub3DusSistemleri" onchange="sub3Value()" style="width: auto" >
                    <option value="0" style="color: red">Duş sistemleri </option>
                    <option value="74"> Duş Kolonları</option>
                    <option value="75"> Duş Başlıkları</option>
                    <option value="76">El Duşu Takımları</option>
                    <option value="77">Sürgülü El Duşu Takımları</option>
                </select>
            </div>
       </div>

                <div class="vitraDesignSelectBox">
                    <label for="sub3Aksesuarlar" id="aksesuarlarLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Aksesuarlar : </label>
                    <div class="col-sm-2">
                        <select class="form-control" name="sub3AksesuarlarName" id="sub3Aksesuarlar" onchange="sub3Value()" style="width: auto" >

                        </select>
                    </div>
                </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3ArmaturTamamlayicilar" id="armaturTamamlayiciLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Armatür Tamamlayıcıları : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3ArmaturTamamlayicilarName" onchange="sub3Value()" id="sub3ArmaturTamamlayicilar" style="width: auto" >
                        <option value="0" style="color: red">Armatür Tamamlayıcıları </option>
                        <option value="93"> Çıkış Uçları</option>
                        <option value="94"> Yönlendiriciler</option>
                        <option value="95">Sifonlar</option>
                    </select>
                </div>
            </div>
        </div>

        <div id="sub3YikanmaAlanlari" style="display: none; background-color: #278c8a">
            <div class="vitraDesignSelectBox">
                <label for="sub3BuharliMasajliUniteler" id="baharliasajliLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Buharlı/Masajlı Üniteler : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3BuharliMasajliUnitelerName" onchange="sub3Value()" id="sub3BuharliMasajliUniteler" style="width: auto" >
                        <option value="0" style="color: red">Buharlı/Masajlı Üniteler </option>
                        <option value="96"> buharli_uniteler</option>
                        <option value="97"> masajli_uniteler</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3Kuvetler" id="kuvetlerLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Küvetler : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3KuvetlerName" onchange="sub3Value()" id="sub3Kuvetler" style="width: auto" >
                        <option value="0" style="color: red">Küvetler </option>
                        <option value="98"> akrilik</option>
                        <option value="99"> celik</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3DusTekneleri" id="dusTekneleriLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Duş Tekneleri : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3DusTekneleriName" onchange="sub3Value()" id="sub3DusTekneleri" style="width: auto" >
                        <option value="0" style="color: red">Duş Tekneleri </option>
                        <option value="100"> akrilik</option>
                        <option value="101"> celik</option>
                        <option value="102"> seramik</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3VflowDusKanallari" id="vflowDusKnLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">V-Flow Duş Kanalları : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3VflowDusKanallariName" onchange="sub3Value()" id="sub3VflowDusKanallari" style="width: auto" >
                        <option value="0" style="color: red">V-Flow Duş Kanalları </option>
                        <option value="103"> Dikdörtgen Duş Kanalları</option>
                        <option value="104">  Kare Duş Kanalları</option>
                        <option value="105">  Köşe Duş Kanalları</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3ArtemaDusSistemleri" id="artemaDusLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">ARTEMA Duş Sistemleri : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3ArtemaDusSistemleriName" onchange="sub3Value()" id="sub3ArtemaDusSistemleri" style="width: auto" >
                        <option value="0" style="color: red">ARTEMA Duş Sistemleri </option>
                        <option value="106"> Duş Kolonları</option>
                        <option value="107">  Duş Başlıkları</option>
                        <option value="108">  El Duşu Takımları</option>
                        <option value="109"> Sürgülü El Duşu Takımları</option>
                    </select>
                </div>
            </div>
        </div>

        <div id="sub3GommeRezervuar" style="display: none; background-color: #278c8a">
            <div class="vitraDesignSelectBox">
                <label for="sub3KumandaPanelleri" id="kumandaPanelleriLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Kumanda Panelleri : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3KumandaPanelleriName" onchange="sub3Value()" id="sub3KumandaPanelleri" style="width: auto" >
                        <option value="0" style="color: red">Kumanda Panelleri  </option>
                        <option value="110"> Pnömatik Kumanda Panelleri (8 cm)</option>
                        <option value="111">  Mekanik Kumanda Panelleri (8-12 cm)</option>
                        <option value="112">  Fotoselli Kumanda Panelleri (8-12 cm)</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3TuglaDuvarlarIcin" id="tugladuvarlaricinLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Tuğla Duvarlar için : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3TuglaDuvarlarIcinName" onchange="sub3Value()" id="sub3TuglaDuvarlarIcin" style="width: auto" >
                        <option value="0" style="color: red">Tuğla Duvarlar için  </option>
                        <option value="110"> VitrAPro Modeller</option>
                        <option value="111">   8 cm Modeller</option>
                        <option value="112">   12 cm Modeller</option>
                    </select>
                </div>
            </div>

            <div class="vitraDesignSelectBox">
                <label for="sub3AlcipanDuvarlarIcin" id="alcipanDuvarlarIcinLabel" class="col-sm-2 control-label" style="width: auto;color: #4cae4c">Alçıpan Duvarlar için : </label>
                <div class="col-sm-2">
                    <select class="form-control" name="sub3AlcipanDuvarlarIcinName" onchange="sub3Value()" id="sub3AlcipanDuvarlarIcin" style="width: auto" >
                        <option value="0" style="color: red">Alçıpan Duvarlar için  </option>
                        <option value="113"> VitrAPro Modeller</option>
                        <option value="114">   8 cm Modeller</option>
                        <option value="115">   12 cm Modeller</option>
                    </select>
                </div>
            </div>
        </div>
        <h3 style="display: none;color: red" id="shInfo">Yuxaridaki kategoriyalarin boş buraxılması düzgün doldurulmamağı müştəri axtarışı zamanı prablemlər yaradacaq</h3>
        <input type="number" id="sub2Table" name="sub2TableName" value="0">
        <input type="number" id="sub3Table" name="sub3TableName" value="0">
        <input type="button" class="bg-primary" style="float: right;" value="Növbəti" id="nextLevel">

                                 <%--E N D   S U B 3   T A B L E--%>

                                <%--B O T T O M       C A T E G O R Y--%>
        <div id="bootomInfo" style="display: none;">
        <div class="vitraDesignSelectBox">
            <label for="seriCesitleri" class="col-sm-2 control-label" style="width: auto">Seri çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="seriCesitleriName" id="seriCesitleri" style="width: auto" >

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="renkCesitleri" class="col-sm-2 control-label" style="width: auto">Renk çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="renkCesitleriName" id="renkCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="ebatCesitleri" class="col-sm-2 control-label" style="width: auto">Ebat çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="ebatCesitleriName" id="ebatCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="tarzCesitleri" class="col-sm-2 control-label" style="width: auto">Tarz çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="tarzCesitleriName" id="tarzCesitleri" style="width: auto">
                    <option value="0" style="color: red">Tarz çeşitleri seçiniz</option>
                    <option value="65">Sade ve Zamansız</option>
                    <option value="66">Şık ve Sıcak</option>
                    <option value="67">Özgün ve Modern</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="genislikCesitleri" class="col-sm-2 control-label" style="width: auto">Genişlik çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="genislikCesitleriName" id="genislikCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="derinlikCesitleri" class="col-sm-2 control-label" style="width: auto">Derinlik çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="derinlikCesitleriName" id="derinlikCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="yukseklikCesitleri" class="col-sm-2 control-label" style="width: auto">Yükseklik çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="yukseklikCesitleriName" id="yukseklikCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="sekilCesitleri" class="col-sm-2 control-label" style="width: auto">Şekil çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="sekilCesitleriName" id="sekilCesitleri" style="width: auto">
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
            <label for="montajTipiCesitleri" class="col-sm-2 control-label" style="width: auto">Montaj tipi çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="montajTipiCesitleriName" id="montajTipiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="baglantiTipiCesitleri" class="col-sm-2 control-label" style="width: auto">Bağlantı tipi
                çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="baglantiTipiCesitleriName" id="baglantiTipiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="yikamaSeceneyiCesitleri" class="col-sm-2 control-label" style="width: auto">Yıkama seçeneyi
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="yikamaSeceneyiCesitleriName" id="yikamaSeceneyiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="kapakTasarimiCesitleri" class="col-sm-2 control-label" style="width: auto">Kapak tasarırımı
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="kapakTasarimiCesitleriName" id="kapakTasarimiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="gucKaynagiCesitleri" class="col-sm-2 control-label" style="width: auto">Güç kaynağı çeşitleri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="gucKaynagiCesitleriName" id="gucKaynagiCesitleri" style="width: auto">
                    <option value="0" style="color: red">Güç kaynağı çeşitleri seçiniz</option>
                    <option value="118">Pilli</option>
                    <option value="119">Elektrikli</option>
                    <option value="181">Tesisat sıcak suyu</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="yavasKapanirCesitleri" class="col-sm-2 control-label" style="width: auto">Nasıl kapanıyor ?
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="yavasKapanirCesitleriName" id="yavasKapanirCesitleri" style="width: auto">
                    <option value="0" style="color: red">Kapanma tarzı</option>
                    <option value="153">Yavaş kapanır var</option>
                    <option value="154">Yavaş kapanır yok</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="bunyeTipiCesitleri" class="col-sm-2 control-label" style="width: auto">Bünye tipi seçiniz
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="bunyeTipiCesitleriName" id="bunyeTipiCesitleri" style="width: auto">
                    <option value="0" style="color: red">Bünye tipi seçiniz</option>
                    <option value="156">Porselen</option>
                    <option value="157">Cam</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="akrilikPlakaCesitleri" class="col-sm-2 control-label" style="width: auto">Akrılık plaka seçiniz
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="akrilikPlakaCesitleriName" id="akrilikPlakaCesitleri" style="width: auto">
                    <option value="0" style="color: red">Akrılık plaka seçiniz</option>
                    <option value="367">Okyanus</option>
                    <option value="368">Alba</option>
                    <option value="369">Beyaz</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="kapakYonuCesitleri" class="col-sm-2 control-label" style="width: auto">Kapak yönü : </label>
            <div class="col-sm-2">
                <select class="form-control" name="kapakYonuCesitleriName" id="kapakYonuCesitleri" style="width: auto">
                    <option value="0" style="color: red">Kapak yönü seçiniz</option>
                    <option value="261">Sağ</option>
                    <option value="262">Sol</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="kapakRengiCesitleri" class="col-sm-2 control-label" style="width: auto">Kapak rengi : </label>
            <div class="col-sm-2">
                <select class="form-control" name="kapakRengiCesitleriName" id="kapakRengiCesitleri" style="width: auto">
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
            <label for="duvarYerlesimCesitleri" class="col-sm-2 control-label" style="width: auto">Duvar yerleşim yeri
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="duvarYerlesimCesitleriName" id="duvarYerlesimCesitleri" style="width: auto">
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
            <label for="kalinlikCesitleri" class="col-sm-2 control-label" style="width: auto">Kalınlık : </label>
            <div class="col-sm-2">
                <select class="form-control" name="kalinlikCesitleriName" id="kalinlikCesitleri" style="width: auto">
                    <option value="0" style="color: red">Kalınlık</option>
                    <option value="477">3.5 mm</option>
                    <option value="478">2.2 mm</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="normalCesitleri" class="col-sm-2 control-label" style="width: auto">Eğim : </label>
            <div class="col-sm-2">
                <select class="form-control" name="normalCesitleriName" id="normalCesitleri" style="width: auto">
                    <option value="0" style="color: red">Eğim</option>
                    <option value="501">Normal</option>
                    <option value="502">Düşük</option>
                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="hidromasajSeceneyiCesitleri" class="col-sm-2 control-label" style="width: auto">Hidromasaj
                Seçeneği
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="hidromasajSeceneyiCesitleriName" id="hidromasajSeceneyiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="uygulamaSeceneyiCesitleri" class="col-sm-2 control-label" style="width: auto">Uygulama Seçeneği
                çeşitleri : </label>
            <div class="col-sm-2">
                <select class="form-control" name="uygulamaSeceneyiCesitleriName" id="uygulamaSeceneyiCesitleri" style="width: auto">

                </select>
            </div>
        </div>

        <div class="vitraDesignSelectBox">
            <label for="fonksyonSayisiCesitleri" class="col-sm-2 control-label" style="width: auto">Fonksyon sayisi
                seçin
                : </label>
            <div class="col-sm-2">
                <select class="form-control" name="fonksyonSayisiCesitleriName" id="fonksyonSayisiCesitleri" style="width: auto">
                    <option value="0" style="color: red">Fonksyon sayı</option>
                    <option value="358">1F</option>
                    <option value="359">3F</option>
                    <option value="360">5F</option>
                </select>
            </div>
        </div>


        <div class="checkbox">
            <label><input type="radio" name="cocuklarIcin" value="1">Çocuklar için </label>
            <label><input type="radio" name="cocuklarIcin" value="0" checked>Çocuklar için diyil </label>
        </div>

        <div class="checkbox">
            <label><input type="radio" value="1" name="yeniIcin" checked>Yeni </label>
            <label><input type="radio" value="0" name="yeniIcin">Yeni gibi seçmiyorum</label>
        </div>
        <br><br>
        <span style="color: red">Profil şəkli (bir ədəd seçilə bilər)  : </span><input type="file" name="profil"><br><br>
        <div style="display: none"><span style="color: red">Producta aid digər şəkillər (istənilən sayda seçilə bilər)</span><input type="file" name="not_profil" multiple></div><br><br>
        <%--<input type="submit" class="btn-success" value="Məlumatları daxil edin">--%>
            <h3 class="chsecVal" style="color: red"></h3>

            <button type="button" class="btn btn-primary" id="vitraBtn_insert">Məlumatları daxil edin</button>
            </div>
    </form>

</div>

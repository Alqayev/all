package az.kt.pac.util;

/**
 * Created by TALEH on 11/8/2016.
 */
public class Query {
    public static final String loadSeriSelectBox="{call loadSeriSelectBox()}";
    public static final String loadRenkSelectBox="{call loadRenkSelectBox()}";
    public static final String loadEbatSelectBox="{call loadEbatSelectBox()}";
    public static final String loadGenislikSelectBox="{call loadGenislikSelectBox()}";
    public static final String loadDerinlikSelectBox="{call loadDerinlikSelectBox()}";
    public static final String loadYukseklikSelectBox="{call loadYukseklikSelectBox()}";
    public static final String loadMontajTipiSelectBox="{call loadMontajTipiSelectBox()}";
    public static final String loadBaglantiTipiSelectBox="{call loadBaglantiTipiSelectBox()}";
    public static final String loadYikamaSeceneyiSelectBox="{call loadYikamaSeceneyiSelectBox()}";
    public static final String loadHidromasajSeceneyiSelectBox="{call loadHidromasajSeceneyiSelectBox()}";
    public static final String loadUygulamaSeceneyiSelectBox="{call loadUygulamaSeceneyiSelectBox()}";
    public static final String loadKapakTasarimiSelectBox="{call loadKapakTasarimiSelectBox()}";
    public static final String loadSeramikBanyoLavaboSelectBox="{call loadSeramikBanyoLavaboSelectBox()}";
    public static final String loadSeramikBanyoKlozetSelectBox="{call loadSeramikBanyoKlozetSelectBox()}";
    public static final String loadSeramikTamamlayiciUrunSelectBox="{call loadSeramikTamamlayiciSelectBox()}";
    public static final String loadSeramikYasliBedenselEngelliUrunSelectBox="{call loadSeramikYasliBedenselEngelliSelectBox()}";
    public static final String loadSeramikArtemaAksesuarSelectBox="{call loadSeramikArtemaAksesuarSelectBox()}";
    public static final String loadsub3ArtemalarSelectBox="{call loadsub3ArtemalarSelectBox()}";
    public static final String loadsub3AksesuarlarSelectBox="{call loadsub3AksesuarlarSelectBox()}";

    public static final String addVitraProduct="{call addVitraProduct(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
    public static final String addVitraProductPic="{call addVitraProductPic(?,?,?,?,?)}";
    public static final String addVitraProductPicBottom="{call addVitraProductPicture_bottom(?,?,?)}";
    public static final String editVitraProduct="{call editVitraProduct(?,?)}";

    public static final String updateVitraProduct="{call updateVitraProduct(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
    public static final String deleteVitraProduct="{call deleteVitraProduct(?,?)}";
    public static final String selectVitraProduct="{call selectVitraProduct()}";
    public static final String selectProduct_byCod="{call selectProduct_byCod(?,?,?)}";

                                                    //    G E B E R I T

    public static final String loadGeberitSub1SelectBox="{call loadGeberitSub1SelectBox()}";
    public static final String loadGeberitSub2FotoselliOptgroupSelectBox="{call loadGeberitSub2FotoselliOptgroupSelectBox()}";
    public static final String loadGeberitSub2KonstrukiyonMontajOptgroupSelectBox="{call loadGeberitSub2KonstrukiyonMontajOptgroupSelectBox()}";
    public static final String checkedKodForInsert_geberit="{call checkedKodForInsert_geberit(?,?)}";

    public static final String addGeberitProduct="{call addGeberitProduct(?,?,?,?,?,?,?,?,?)}";

    public static final String selectGeberitProduct="{call selectGeberitProduct()}";
    public static final String selectGeberitProduct_byCod="{call selectGeberitProduct_byCod(?)}";

    public static final String deleteGeberitProduct="{call deleteGeberitProduct(?)}";

    public static final String editGeberitProduct="{call editGeberitProduct(?)}";

    public static final String updateGeberitProduct="{call updateGeberitProduct(?,?,?,?,?,?,?,?,?,?,?)}";



                                                //    H A N S G R O H E    M A R K A S I

    public static final String loadHangroheSub2SelectBox="{call loadHangroheSub2SelectBox()}";
    public static final String loadHangroheTalisOptGrp="{call loadHangroheTalisOptGrp()}";

    public static final String addHansgroheProduct="{call addHansgroheProduct(?,?,?,?,?,?,?,?,?,?)}";

    public static final String selectHansgroheProduct="{call selectHansgroheProduct()}";

    public static final String deleteHansgrohe="{call deleteHansgrohe(?)}";

    public static final String editHansgroheProduct="{call editHansgroheProduct(?)}";

    public static final String updateHansgroheProduct="{call updateHansgroheProduct(?,?,?,?,?,?,?,?,?,?,?,?)}";


                                                //     A X O R  M A R K A S I

    public static final String loadAxorSub2SelectBox="{call loadAxorSub2SelectBox()}";
    public static final String loadAxorAccesoriesOptGrpSelectBox="{call loadAxorAccesoriesOptGrpSelectBox()}";

    public static final String addAxorProduct="{call addAxorProduct(?,?,?,?,?,?,?,?,?,?)}";

    public static final String selectAxorProduct="{call selectAxorProduct()}";

    public static final String deleteAxor="{call deleteAxor(?)}";
    public static final String editAxorProduct="{call editAxorProduct(?)}";

    public static final String checkedKodForUpdate="{call checkedKodForUpdate(?,?,?)}";

    public static final String updateAxorProduct="{call updateAxorProduct(?,?,?,?,?,?,?,?,?,?,?,?)}";


                                             //     F R A N K E   M A R K A S I

    public static final String loadFrankeSub1SelectBox="{call loadFrankeSub1SelectBox()}";

    public static final String addFrankeProduct="{call addFrankeProduct(?,?,?,?,?,?,?,?,?)}";

    public static final String selectFrankeProduct="{call selectFrankeProduct()}";

    public static final String editFrankeProduct="{call editFrankeProduct(?)}";

    public static final String updateFrankeProduct="{call updateFrankeProduct(?,?,?,?,?,?,?,?,?,?,?)}";

    public static final String addTop10Product="{call addTop10Product(?,?,?,?,?,?,?,?,?,?)}";



//    T O P  10
    public static final String selectTop10Product="{call selectTop10Product(?)}";
    public static final String editTop10Product="{call editTop10Product(?,?)}";
    public static final String updateTop10Product="{call updateTop10Product(?,?,?,?,?,?,?,?,?,?,?)}";
    public static final String loadTop10Sub2SelectBox="{call loadTop10Sub2SelectBox(?)}";


}

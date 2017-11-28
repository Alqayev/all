package az.kt.pac.dao;

import az.kt.pac.model.Model;

import java.util.List;

/**
 * Created by TALEH on 11/7/2016.
 */
public interface Dao {
    public String insertVitraProduct();

    List<Model> loadSeriSelectBox();

    List<Model> loadRenkSelectBox();

    List<Model> loadEbatSelectBox();

    List<Model> loadGenislikSelectBox();

    List<Model> loadDerinlikSelectBox();

    List<Model> loadYukseklikSelectBox();

    List<Model> loadMontajTipiSelectBox();

    List<Model> loadBaglantiTipiSelectBox();

    List<Model> loadYikamaSeceneyiSelectBox();

    List<Model> loadHidromasajSeceneyiSelectBox();

    List<Model> loadUygulamaSeceneyiSelectBox();

    List<Model> loadKapakTasarimiSelectBox();

    List<Model> loadSeramikBanyoLavaboSelectBox();

    List<Model> loadSeramikBanyoKlozetSelectBox();

    List<Model> loadSeramikTamamlayiciUrunSelectBox();

    List<Model> loadSeramikYasliBedenselEngelliUrunSelectBox();

    List<Model> loadSeramikArtemaAksesuarSelectBox();

    List<Model> loadSub3ArmaturlarSelectBox();

    List<Model> loadSub3AksesuarlarSelectBox();

        String addVitraProduct(Model model);

    Model editVitraProduct(String kod);

    String updateVitraProduct(Model model);

    String deleteVitraProduct(String kod);

    List<Model> selectVitraProduct();

    List<Model> selectProduct_byCod(String kod, int id, int sub1);

    List<Model> loadGeberitSub1_selectbox();

    List<Model> loadGeberitSub2FotoselliOptGroup_selectbox();

    List<Model> loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox();

    Model checkedGeberitKodForInsert(String kod);

    String insertGeberit(Model model);

    List<Model> selectGeberit();

    List<Model> selectGeberit_byCod(String kod);

    void deleteGeberit(String kod);

    Model editGeberit(String kod);

    String updateGeberit(Model model);

    List<Model> loadHansgroheSub2SelectBox();

    List<Model> loadHansgroheTalisOptGrp();

    String insertHansgrohe(Model model);

    List<Model> selectHansgroheProduct();

    void deleteHansgrohe(String kod);

    Model editHansgrohe(String kod);

    String updateHansgrohe(Model model);

    List<Model> loadAxorSub2SelectBox();

    List<Model> loadAxorAccesoriesSelectBox();

    String insertAxor(Model model);

    List<Model> selectAxorProduct();

    void deleteAxor(String kod);

    Model editAxor(String kod);

    Model checkedKodForUpdate(String kod, int id);

    String updateAxor(Model model);

    List<Model> loadFrankeSub1SelectBox();

    String insertFranke(Model model);

    List<Model> selectFranke();

    Model editFranke(String kod);

    String updateFranke(Model model);

    String insertTop10(Model model);

    List<Model> selectTop10(int id);

    Model editTop10Product(String kod, int topId);

    String updateTop10(Model model);

    List<Model> loadTopSub2SelectBox(int sub2);
}

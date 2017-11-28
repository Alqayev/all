package az.kt.pac.service;

import az.kt.pac.dao.Dao;
import az.kt.pac.model.Model;

import java.util.List;

/**
 * Created by TALEH on 11/7/2016.
 */
public class ServiceImpl implements Service {
    Dao dao;
    public ServiceImpl(Dao dao) {
        this.dao = dao;
    }

    @Override
    public String insertVitraProduct() {
        return dao.insertVitraProduct();
    }

    @Override
    public List<Model> loadSeriSelectBox() {
         return dao.loadSeriSelectBox();
    }

    @Override
    public List<Model> loadRenkSelectBox() {
        return dao.loadRenkSelectBox();
    }

    @Override
    public List<Model> loadEbatSelectBox() {
        return dao.loadEbatSelectBox();
    }

    @Override
    public List<Model> loadGenislikSelectBox() {
        return dao.loadGenislikSelectBox();
    }

    @Override
    public List<Model> loadDerinlikSelectBox() {
        return dao.loadDerinlikSelectBox();
    }

    @Override
    public List<Model> loadYukseklikSelectBox() {
        return dao.loadYukseklikSelectBox();
    }

    @Override
    public List<Model> loadMontajTipiSelectBox() {
        return dao.loadMontajTipiSelectBox();
    }

    @Override
    public List<Model> loadBaglantiTipiSelectBox() {
        return  dao.loadBaglantiTipiSelectBox();
    }

    @Override
    public List<Model> loadYikamaSeceneyiSelectBox() {
        return dao.loadYikamaSeceneyiSelectBox();
    }

    @Override
    public List<Model> loadHidromasajSeceneyiSelectBox() {
        return dao.loadHidromasajSeceneyiSelectBox();
    }

    @Override
    public List<Model> loadUygulamaSeceneyiSelectBox() {
        return dao.loadUygulamaSeceneyiSelectBox();
    }

    @Override
    public List<Model> loadKapakTasarimiSelectBox() {
        return dao.loadKapakTasarimiSelectBox();
    }

    @Override
    public List<Model> loadSeramikBanyoLavaboSelectBox() {
        return dao.loadSeramikBanyoLavaboSelectBox();
    }

    @Override
    public List<Model> loadSeramikBanyoKlozetSelectBox() {
        return dao.loadSeramikBanyoKlozetSelectBox();
    }

    @Override
    public List<Model> loadSeramikTamamlayiciUrunSelectBox() {
        return dao.loadSeramikTamamlayiciUrunSelectBox();
    }

    @Override
    public List<Model> loadSeramikYasliBedenselEngelliUrunSelectBox() {
        return dao.loadSeramikYasliBedenselEngelliUrunSelectBox();
    }

    @Override
    public List<Model> loadSeramikArtemaAksesuarSelectBox() {
        return dao.loadSeramikArtemaAksesuarSelectBox();
    }

    @Override
    public List<Model> loadSub3ArmaturlarSelectBox() {
        return dao.loadSub3ArmaturlarSelectBox();
    }

    @Override
    public List<Model> loadSub3AksesuarlarSelectBox() {
        return dao.loadSub3AksesuarlarSelectBox();
    }

    @Override
    public String addVitraProduct(Model model) {
        return dao.addVitraProduct(model);
    }

    @Override
    public Model editVitraProduct(String kod) {
        return dao.editVitraProduct(kod);
    }

    @Override
    public String updateVitraProduct(Model model) {
        return dao.updateVitraProduct(model);
    }

    @Override
    public String deleteVitraProduct(String kod) {
        return dao.deleteVitraProduct(kod);
    }

    @Override
    public List<Model> selectVitraProduct() {
        return dao.selectVitraProduct() ;
    }

    @Override
    public List<Model> selectProduct_byCod(String kod,int id,int sub1) {
        return dao.selectProduct_byCod(kod,id,sub1) ;
    }

    @Override
    public List<Model> loadGeberitSub1_selectbox() {
        return dao.loadGeberitSub1_selectbox();
    }

    @Override
    public List<Model> loadGeberitSub2FotoselliOptGroup_selectbox() {
        return dao.loadGeberitSub2FotoselliOptGroup_selectbox();
    }

    @Override
    public List<Model> loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox() {
        return dao.loadGeberitSub2KonstrukiyonMontajOptGroup_selectbox();
    }

    @Override
    public Model checkedGeberitKodForInsert(String kod) {
        return dao.checkedGeberitKodForInsert(kod);
    }

    @Override
    public String insertGeberit(Model model) {
        return dao.insertGeberit(model);
    }

    @Override
    public List<Model> selectGeberit() {
        return dao.selectGeberit();
    }

    @Override
    public List<Model> selectGeberit_byCod(String kod) {
         return dao.selectGeberit_byCod(kod);
    }

    @Override
    public void deleteGeberit(String kod) {
        dao.deleteGeberit(kod);
    }

    @Override
    public Model editGeberit(String kod) {
        return dao.editGeberit(kod);
    }

    @Override
    public String updateGeberit(Model model) {
        return dao.updateGeberit(model);
    }

    @Override
    public List<Model> loadHansgroheSub2SelectBox() {
        return dao.loadHansgroheSub2SelectBox();
    }

    @Override
    public List<Model> loadHansgroheTalisOptGrp() {
        return dao.loadHansgroheTalisOptGrp();
    }

    @Override
    public String insertHansgrohe(Model model) {
        return dao.insertHansgrohe(model);
    }

    @Override
    public List<Model> selectHansgroheProduct() {
        return dao.selectHansgroheProduct();
    }

    @Override
    public void deleteHansgrohe(String kod) {
        dao.deleteHansgrohe( kod);
    }

    @Override
    public Model editHansgrohe(String kod) {
        return dao.editHansgrohe(kod);
    }

    @Override
    public String updateHansgrohe(Model model) {
        return dao.updateHansgrohe(model);
    }

    @Override
    public List<Model> loadAxorSub2SelectBox() {
        return dao.loadAxorSub2SelectBox() ;
    }

    @Override
    public List<Model> loadAxorAccesoriesSelectBox() {
        return dao.loadAxorAccesoriesSelectBox();
    }

    @Override
    public String insertAxor(Model model) {
        return dao.insertAxor(model);
    }

    @Override
    public List<Model> selectAxorProduct() {
        return dao. selectAxorProduct();
    }

    @Override
    public void deleteAxor(String kod) {
        dao.deleteAxor(kod);
    }

    @Override
    public Model editAxor(String kod) {
        return dao.editAxor(kod);
    }

    @Override
    public Model checkedKodForUpdate(String kod, int id) {
        return dao.checkedKodForUpdate(kod,id);
    }

    @Override
    public String updateAxor(Model model) {
        return dao.updateAxor(model);
    }

    @Override
    public List<Model> loadFrankeSub1SelectBox() {
        return dao.loadFrankeSub1SelectBox();
    }

    @Override
    public String insertFranke(Model model) {
        return dao.insertFranke(model);
    }

    @Override
    public List<Model> selectFranke() {
        return dao.selectFranke();
    }

    @Override
    public Model editFranke(String kod) {
        return dao. editFranke(kod);
    }

    @Override
    public String updateFranke(Model model) {
        return dao.updateFranke(model);
    }

    @Override
    public String insertTop10(Model model) {
        return dao.insertTop10(model);
    }

    @Override
    public List<Model> selectTop10(int id) {
        return dao.selectTop10(id);
    }

    @Override
    public Model editTop10Product(String kod, int topId) {
        return dao.editTop10Product(kod, topId) ;
    }

    @Override
    public String updateTop10(Model model) {
        return dao.updateTop10( model) ;
    }

    @Override
    public List<Model> loadTopSub2SelectBox(int sub2) {
        return dao.loadTopSub2SelectBox(sub2);
    }
}

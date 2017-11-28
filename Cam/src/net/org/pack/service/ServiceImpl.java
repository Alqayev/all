package net.org.pack.service;

import net.org.pack.dao.Dao;
import net.org.pack.model.Model;

import java.util.List;

/**
 * Created by TALEH on 11.10.2016.
 */
public class ServiceImpl implements Service {
    Dao dao;

    public ServiceImpl(Dao dao) {
        this.dao = dao;
    }

    @Override
    public String contactMet(Model model) {
        return dao.contactMet(model);
    }

    @Override
    public void insertUserInfo(String name, String email) {
        dao.insertUserInfo(name, email);
    }

    @Override
    public Model checkLogin(String name, String cor) {
        return dao.checkLogin( name,  cor);
    }

    @Override
    public void insertCategoryPic(Model model) {
        dao.insertCategoryPic( model);
    }

    @Override
    public void insertOurWorkPic(Model model) {
        dao.insertOurWorkPic( model);
    }

    @Override
    public List<Model> showSurmali() {
        return dao.showSurmali();
    }

    @Override
    public List<Model> showpardali() {
        return dao.showpardali();
    }

    @Override
    public List<Model> shushelenmeSabit() {
        return dao.shushelenmeSabit();
    }

    @Override
    public List<Model> daxiliarakesme() {
        return dao.daxiliarakesme();
    }

    @Override
    public List<Model> silikoncebhe() {
        return dao.silikoncebhe();
    }

    @Override
    public List<Model> qapaqlicebhe() {
        return dao.qapaqlicebhe();
    }

    @Override
    public List<Model> monetsistem() {
        return dao.monetsistem();
    }

    @Override
    public List<Model> izosistem() {
        return dao.izosistem();
    }

    @Override
    public List<Model> aluwood() {
        return dao.aluwood();
    }

    @Override
    public List<Model> ytavan() {
        return dao.ytavan();
    }

    @Override
    public List<Model> camtavan() {
        return dao.camtavan();
    }

    @Override
    public List<Model> tent() {
        return dao.tent();
    }

    @Override
    public List<Model> skylight() {
        return dao.skylight();
    }

    @Override
    public List<Model> polikarbonant() {
        return dao.polikarbonant();
    }

    @Override
    public List<Model> membran() {
        return dao.membran();
    }

    @Override
    public List<Model> hovuzlar() {
        return dao.hovuzlar();
    }

    @Override
    public List<Model> alakmahaccar() {
        return dao.alakmahaccar();
    }

    @Override
    public List<Model> pasakmahaccar() {
        return dao.pasakmahaccar();
    }

    @Override
    public List<Model> asqili() {
        return dao.asqili();
    }

    @Override
    public List<Model> pompali() {
        return dao.pompali();
    }

    @Override
    public List<Model> fotoselli() {
        return dao.fotoselli();
    }

    @Override
    public List<Model> petleliqapilar() {
        return dao.petleliqapilar();
    }

    @Override
    public List<Model> bizimportfolio(int id) {
        return dao.bizimportfolio(id);
    }
}

package net.org.pack.service;

import net.org.pack.dao.Dao;
import net.org.pack.model.Model;

import java.util.List;

/**
 * Created by TALEH on 11.10.2016.
 */
public interface Service {
    public String contactMet(Model model);

    public void insertUserInfo(String name, String email);

    Model checkLogin(String name, String cor);

    public void insertCategoryPic(Model model);

    public void insertOurWorkPic(Model model);

    List<Model> showSurmali();

    List<Model> showpardali();

    List<Model> shushelenmeSabit();

    List<Model> daxiliarakesme();

    List<Model> silikoncebhe();

    List<Model> qapaqlicebhe();

    List<Model> monetsistem();

    List<Model> izosistem();

    List<Model> aluwood();

    List<Model> ytavan();

    List<Model> camtavan();

    List<Model> tent();

    List<Model> skylight();

    List<Model> polikarbonant();

    List<Model> membran();

    List<Model> hovuzlar();

    List<Model> alakmahaccar();

    List<Model> pasakmahaccar();

    List<Model> asqili();

    List<Model> pompali();

    List<Model> fotoselli();

    List<Model> petleliqapilar();

    List<Model> bizimportfolio(int id);
}

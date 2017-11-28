package net.org.pack.dao;

import net.org.pack.model.Model;

import java.util.List;

/**
 * Created by TALEH on 11.10.2016.
 */
public interface Dao {
    public String contactMet(Model model);

    public void insertUserInfo(String name, String email);

    Model checkLogin(String name, String cor);

    void insertCategoryPic(Model model);

    void insertOurWorkPic(Model model);

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

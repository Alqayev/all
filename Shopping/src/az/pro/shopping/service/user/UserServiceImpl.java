package az.pro.shopping.service.user;

import az.pro.shopping.dao.user.UserDao;
import az.pro.shopping.model.ModelShop;
import az.pro.shopping.model.user.UserModel;

import java.util.List;

/**
 * Created by TALEH on 06.07.2016.
 */
public class UserServiceImpl implements UserService{
    UserDao dao;

    public UserServiceImpl(UserDao dao) {
        this.dao = dao;
    }

    @Override
    public void registrUser(UserModel user) {
        dao.registrUser(user);
    }

    @Override
    public String checkEmail(String email) {
        return dao.checkEmail(email);
    }

    @Override
    public UserModel checkLogin(String email, String password) {
        return dao.checkLogin(email,password);
    }

    @Override
    public long byId(String email, String cor) {
        return dao.byId(email,cor);
    }

    @Override
    public void registrBonuce(UserModel user) {
        dao.registrBonuce(user);
    }

    @Override
    public long byIdForEmail(String email) {
        return dao.byIdForEmail(email);
    }

    @Override
    public void changePassword(long id, String updatePass,String email,String newPassword) {
        dao.changePassword(id,updatePass,email,newPassword);
    }

    @Override
    public List<UserModel> getProductInfo() {
        return dao.getProductInfo();
    }

    @Override
    public UserModel orderedInsert(UserModel user) {
        return dao.orderedInsert(user);
    }

    @Override
    public String chBonId(long id) {
        return dao. chBonId( id);
    }

    @Override
    public UserModel orderedAddress(long b) {
        return dao.orderedAddress(b);
    }

    @Override
    public UserModel getPicture(long id) {
        return dao.getPicture(id);
    }

    @Override
    public void contactUs(String name,String email,String subject,String text) {
        dao.contactUs( name,email,subject,text);
    }

    @Override
    public List<ModelShop> productLibrary() {
        return dao.productLibrary();
    }

    @Override
    public List<UserModel> advSearchUserProduct(UserModel user) {
        return dao.advSearchUserProduct( user);
    }

    @Override
    public List<ModelShop> insertCheckBox() {
        return dao.insertCheckBox();
    }
}

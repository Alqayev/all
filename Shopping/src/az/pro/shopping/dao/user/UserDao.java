package az.pro.shopping.dao.user;

import az.pro.shopping.model.ModelShop;
import az.pro.shopping.model.user.UserModel;

import java.util.List;

/**
 * Created by TALEH on 06.07.2016.
 */
public interface UserDao {
    public void registrUser(UserModel user);
    public String checkEmail(String email);

    public UserModel checkLogin(String email, String password);

    public long byId(String email, String cor);

    public void registrBonuce(UserModel user);

    public long byIdForEmail(String email);

    public void changePassword(long id, String updatePass,String email,String newPassword);

    public List<UserModel> getProductInfo();

    public UserModel orderedInsert(UserModel user);

    public String chBonId(long id);

    public UserModel orderedAddress(long b);

    public UserModel getPicture(long id);

    public void contactUs(String name,String email,String subject,String text);

    public List<ModelShop> productLibrary();

    public List<UserModel> advSearchUserProduct(UserModel user);

    public List<ModelShop> insertCheckBox();
}

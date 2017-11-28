package az.pro.shopping.service;

import az.pro.shopping.model.ModelShop;

import java.util.List;

/**
 * Created by TALEH on 17.06.2016.
 */
public interface ServiceShop {
    public List<ModelShop> getAdminShoppingList();

    public List<ModelShop> getAdminOrderedList();

    public List<ModelShop> getAdminProductList();

    public List<ModelShop> getAdminBonuceList();

    public ModelShop getAdminEditCustomerList(int id);

    public ModelShop getAdminEditProductList(int id);

    public ModelShop getAdminEditBonuceList(int id);

    public void updateCustomerList(ModelShop shop);

    public void updateProductList(ModelShop shop);

    public void updateCustomerPicture(long id, String filePath);

    public void updateBonuceList(ModelShop shop);

    public void updateOrderedActive(int active, long id);

    public void insertProductPicture(ModelShop shop);

    public List<ModelShop> customerAdvSercah(ModelShop shop);

    public List<ModelShop> orderedAdvSercah(ModelShop shop);

    public List<ModelShop> productAdvSercah(ModelShop shop);

    public List<ModelShop> bonuceAdvSercah(ModelShop shop);


    public void sendCustomerMail(ModelShop shop);

    public void sendAllCustomerMail(ModelShop shop);

    public List<ModelShop> trSendMail();

    public void trSendMailUpdateActive(long id);

    public List<ModelShop> trOldUsersSendMail();

    public void trOldMailUpdateActive(long id);

    public List<ModelShop> trOldTwoMonthUsersSendMail();

    public void trOldTwoMonthMailUpdateActive(long id);

    public List<ModelShop> customerGroupBy();

    public List<ModelShop> orderedGroupBy();

    public List<ModelShop> productGroupBy();

    public List<ModelShop> bonuceGroupBy();

    public List<ModelShop> orderedDeliveryDateGroupBy();

    public List<ModelShop> insertCheckBox();

    public List<ModelShop> chartAction();
}

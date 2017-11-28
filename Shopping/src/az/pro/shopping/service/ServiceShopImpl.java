package az.pro.shopping.service;

import az.pro.shopping.dao.DaoShop;
import az.pro.shopping.model.ModelShop;

import java.util.List;

/**
 * Created by TALEH on 17.06.2016.
 */
public class ServiceShopImpl implements ServiceShop {
    DaoShop dao;

    public ServiceShopImpl(DaoShop dao) {
        this.dao = dao;
    }

    @Override
    public List<ModelShop> getAdminShoppingList() {
        return dao.getAdminShoppingList();
    }

    @Override
    public List<ModelShop> getAdminOrderedList() {
        return dao.getAdminOrderedList();
    }

    @Override
    public List<ModelShop> getAdminProductList() {
        return dao.getAdminProductList();
    }

    @Override
    public List<ModelShop> getAdminBonuceList() {
        return dao.getAdminBonuceList();
    }

    @Override
    public ModelShop getAdminEditCustomerList(int id) {
        return dao.getAdminEditCustomerList(id);
    }

    @Override
    public ModelShop getAdminEditProductList(int id) {
        return dao.getAdminEditProductList(id);
    }

    @Override
    public ModelShop getAdminEditBonuceList(int id) {
        return dao.getAdminEditBonuceList(id);
    }

    @Override
    public void updateCustomerList(ModelShop shop) {
       dao.updateCustomerList(shop);
    }

    @Override
    public void updateProductList(ModelShop shop) {
        dao.updateProductList(shop);
    }

    @Override
    public void updateCustomerPicture(long id, String filePath) {
        dao.updateCustomerPicture(id,filePath);
    }

    @Override
    public void updateBonuceList(ModelShop shop) {
        dao.updateBonuceList(shop);
    }

    @Override
    public void updateOrderedActive(int active, long id) {
        dao.updateOrderedActive(active,id);
    }

    @Override
    public List<ModelShop> bonuceAdvSercah(ModelShop shop) {
        return dao.bonuceAdvSercah(shop);
    }

    @Override
    public void insertProductPicture(ModelShop shop) {
        dao.insertProductPicture(shop);
    }

    @Override
    public List<ModelShop> customerAdvSercah(ModelShop shop) {
        return dao.customerAdvSercah(shop);
    }

    @Override
    public List<ModelShop> orderedAdvSercah(ModelShop shop) {
        return dao.orderedAdvSercah(shop);
    }

    @Override
    public List<ModelShop> productAdvSercah(ModelShop shop) {
        return dao.productAdvSercah(shop);
    }

    @Override
    public void sendCustomerMail(ModelShop shop) {
        dao.sendCustomerMail(shop);
    }

    @Override
    public void sendAllCustomerMail(ModelShop shop) {
        dao.sendAllCustomerMail(shop);
    }

    @Override
    public List<ModelShop> trSendMail() {
        return dao.trSendMail();
    }

    @Override
    public void trSendMailUpdateActive(long id) {
        dao.trSendMailUpdateActive(id);
    }

    @Override
    public List<ModelShop> trOldUsersSendMail() {
        return dao.trOldUsersSendMail();
    }

    @Override
    public void trOldMailUpdateActive(long id) {
        dao.trOldMailUpdateActive(id);
    }

    @Override
    public List<ModelShop> trOldTwoMonthUsersSendMail() {
        return dao.trOldTwoMonthUsersSendMail();
    }

    @Override
    public void trOldTwoMonthMailUpdateActive(long id) {
        dao.trOldTwoMonthMailUpdateActive(id);
    }

    @Override
    public List<ModelShop> customerGroupBy() {
        return dao.customerGroupBy();
    }

    @Override
    public List<ModelShop> orderedGroupBy() {
        return dao.orderedGroupBy();
    }

    @Override
    public List<ModelShop> productGroupBy() {
        return dao.productGroupBy();
    }

    @Override
    public List<ModelShop> bonuceGroupBy() {
        return dao.bonuceGroupBy();
    }

    @Override
    public List<ModelShop> orderedDeliveryDateGroupBy() {
        return dao.orderedDeliveryDateGroupBy();
    }

    @Override
    public List<ModelShop> insertCheckBox() {
       return  dao.insertCheckBox();
    }

    @Override
    public List<ModelShop> chartAction() {
        return dao.chartAction();
    }

//    @Override
//    public List<ModelShop> trUpdateSendMail() {
//        return dao.trUpdateSendMail();
//    }
}

package az.pro.shopping.model.user;

import java.util.Date;

/**
 * Created by TALEH on 06.07.2016.
 */
public class UserModel {
    private long primaryId;
    private String userName;
    private String userSurname;
    private String userEmail;
    private String userPass;
    private Date userLoginDate;
    private String userTask;

    private String bonuceName;
    private String bonucePass;
    private double bonuceQuontity;

    private long producId;
    private String productName;
    private double prouctPrice;
    private double productBonuceValue;
    private Date productImpDate;
    private String productPicture;

    private double minPrice;
    private double maxPrice;
    private double minBonVal;
    private double maxBonPrice;
    private int category;

    private String userMobil;
    private  String userAdditionalMob;
    private Date lastDateOfDelivery;
    private String userAddress;
    private int odrCount;

    private int dictId;
    private String dictName;
    private String dictValue;

    public long getPrimaryId() {
        return primaryId;
    }

    public void setPrimaryId(long primaryId) {
        this.primaryId = primaryId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSurname() {
        return userSurname;
    }

    public void setUserSurname(String userSurname) {
        this.userSurname = userSurname;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public Date getUserLoginDate() {
        return userLoginDate;
    }

    public void setUserLoginDate(Date userLoginDate) {
        this.userLoginDate = userLoginDate;
    }

    public String getUserTask() {
        return userTask;
    }

    public void setUserTask(String userTask) {
        this.userTask = userTask;
    }

    public String getBonuceName() {
        return bonuceName;
    }

    public void setBonuceName(String bonuceName) {
        this.bonuceName = bonuceName;
    }

    public String getBonucePass() {
        return bonucePass;
    }

    public void setBonucePass(String bonucePass) {
        this.bonucePass = bonucePass;
    }

    public double getBonuceQuontity() {
        return bonuceQuontity;
    }

    public void setBonuceQuontity(double bonuceQuontity) {
        this.bonuceQuontity = bonuceQuontity;
    }

    public long getProducId() {
        return producId;
    }

    public void setProducId(long producId) {
        this.producId = producId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProuctPrice() {
        return prouctPrice;
    }

    public void setProuctPrice(double prouctPrice) {
        this.prouctPrice = prouctPrice;
    }

    public double getProductBonuceValue() {
        return productBonuceValue;
    }

    public void setProductBonuceValue(double productBonuceValue) {
        this.productBonuceValue = productBonuceValue;
    }

    public Date getProductImpDate() {
        return productImpDate;
    }

    public void setProductImpDate(Date productImpDate) {
        this.productImpDate = productImpDate;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public double getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(double minPrice) {
        this.minPrice = minPrice;
    }

    public double getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(double maxPrice) {
        this.maxPrice = maxPrice;
    }

    public double getMinBonVal() {
        return minBonVal;
    }

    public void setMinBonVal(double minBonVal) {
        this.minBonVal = minBonVal;
    }

    public double getMaxBonPrice() {
        return maxBonPrice;
    }

    public void setMaxBonPrice(double maxBonPrice) {
        this.maxBonPrice = maxBonPrice;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public String getUserMobil() {
        return userMobil;
    }

    public void setUserMobil(String userMobil) {
        this.userMobil = userMobil;
    }

    public String getUserAdditionalMob() {
        return userAdditionalMob;
    }

    public void setUserAdditionalMob(String userAdditionalMob) {
        this.userAdditionalMob = userAdditionalMob;
    }

    public Date getLastDateOfDelivery() {
        return lastDateOfDelivery;
    }

    public void setLastDateOfDelivery(Date lastDateOfDelivery) {
        this.lastDateOfDelivery = lastDateOfDelivery;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public int getOdrCount() {
        return odrCount;
    }

    public void setOdrCount(int odrCount) {
        this.odrCount = odrCount;
    }

    public int getDictId() {
        return dictId;
    }

    public void setDictId(int dictId) {
        this.dictId = dictId;
    }

    public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName;
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "primaryId=" + primaryId +
                ", userName='" + userName + '\'' +
                ", userSurname='" + userSurname + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userPass='" + userPass + '\'' +
                ", userLoginDate=" + userLoginDate +
                ", userTask='" + userTask + '\'' +
                ", bonuceName='" + bonuceName + '\'' +
                ", bonucePass='" + bonucePass + '\'' +
                ", bonuceQuontity=" + bonuceQuontity +
                ", producId=" + producId +
                ", productName='" + productName + '\'' +
                ", prouctPrice=" + prouctPrice +
                ", productBonuceValue=" + productBonuceValue +
                ", productImpDate=" + productImpDate +
                ", productPicture='" + productPicture + '\'' +
                ", minPrice=" + minPrice +
                ", maxPrice=" + maxPrice +
                ", minBonVal=" + minBonVal +
                ", maxBonPrice=" + maxBonPrice +
                ", category=" + category +
                ", userMobil='" + userMobil + '\'' +
                ", userAdditionalMob='" + userAdditionalMob + '\'' +
                ", lastDateOfDelivery=" + lastDateOfDelivery +
                ", userAddress='" + userAddress + '\'' +
                ", odrCount=" + odrCount +
                ", dictId=" + dictId +
                ", dictName='" + dictName + '\'' +
                ", dictValue='" + dictValue + '\'' +
                '}';
    }
}

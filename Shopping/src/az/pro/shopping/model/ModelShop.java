package az.pro.shopping.model;

import java.util.Date;

/**
 * Created by TALEH on 17.06.2016.
 */
public class ModelShop {
    /* PRIMARY*/
    private long primaryId;
    private String address;
    private String mobile;
    private Date orderDate;
    private Date lastDateOfDelivery;
    private String email;
    private String mobile2;
    private int primaryActive;
    /*END PRIMARY*/

    /*LOGGIN*/
    private String name;
    private String surname;
    private String password;
    private Date logginDate;
    private String tasks;
    private double totalAmountOfBonuce;
    private String bonuceName;
    private String bonucePassword;
    private Double bonuceQuontity;
    private Date bonuceOpenDate;
    private int bonuceActive;
    private int active;
    private double bonucQuontityMin;
    private double bonucQuontityMax;
    private Date bonucBeginOpenDate;
    private Date bonucEndOpenDate;
    /*END LOGGIN*/

    /*PRODUCTS*/
    private long productId;
    private String productName;
    private String productPicture;
    private double productPrice;
    private double productBonusValue;
    private Date productImportDate;
    private double beginBroductPrice;
    private double endProductPrice;
    private double beginProductBonusValue;
    private double endProductBonusValue;
    private Date beginProductImportDate;
    private Date endProductImportDate;
    private int productActive;
    private int productCategory;
    /*END PRODUCTS*/

    /*order table*/
    private int prCount;
    private int rcActive;
    private int minCountOrdered;
    private int maxCountOrdered;

    private int orderedActive;


    private Date orderBeginDate;
    private Date orderEndDate;
    private String chartMonth;
    private Date deliveryBeginDate;
    private Date deliveryEndDate;
    private  Date beginLoginDate;
    private  Date endLoginDate;
//    private int eight;
//    private int nine;
//    private int ten;
    /*end order table*/
    //////////////////// Send mail ////////////
    private String subject;
    private String textAre;
    private String filePath;
    private String fileName;

    ////////////////////////////////////
    private int dictId;
    private String dictName;
    private String dictValue;

    public long getPrimaryId() {
        return primaryId;
    }

    public void setPrimaryId(long primaryId) {
        this.primaryId = primaryId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getLastDateOfDelivery() {
        return lastDateOfDelivery;
    }

    public void setLastDateOfDelivery(Date lastDateOfDelivery) {
        this.lastDateOfDelivery = lastDateOfDelivery;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile2() {
        return mobile2;
    }

    public void setMobile2(String mobile2) {
        this.mobile2 = mobile2;
    }

    public int getPrimaryActive() {
        return primaryActive;
    }

    public void setPrimaryActive(int primaryActive) {
        this.primaryActive = primaryActive;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getLogginDate() {
        return logginDate;
    }

    public void setLogginDate(Date logginDate) {
        this.logginDate = logginDate;
    }

    public String getTasks() {
        return tasks;
    }

    public void setTasks(String tasks) {
        this.tasks = tasks;
    }

    public double getTotalAmountOfBonuce() {
        return totalAmountOfBonuce;
    }

    public void setTotalAmountOfBonuce(double totalAmountOfBonuce) {
        this.totalAmountOfBonuce = totalAmountOfBonuce;
    }

    public String getBonuceName() {
        return bonuceName;
    }

    public void setBonuceName(String bonuceName) {
        this.bonuceName = bonuceName;
    }

    public String getBonucePassword() {
        return bonucePassword;
    }

    public void setBonucePassword(String bonucePassword) {
        this.bonucePassword = bonucePassword;
    }

    public Double getBonuceQuontity() {
        return bonuceQuontity;
    }

    public void setBonuceQuontity(Double bonuceQuontity) {
        this.bonuceQuontity = bonuceQuontity;
    }

    public Date getBonuceOpenDate() {
        return bonuceOpenDate;
    }

    public void setBonuceOpenDate(Date bonuceOpenDate) {
        this.bonuceOpenDate = bonuceOpenDate;
    }

    public int getBonuceActive() {
        return bonuceActive;
    }

    public void setBonuceActive(int bonuceActive) {
        this.bonuceActive = bonuceActive;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public double getBonucQuontityMin() {
        return bonucQuontityMin;
    }

    public void setBonucQuontityMin(double bonucQuontityMin) {
        this.bonucQuontityMin = bonucQuontityMin;
    }

    public double getBonucQuontityMax() {
        return bonucQuontityMax;
    }

    public void setBonucQuontityMax(double bonucQuontityMax) {
        this.bonucQuontityMax = bonucQuontityMax;
    }

    public Date getBonucBeginOpenDate() {
        return bonucBeginOpenDate;
    }

    public void setBonucBeginOpenDate(Date bonucBeginOpenDate) {
        this.bonucBeginOpenDate = bonucBeginOpenDate;
    }

    public Date getBonucEndOpenDate() {
        return bonucEndOpenDate;
    }

    public void setBonucEndOpenDate(Date bonucEndOpenDate) {
        this.bonucEndOpenDate = bonucEndOpenDate;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductBonusValue() {
        return productBonusValue;
    }

    public void setProductBonusValue(double productBonusValue) {
        this.productBonusValue = productBonusValue;
    }

    public Date getProductImportDate() {
        return productImportDate;
    }

    public void setProductImportDate(Date productImportDate) {
        this.productImportDate = productImportDate;
    }

    public double getBeginBroductPrice() {
        return beginBroductPrice;
    }

    public void setBeginBroductPrice(double beginBroductPrice) {
        this.beginBroductPrice = beginBroductPrice;
    }

    public double getEndProductPrice() {
        return endProductPrice;
    }

    public void setEndProductPrice(double endProductPrice) {
        this.endProductPrice = endProductPrice;
    }

    public double getBeginProductBonusValue() {
        return beginProductBonusValue;
    }

    public void setBeginProductBonusValue(double beginProductBonusValue) {
        this.beginProductBonusValue = beginProductBonusValue;
    }

    public double getEndProductBonusValue() {
        return endProductBonusValue;
    }

    public void setEndProductBonusValue(double endProductBonusValue) {
        this.endProductBonusValue = endProductBonusValue;
    }

    public Date getBeginProductImportDate() {
        return beginProductImportDate;
    }

    public void setBeginProductImportDate(Date beginProductImportDate) {
        this.beginProductImportDate = beginProductImportDate;
    }

    public Date getEndProductImportDate() {
        return endProductImportDate;
    }

    public void setEndProductImportDate(Date endProductImportDate) {
        this.endProductImportDate = endProductImportDate;
    }

    public int getProductActive() {
        return productActive;
    }

    public void setProductActive(int productActive) {
        this.productActive = productActive;
    }

    public int getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(int productCategory) {
        this.productCategory = productCategory;
    }

    public int getPrCount() {
        return prCount;
    }

    public void setPrCount(int prCount) {
        this.prCount = prCount;
    }

    public int getRcActive() {
        return rcActive;
    }

    public void setRcActive(int rcActive) {
        this.rcActive = rcActive;
    }

    public int getMinCountOrdered() {
        return minCountOrdered;
    }

    public void setMinCountOrdered(int minCountOrdered) {
        this.minCountOrdered = minCountOrdered;
    }

    public int getMaxCountOrdered() {
        return maxCountOrdered;
    }

    public void setMaxCountOrdered(int maxCountOrdered) {
        this.maxCountOrdered = maxCountOrdered;
    }

    public int getOrderedActive() {
        return orderedActive;
    }

    public void setOrderedActive(int orderedActive) {
        this.orderedActive = orderedActive;
    }

    public Date getOrderBeginDate() {
        return orderBeginDate;
    }

    public void setOrderBeginDate(Date orderBeginDate) {
        this.orderBeginDate = orderBeginDate;
    }

    public Date getOrderEndDate() {
        return orderEndDate;
    }

    public void setOrderEndDate(Date orderEndDate) {
        this.orderEndDate = orderEndDate;
    }

    public String getChartMonth() {
        return chartMonth;
    }

    public void setChartMonth(String chartMonth) {
        this.chartMonth = chartMonth;
    }

    public Date getDeliveryBeginDate() {
        return deliveryBeginDate;
    }

    public void setDeliveryBeginDate(Date deliveryBeginDate) {
        this.deliveryBeginDate = deliveryBeginDate;
    }

    public Date getDeliveryEndDate() {
        return deliveryEndDate;
    }

    public void setDeliveryEndDate(Date deliveryEndDate) {
        this.deliveryEndDate = deliveryEndDate;
    }

    public Date getBeginLoginDate() {
        return beginLoginDate;
    }

    public void setBeginLoginDate(Date beginLoginDate) {
        this.beginLoginDate = beginLoginDate;
    }

    public Date getEndLoginDate() {
        return endLoginDate;
    }

    public void setEndLoginDate(Date endLoginDate) {
        this.endLoginDate = endLoginDate;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTextAre() {
        return textAre;
    }

    public void setTextAre(String textAre) {
        this.textAre = textAre;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
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
        return "ModelShop{" +
                "primaryId=" + primaryId +
                ", address='" + address + '\'' +
                ", mobile='" + mobile + '\'' +
                ", orderDate=" + orderDate +
                ", lastDateOfDelivery=" + lastDateOfDelivery +
                ", email='" + email + '\'' +
                ", mobile2='" + mobile2 + '\'' +
                ", primaryActive=" + primaryActive +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", password='" + password + '\'' +
                ", logginDate=" + logginDate +
                ", tasks='" + tasks + '\'' +
                ", totalAmountOfBonuce=" + totalAmountOfBonuce +
                ", bonuceName='" + bonuceName + '\'' +
                ", bonucePassword='" + bonucePassword + '\'' +
                ", bonuceQuontity=" + bonuceQuontity +
                ", bonuceOpenDate=" + bonuceOpenDate +
                ", bonuceActive=" + bonuceActive +
                ", active=" + active +
                ", bonucQuontityMin=" + bonucQuontityMin +
                ", bonucQuontityMax=" + bonucQuontityMax +
                ", bonucBeginOpenDate=" + bonucBeginOpenDate +
                ", bonucEndOpenDate=" + bonucEndOpenDate +
                ", productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productPicture='" + productPicture + '\'' +
                ", productPrice=" + productPrice +
                ", productBonusValue=" + productBonusValue +
                ", productImportDate=" + productImportDate +
                ", beginBroductPrice=" + beginBroductPrice +
                ", endProductPrice=" + endProductPrice +
                ", beginProductBonusValue=" + beginProductBonusValue +
                ", endProductBonusValue=" + endProductBonusValue +
                ", beginProductImportDate=" + beginProductImportDate +
                ", endProductImportDate=" + endProductImportDate +
                ", productActive=" + productActive +
                ", productCategory=" + productCategory +
                ", prCount=" + prCount +
                ", rcActive=" + rcActive +
                ", minCountOrdered=" + minCountOrdered +
                ", maxCountOrdered=" + maxCountOrdered +
                ", orderedActive=" + orderedActive +
                ", orderBeginDate=" + orderBeginDate +
                ", orderEndDate=" + orderEndDate +
                ", chartMonth='" + chartMonth + '\'' +
                ", deliveryBeginDate=" + deliveryBeginDate +
                ", deliveryEndDate=" + deliveryEndDate +
                ", beginLoginDate=" + beginLoginDate +
                ", endLoginDate=" + endLoginDate +
                ", subject='" + subject + '\'' +
                ", textAre='" + textAre + '\'' +
                ", filePath='" + filePath + '\'' +
                ", fileName='" + fileName + '\'' +
                ", dictId=" + dictId +
                ", dictName='" + dictName + '\'' +
                ", dictValue='" + dictValue + '\'' +
                '}';
    }
}
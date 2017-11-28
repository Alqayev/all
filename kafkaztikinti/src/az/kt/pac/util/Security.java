package az.kt.pac.util;

import org.apache.log4j.Logger;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/**
 * Created by TALEH on 06.07.2016.
 */
public class Security {
    public static Logger logger=Logger.getLogger(Security.class);
    public static String cor(String key){
        String phrase="SA_N2";
        String hash = "";
        Mac mac = null;
        try {
            mac = Mac.getInstance("HmacSha256");

        SecretKeySpec secret = new SecretKeySpec(key.getBytes(), "HmacSha256");
        mac.init(secret);
        byte[] shaDigest = mac.doFinal(phrase.getBytes());

        for(byte b:shaDigest) {
            hash += String.format("%02x",b);
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hash;
    }
}

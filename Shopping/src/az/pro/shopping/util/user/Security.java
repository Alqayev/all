package az.pro.shopping.util.user;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.util.UUID;

/**
 * Created by TALEH on 06.07.2016.
 */
public class Security {
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
    public static String UUID(){
        String uuid = UUID.randomUUID().toString();
        String fogotPass=uuid.substring(0,7);
        return fogotPass;
    }
}

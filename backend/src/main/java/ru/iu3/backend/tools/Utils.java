package ru.iu3.backend.tools;

import java.security.MessageDigest;

import org.springframework.security.crypto.codec.Hex;

public class Utils {

    public static String ComputeHash(String pwd, String salt)
    {
        MessageDigest digest;
        byte[] w = Hex.decode(new String(Hex.encode(pwd.getBytes())) + salt);
        try {
            digest = MessageDigest.getInstance("SHA-256");
        }
        catch (Exception ex) {
            return new String();
        }
        return new String(Hex.encode(digest.digest(w)));
    }
}
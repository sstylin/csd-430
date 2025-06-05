package com.example.security;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import java.util.Base64;

public class DataSecurity {
    
    // Method to encrypt data using a provided secret key
    public static String encrypt(String data, SecretKey key) throws Exception {
        Cipher cipher = Cipher.getInstance("AES"); // Create a Cipher instance for AES
        cipher.init(Cipher.ENCRYPT_MODE, key); // Initialize the cipher in encryption mode
        byte[] encryptedData = cipher.doFinal(data.getBytes()); // Encrypt the data
        return Base64.getEncoder().encodeToString(encryptedData); // Return the encrypted data as a Base64 string
    }

    // Method to generate a new AES secret key
    public static SecretKey generateKey() throws Exception {
        KeyGenerator keyGen = KeyGenerator.getInstance("AES"); // Create a KeyGenerator for AES
        keyGen.init(128); // Initialize the key size (128 bits)
        return keyGen.generateKey(); // Generate and return the secret key
    }
}

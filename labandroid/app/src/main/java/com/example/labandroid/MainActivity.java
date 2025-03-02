package com.example.labandroid;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import android.view.View;
import android.widget.Toast;

import com.example.labandroid.databinding.ActivityMainBinding;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'labandroid' library on application startup.
    static {
        System.loadLibrary("labandroid");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;
    private ActivityResultLauncher activityResultLauncher;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        int res = initRng();
        byte[] message = randomBytes(10);
        byte[] key = {7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6};

        byte[] buffer;
        buffer = encrypt(key, message);
        buffer = decrypt(key, buffer);

        // Example of a call to a native method
        //TextView tv = binding.sampleText;
        //tv.setText(stringFromJNI());

        activityResultLauncher  = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                new ActivityResultCallback() {
                    @Override
                    public void onActivityResult(Object o) {
                        Class<ActivityResult> c = ActivityResult.class;
                        ActivityResult result = c.cast(o);
                        if (result.getResultCode() == Activity.RESULT_OK) {
                            Intent data = result.getData();
                            // обработка результата
                            String pin = data.getStringExtra("pin");
                            Toast.makeText(MainActivity.this, pin, Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }

    public void onButtonClick(View v)
    {
        //byte[] key = stringToHex("0123456789ABCDEF0123456789ABCDE0");
        //byte[] enc = encrypt(key, stringToHex("000000000000000102"));
        //byte[] dec = decrypt(key, enc);
        //String s = new String(Hex.encodeHex(dec)).toUpperCase();
        //Toast.makeText(this, s, Toast.LENGTH_SHORT).show();
        Intent it = new Intent(this, PinpadActivity.class);
        //startActivity(it);
        activityResultLauncher.launch(it);
    }

    public static byte[] stringToHex(String s)
    {
        byte[] hex;
        try
        {
            hex = Hex.decodeHex(s.toCharArray());
        }
        catch(DecoderException ex)
        {
            hex = null;
        }
        return hex;
    }

    /**
     * A native method that is implemented by the 'labandroid' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
    public static native int initRng();
    public static native byte[] randomBytes(int no);
    public static native byte[] encrypt(byte[] key, byte[] data);
    public static native byte[] decrypt(byte[] key, byte[] data);
}
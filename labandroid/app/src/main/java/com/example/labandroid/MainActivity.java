package com.example.labandroid;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

import com.example.labandroid.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'labandroid' library on application startup.
    static {
        System.loadLibrary("labandroid");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        TextView tv = binding.sampleText;
        tv.setText(stringFromJNI());
    }

    /**
     * A native method that is implemented by the 'labandroid' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
}
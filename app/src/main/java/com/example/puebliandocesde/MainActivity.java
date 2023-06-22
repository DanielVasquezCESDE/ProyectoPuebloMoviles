package com.example.puebliandocesde;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;

import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

   //Atributos = elementos de la actividad
    MediaPlayer Tonito;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Tonito = MediaPlayer.create(this, R.raw.audio_pavido);
        Tonito.start();

        //Se temporize el Splash
        TimerTask inicioAPP = new TimerTask() {
            @Override
            public void run() {
                //Activo/lanzo el Home
                Intent lanjamiento = new Intent(MainActivity.this,Home.class);
                startActivity(lanjamiento);
            }
        };
    Timer lapso = new Timer();
    lapso.schedule(inicioAPP, 10000);
    }
}
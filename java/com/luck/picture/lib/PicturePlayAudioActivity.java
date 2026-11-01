package com.luck.picture.lib;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.cx;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import java.io.IOException;

/* loaded from: classes2.dex */
public class PicturePlayAudioActivity extends PictureBaseActivity implements View.OnClickListener {

    /* renamed from: const, reason: not valid java name */
    private String f18475const;

    /* renamed from: final, reason: not valid java name */
    private MediaPlayer f18476final;

    /* renamed from: import, reason: not valid java name */
    private TextView f18477import;

    /* renamed from: native, reason: not valid java name */
    private TextView f18478native;

    /* renamed from: public, reason: not valid java name */
    private TextView f18479public;

    /* renamed from: return, reason: not valid java name */
    private TextView f18480return;

    /* renamed from: static, reason: not valid java name */
    private TextView f18481static;

    /* renamed from: super, reason: not valid java name */
    private SeekBar f18482super;

    /* renamed from: while, reason: not valid java name */
    private TextView f18486while;

    /* renamed from: throw, reason: not valid java name */
    private boolean f18484throw = false;

    /* renamed from: switch, reason: not valid java name */
    public Handler f18483switch = new Handler();

    /* renamed from: throws, reason: not valid java name */
    public Runnable f18485throws = new Cfor();

    /* renamed from: com.luck.picture.lib.PicturePlayAudioActivity$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
            PicturePlayAudioActivity picturePlayAudioActivity = PicturePlayAudioActivity.this;
            picturePlayAudioActivity.m22905volatile(picturePlayAudioActivity.f18475const);
        }
    }

    /* renamed from: com.luck.picture.lib.PicturePlayAudioActivity$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (PicturePlayAudioActivity.this.f18476final != null) {
                    PicturePlayAudioActivity.this.f18481static.setText(cx.m1061for(PicturePlayAudioActivity.this.f18476final.getCurrentPosition()));
                    PicturePlayAudioActivity.this.f18482super.setProgress(PicturePlayAudioActivity.this.f18476final.getCurrentPosition());
                    PicturePlayAudioActivity.this.f18482super.setMax(PicturePlayAudioActivity.this.f18476final.getDuration());
                    PicturePlayAudioActivity.this.f18480return.setText(cx.m1061for(PicturePlayAudioActivity.this.f18476final.getDuration()));
                    PicturePlayAudioActivity picturePlayAudioActivity = PicturePlayAudioActivity.this;
                    picturePlayAudioActivity.f18483switch.postDelayed(picturePlayAudioActivity.f18485throws, 200L);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.PicturePlayAudioActivity$if, reason: invalid class name */
    public class Cif implements SeekBar.OnSeekBarChangeListener {
        public Cif() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) throws IllegalStateException {
            if (z) {
                PicturePlayAudioActivity.this.f18476final.seekTo(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* renamed from: com.luck.picture.lib.PicturePlayAudioActivity$new, reason: invalid class name */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
            PicturePlayAudioActivity picturePlayAudioActivity = PicturePlayAudioActivity.this;
            picturePlayAudioActivity.m22907transient(picturePlayAudioActivity.f18475const);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private void m22901interface() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f18476final;
        if (mediaPlayer != null) {
            this.f18482super.setProgress(mediaPlayer.getCurrentPosition());
            this.f18482super.setMax(this.f18476final.getDuration());
        }
        String string = this.f18486while.getText().toString();
        int i = R.string.picture_play_audio;
        if (string.equals(getString(i))) {
            this.f18486while.setText(getString(R.string.picture_pause_audio));
            this.f18479public.setText(getString(i));
            m22906protected();
        } else {
            this.f18486while.setText(getString(i));
            this.f18479public.setText(getString(R.string.picture_pause_audio));
            m22906protected();
        }
        if (this.f18484throw) {
            return;
        }
        this.f18483switch.post(this.f18485throws);
        this.f18484throw = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public void m22905volatile(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f18476final = mediaPlayer;
        try {
            mediaPlayer.setDataSource(str);
            this.f18476final.prepare();
            this.f18476final.setLooping(true);
            m22901interface();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        m22866for();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        int id = view.getId();
        if (id == R.id.tv_PlayPause) {
            m22901interface();
        }
        if (id == R.id.tv_Stop) {
            this.f18479public.setText(getString(R.string.picture_stop_audio));
            this.f18486while.setText(getString(R.string.picture_play_audio));
            m22907transient(this.f18475const);
        }
        if (id == R.id.tv_Quit) {
            this.f18483switch.removeCallbacks(this.f18485throws);
            new Handler().postDelayed(new Cnew(), 30L);
            try {
                m22866for();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().setFlags(1024, 1024);
        super.onCreate(bundle);
        setContentView(R.layout.activity_picture_play_audio);
        this.f18475const = getIntent().getStringExtra("audio_path");
        this.f18479public = (TextView) findViewById(R.id.tv_musicStatus);
        this.f18481static = (TextView) findViewById(R.id.tv_musicTime);
        this.f18482super = (SeekBar) findViewById(R.id.musicSeekBar);
        this.f18480return = (TextView) findViewById(R.id.tv_musicTotal);
        this.f18486while = (TextView) findViewById(R.id.tv_PlayPause);
        this.f18477import = (TextView) findViewById(R.id.tv_Stop);
        this.f18478native = (TextView) findViewById(R.id.tv_Quit);
        this.f18483switch.postDelayed(new Cdo(), 30L);
        this.f18486while.setOnClickListener(this);
        this.f18477import.setOnClickListener(this);
        this.f18478native.setOnClickListener(this);
        this.f18482super.setOnSeekBarChangeListener(new Cif());
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Handler handler;
        super.onDestroy();
        if (this.f18476final == null || (handler = this.f18483switch) == null) {
            return;
        }
        handler.removeCallbacks(this.f18485throws);
        this.f18476final.release();
        this.f18476final = null;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m22906protected() throws IllegalStateException {
        try {
            MediaPlayer mediaPlayer = this.f18476final;
            if (mediaPlayer != null) {
                if (mediaPlayer.isPlaying()) {
                    this.f18476final.pause();
                } else {
                    this.f18476final.start();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public void m22907transient(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer = this.f18476final;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.f18476final.reset();
                this.f18476final.setDataSource(str);
                this.f18476final.prepare();
                this.f18476final.seekTo(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

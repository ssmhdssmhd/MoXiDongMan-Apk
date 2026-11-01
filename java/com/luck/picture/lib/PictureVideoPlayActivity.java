package com.luck.picture.lib;

import android.content.Context;
import android.content.ContextWrapper;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.VideoView;

/* loaded from: classes2.dex */
public class PictureVideoPlayActivity extends PictureBaseActivity implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, View.OnClickListener {

    /* renamed from: final, reason: not valid java name */
    private ImageView f18551final;

    /* renamed from: super, reason: not valid java name */
    private MediaController f18553super;

    /* renamed from: throw, reason: not valid java name */
    private VideoView f18554throw;

    /* renamed from: while, reason: not valid java name */
    private ImageView f18555while;

    /* renamed from: const, reason: not valid java name */
    private String f18550const = "";

    /* renamed from: import, reason: not valid java name */
    private int f18552import = -1;

    /* renamed from: com.luck.picture.lib.PictureVideoPlayActivity$do, reason: invalid class name */
    public class Cdo extends ContextWrapper {
        public Cdo(Context context) {
            super(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return "audio".equals(str) ? getApplicationContext().getSystemService(str) : super.getSystemService(str);
        }
    }

    /* renamed from: com.luck.picture.lib.PictureVideoPlayActivity$if, reason: invalid class name */
    public class Cif implements MediaPlayer.OnInfoListener {
        public Cif() {
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (i != 3) {
                return false;
            }
            PictureVideoPlayActivity.this.f18554throw.setBackgroundColor(0);
            return true;
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(new Cdo(context));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.picture_left_back) {
            finish();
        } else if (id == R.id.iv_play) {
            this.f18554throw.start();
            this.f18555while.setVisibility(4);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        ImageView imageView = this.f18555while;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().addFlags(67108864);
        super.onCreate(bundle);
        setContentView(R.layout.picture_activity_video_play);
        this.f18550const = getIntent().getStringExtra("video_path");
        this.f18551final = (ImageView) findViewById(R.id.picture_left_back);
        VideoView videoView = (VideoView) findViewById(R.id.video_view);
        this.f18554throw = videoView;
        videoView.setBackgroundColor(-16777216);
        this.f18555while = (ImageView) findViewById(R.id.iv_play);
        this.f18553super = new MediaController(this);
        this.f18554throw.setOnCompletionListener(this);
        this.f18554throw.setOnPreparedListener(this);
        this.f18554throw.setMediaController(this.f18553super);
        this.f18551final.setOnClickListener(this);
        this.f18555while.setOnClickListener(this);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f18553super = null;
        this.f18554throw = null;
        this.f18555while = null;
        super.onDestroy();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.f18552import = this.f18554throw.getCurrentPosition();
        this.f18554throw.stopPlayback();
        super.onPause();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.setOnInfoListener(new Cif());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        int i = this.f18552import;
        if (i >= 0) {
            this.f18554throw.seekTo(i);
            this.f18552import = -1;
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        this.f18554throw.setVideoPath(this.f18550const);
        this.f18554throw.start();
        super.onStart();
    }
}

package com.luck.picture.lib;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.bm0;
import android.support.v4.cx;
import android.support.v4.gt;
import android.support.v4.is1;
import android.support.v4.j20;
import android.support.v4.jt;
import android.support.v4.k22;
import android.support.v4.kd1;
import android.support.v4.od1;
import android.support.v4.ps1;
import android.support.v4.rd1;
import android.support.v4.u72;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter;
import com.luck.picture.lib.adapter.PictureImageGridAdapter;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.decoration.GridSpacingItemDecoration;
import com.luck.picture.lib.entity.EventEntity;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.model.LocalMediaLoader;
import com.luck.picture.lib.widget.PhotoPopupWindow;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PictureSelectorActivity extends PictureBaseActivity implements View.OnClickListener, PictureAlbumDirectoryAdapter.OnItemClickListener, PictureImageGridAdapter.OnPhotoSelectChangedListener, PhotoPopupWindow.OnItemClickListener {
    private static final String g = PictureSelectorActivity.class.getSimpleName();
    private static final int h = 0;
    private static final int i = 1;
    private gt b;
    private int c;

    /* renamed from: const, reason: not valid java name */
    private ImageView f18512const;

    /* renamed from: default, reason: not valid java name */
    private TextView f18514default;

    /* renamed from: extends, reason: not valid java name */
    private RelativeLayout f18515extends;

    /* renamed from: final, reason: not valid java name */
    private TextView f18516final;

    /* renamed from: finally, reason: not valid java name */
    private LinearLayout f18517finally;

    /* renamed from: implements, reason: not valid java name */
    private LocalMediaLoader f18518implements;

    /* renamed from: import, reason: not valid java name */
    private TextView f18519import;

    /* renamed from: instanceof, reason: not valid java name */
    private MediaPlayer f18520instanceof;

    /* renamed from: native, reason: not valid java name */
    private TextView f18522native;

    /* renamed from: package, reason: not valid java name */
    private RecyclerView f18523package;

    /* renamed from: private, reason: not valid java name */
    private PictureImageGridAdapter f18524private;

    /* renamed from: protected, reason: not valid java name */
    private com.luck.picture.lib.permissions.Cdo f18525protected;

    /* renamed from: public, reason: not valid java name */
    private TextView f18526public;

    /* renamed from: return, reason: not valid java name */
    private TextView f18527return;

    /* renamed from: static, reason: not valid java name */
    private TextView f18528static;

    /* renamed from: strictfp, reason: not valid java name */
    private com.luck.picture.lib.widget.Cdo f18529strictfp;

    /* renamed from: super, reason: not valid java name */
    private TextView f18530super;

    /* renamed from: switch, reason: not valid java name */
    private TextView f18531switch;

    /* renamed from: synchronized, reason: not valid java name */
    private SeekBar f18532synchronized;

    /* renamed from: throw, reason: not valid java name */
    private TextView f18533throw;

    /* renamed from: throws, reason: not valid java name */
    private TextView f18534throws;

    /* renamed from: transient, reason: not valid java name */
    private PhotoPopupWindow f18535transient;

    /* renamed from: while, reason: not valid java name */
    private TextView f18537while;

    /* renamed from: abstract, reason: not valid java name */
    private List<LocalMedia> f18511abstract = new ArrayList();

    /* renamed from: continue, reason: not valid java name */
    private List<LocalMediaFolder> f18513continue = new ArrayList();

    /* renamed from: volatile, reason: not valid java name */
    private Animation f18536volatile = null;

    /* renamed from: interface, reason: not valid java name */
    private boolean f18521interface = false;
    private boolean a = false;
    private Handler d = new Cdo();
    public Handler e = new Handler();
    public Runnable f = new Celse();

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$case, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Ccase implements DialogInterface.OnDismissListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f18538do;

        /* renamed from: com.luck.picture.lib.PictureSelectorActivity$case$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                Ccase ccase = Ccase.this;
                PictureSelectorActivity.this.v(ccase.f18538do);
            }
        }

        public Ccase(String str) {
            this.f18538do = str;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
            pictureSelectorActivity.e.removeCallbacks(pictureSelectorActivity.f);
            new Handler().postDelayed(new Cdo(), 30L);
            try {
                if (PictureSelectorActivity.this.b == null || !PictureSelectorActivity.this.b.isShowing()) {
                    return;
                }
                PictureSelectorActivity.this.b.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo extends Handler {
        public Cdo() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                PictureSelectorActivity.this.m22873static();
            } else {
                if (i != 1) {
                    return;
                }
                PictureSelectorActivity.this.m22863else();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$else, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (PictureSelectorActivity.this.f18520instanceof != null) {
                    PictureSelectorActivity.this.f18514default.setText(cx.m1061for(PictureSelectorActivity.this.f18520instanceof.getCurrentPosition()));
                    PictureSelectorActivity.this.f18532synchronized.setProgress(PictureSelectorActivity.this.f18520instanceof.getCurrentPosition());
                    PictureSelectorActivity.this.f18532synchronized.setMax(PictureSelectorActivity.this.f18520instanceof.getDuration());
                    PictureSelectorActivity.this.f18534throws.setText(cx.m1061for(PictureSelectorActivity.this.f18520instanceof.getDuration()));
                    PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
                    pictureSelectorActivity.e.postDelayed(pictureSelectorActivity.f, 200L);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$for, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cfor implements Observer<Boolean> {
        public Cfor() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Boolean bool) {
            if (bool.booleanValue()) {
                PictureSelectorActivity.this.d.sendEmptyMessage(0);
                PictureSelectorActivity.this.m();
            } else {
                PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
                u72.m8276do(pictureSelectorActivity.f18430do, pictureSelectorActivity.getString(R.string.picture_jurisdiction));
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$goto, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cgoto implements Observer<Boolean> {
        public Cgoto() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Boolean bool) {
            if (bool.booleanValue()) {
                PictureSelectorActivity.this.q();
                return;
            }
            PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
            u72.m8276do(pictureSelectorActivity.f18430do, pictureSelectorActivity.getString(R.string.picture_camera));
            PictureSelectorActivity pictureSelectorActivity2 = PictureSelectorActivity.this;
            if (pictureSelectorActivity2.f18434if.f18689if) {
                pictureSelectorActivity2.m22866for();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif implements Observer<Boolean> {
        public Cif() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Boolean bool) {
            if (bool.booleanValue()) {
                PictureSelectorActivity.this.onTakePhoto();
                return;
            }
            PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
            u72.m8276do(pictureSelectorActivity.f18430do, pictureSelectorActivity.getString(R.string.picture_camera));
            PictureSelectorActivity.this.m22866for();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$new, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cnew implements Observer<Boolean> {
        public Cnew() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Boolean bool) {
            if (!bool.booleanValue()) {
                PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
                u72.m8276do(pictureSelectorActivity.f18430do, pictureSelectorActivity.getString(R.string.picture_audio));
            } else {
                Intent intent = new Intent("android.provider.MediaStore.RECORD_SOUND");
                if (intent.resolveActivity(PictureSelectorActivity.this.getPackageManager()) != null) {
                    PictureSelectorActivity.this.startActivityForResult(intent, od1.f4567package);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$this, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cthis implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        private String f18547do;

        public Cthis(String str) {
            this.f18547do = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m22939if() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
            PictureSelectorActivity.this.v(this.f18547do);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
            int id = view.getId();
            if (id == R.id.tv_PlayPause) {
                PictureSelectorActivity.this.k();
            }
            if (id == R.id.tv_Stop) {
                PictureSelectorActivity.this.f18531switch.setText(PictureSelectorActivity.this.getString(R.string.picture_stop_audio));
                PictureSelectorActivity.this.f18526public.setText(PictureSelectorActivity.this.getString(R.string.picture_play_audio));
                PictureSelectorActivity.this.v(this.f18547do);
            }
            if (id == R.id.tv_Quit) {
                PictureSelectorActivity pictureSelectorActivity = PictureSelectorActivity.this;
                pictureSelectorActivity.e.removeCallbacks(pictureSelectorActivity.f);
                new Handler().postDelayed(new Runnable() { // from class: android.support.v4.ud1
                    @Override // java.lang.Runnable
                    public final void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                        this.f6833do.m22939if();
                    }
                }, 30L);
                try {
                    if (PictureSelectorActivity.this.b == null || !PictureSelectorActivity.this.b.isShowing()) {
                        return;
                    }
                    PictureSelectorActivity.this.b.dismiss();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.luck.picture.lib.PictureSelectorActivity$try, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Ctry implements SeekBar.OnSeekBarChangeListener {
        public Ctry() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) throws IllegalStateException {
            if (z) {
                PictureSelectorActivity.this.f18520instanceof.seekTo(i);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void f(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f18520instanceof = mediaPlayer;
        try {
            mediaPlayer.setDataSource(str);
            this.f18520instanceof.prepare();
            this.f18520instanceof.setLooping(true);
            k();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void d(Bundle bundle) {
        this.f18515extends = (RelativeLayout) findViewById(R.id.rl_picture_title);
        this.f18512const = (ImageView) findViewById(R.id.picture_left_back);
        this.f18516final = (TextView) findViewById(R.id.picture_title);
        this.f18530super = (TextView) findViewById(R.id.picture_right);
        this.f18533throw = (TextView) findViewById(R.id.picture_tv_ok);
        this.f18522native = (TextView) findViewById(R.id.picture_id_preview);
        this.f18519import = (TextView) findViewById(R.id.picture_tv_img_num);
        this.f18523package = (RecyclerView) findViewById(R.id.picture_recycler);
        this.f18517finally = (LinearLayout) findViewById(R.id.id_ll_ok);
        this.f18537while = (TextView) findViewById(R.id.tv_empty);
        e(this.f18435new);
        if (this.f18434if.f18682do == rd1.m6911final()) {
            PhotoPopupWindow photoPopupWindow = new PhotoPopupWindow(this);
            this.f18535transient = photoPopupWindow;
            photoPopupWindow.setOnItemClickListener(this);
        }
        this.f18522native.setOnClickListener(this);
        if (this.f18434if.f18682do == rd1.m6918super()) {
            this.f18522native.setVisibility(8);
            this.c = is1.m3570if(this.f18430do) + is1.m3571new(this.f18430do);
        } else {
            this.f18522native.setVisibility(this.f18434if.f18682do != 2 ? 0 : 8);
        }
        this.f18512const.setOnClickListener(this);
        this.f18530super.setOnClickListener(this);
        this.f18517finally.setOnClickListener(this);
        this.f18516final.setOnClickListener(this);
        this.f18516final.setText(this.f18434if.f18682do == rd1.m6918super() ? getString(R.string.picture_all_audio) : getString(R.string.picture_camera_roll));
        com.luck.picture.lib.widget.Cdo cdo = new com.luck.picture.lib.widget.Cdo(this, this.f18434if.f18682do);
        this.f18529strictfp = cdo;
        cdo.m23335this(this.f18516final);
        this.f18529strictfp.setOnItemClickListener(this);
        this.f18523package.setHasFixedSize(true);
        this.f18523package.addItemDecoration(new GridSpacingItemDecoration(this.f18434if.f18707throw, is1.m3568do(this, 2.0f), false));
        this.f18523package.setLayoutManager(new GridLayoutManager(this, this.f18434if.f18707throw));
        ((SimpleItemAnimator) this.f18523package.getItemAnimator()).setSupportsChangeAnimations(false);
        PictureSelectionConfig pictureSelectionConfig = this.f18434if;
        this.f18518implements = new LocalMediaLoader(this, pictureSelectionConfig.f18682do, pictureSelectionConfig.f18686finally, pictureSelectionConfig.f18678class, pictureSelectionConfig.f18679const);
        this.f18525protected.m23177final("android.permission.READ_EXTERNAL_STORAGE").subscribe(new Cfor());
        this.f18537while.setText(this.f18434if.f18682do == rd1.m6918super() ? getString(R.string.picture_audio_empty) : getString(R.string.picture_empty));
        k22.m4216for(this.f18537while, this.f18434if.f18682do);
        if (bundle != null) {
            this.f18429class = com.luck.picture.lib.Cif.m23123break(bundle);
        }
        PictureImageGridAdapter pictureImageGridAdapter = new PictureImageGridAdapter(this.f18430do, this.f18434if);
        this.f18524private = pictureImageGridAdapter;
        pictureImageGridAdapter.setOnPhotoSelectChangedListener(this);
        this.f18524private.m22967class(this.f18429class);
        this.f18523package.setAdapter(this.f18524private);
        String strTrim = this.f18516final.getText().toString().trim();
        PictureSelectionConfig pictureSelectionConfig2 = this.f18434if;
        if (pictureSelectionConfig2.f18684extends) {
            pictureSelectionConfig2.f18684extends = k22.m4215do(strTrim);
        }
    }

    private void e(boolean z) {
        String string;
        TextView textView = this.f18533throw;
        if (z) {
            int i2 = R.string.picture_done_front_num;
            Object[] objArr = new Object[2];
            objArr[0] = 0;
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            objArr[1] = Integer.valueOf(pictureSelectionConfig.f18683else == 1 ? 1 : pictureSelectionConfig.f18688goto);
            string = getString(i2, objArr);
        } else {
            string = getString(R.string.picture_please_select);
        }
        textView.setText(string);
        if (!z) {
            this.f18536volatile = AnimationUtils.loadAnimation(this, R.anim.modal_in);
        }
        this.f18536volatile = z ? null : AnimationUtils.loadAnimation(this, R.anim.modal_in);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(List list) {
        if (list.size() > 0) {
            this.f18513continue = list;
            LocalMediaFolder localMediaFolder = (LocalMediaFolder) list.get(0);
            localMediaFolder.m23116goto(true);
            List<LocalMedia> listM23118new = localMediaFolder.m23118new();
            if (listM23118new.size() >= this.f18511abstract.size()) {
                this.f18511abstract = listM23118new;
                this.f18529strictfp.m23336try(list);
            }
        }
        if (this.f18524private != null) {
            if (this.f18511abstract == null) {
                this.f18511abstract = new ArrayList();
            }
            this.f18524private.m22966catch(this.f18511abstract);
            this.f18537while.setVisibility(this.f18511abstract.size() > 0 ? 4 : 0);
        }
        this.d.sendEmptyMessage(1);
    }

    private void h(LocalMedia localMedia) {
        try {
            m22877try(this.f18513continue);
            LocalMediaFolder localMediaFolderM22858break = m22858break(localMedia.m23084case(), this.f18513continue);
            LocalMediaFolder localMediaFolder = this.f18513continue.size() > 0 ? this.f18513continue.get(0) : null;
            if (localMediaFolder == null || localMediaFolderM22858break == null) {
                return;
            }
            localMediaFolder.m23107break(localMedia.m23084case());
            localMediaFolder.m23110class(this.f18511abstract);
            localMediaFolder.m23109catch(localMediaFolder.m23115for() + 1);
            localMediaFolderM22858break.m23109catch(localMediaFolderM22858break.m23115for() + 1);
            localMediaFolderM22858break.m23118new().add(0, localMedia);
            localMediaFolderM22858break.m23107break(this.f18431else);
            this.f18529strictfp.m23336try(this.f18513continue);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void i(Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (jt jtVar : com.yalantis.ucrop.Cif.m27419for(intent)) {
            LocalMedia localMedia = new LocalMedia();
            String strM6909do = rd1.m6909do(jtVar.getPath());
            localMedia.m23100super(true);
            localMedia.m23097public(jtVar.getPath());
            localMedia.m23102throw(jtVar.getCutPath());
            localMedia.m23098return(strM6909do);
            localMedia.m23094import(this.f18434if.f18682do);
            arrayList.add(localMedia);
        }
        m22861const(arrayList);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m22925instanceof(final String str) {
        gt gtVar = new gt(this.f18430do, -1, this.c, R.layout.picture_audio_dialog, R.style.Theme_dialog);
        this.b = gtVar;
        gtVar.getWindow().setWindowAnimations(R.style.Dialog_Audio_StyleAnim);
        this.f18531switch = (TextView) this.b.findViewById(R.id.tv_musicStatus);
        this.f18514default = (TextView) this.b.findViewById(R.id.tv_musicTime);
        this.f18532synchronized = (SeekBar) this.b.findViewById(R.id.musicSeekBar);
        this.f18534throws = (TextView) this.b.findViewById(R.id.tv_musicTotal);
        this.f18526public = (TextView) this.b.findViewById(R.id.tv_PlayPause);
        this.f18527return = (TextView) this.b.findViewById(R.id.tv_Stop);
        this.f18528static = (TextView) this.b.findViewById(R.id.tv_Quit);
        this.e.postDelayed(new Runnable() { // from class: android.support.v4.td1
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                this.f6483do.f(str);
            }
        }, 30L);
        this.f18526public.setOnClickListener(new Cthis(str));
        this.f18527return.setOnClickListener(new Cthis(str));
        this.f18528static.setOnClickListener(new Cthis(str));
        this.f18532synchronized.setOnSeekBarChangeListener(new Ctry());
        this.b.setOnDismissListener(new Ccase(str));
        this.e.post(this.f);
        this.b.show();
    }

    private Uri j(File file) {
        return Build.VERSION.SDK_INT > 23 ? FileProvider.getUriForFile(this.f18430do, getPackageName() + ".provider", file) : Uri.fromFile(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.f18520instanceof;
        if (mediaPlayer != null) {
            this.f18532synchronized.setProgress(mediaPlayer.getCurrentPosition());
            this.f18532synchronized.setMax(this.f18520instanceof.getDuration());
        }
        String string = this.f18526public.getText().toString();
        int i2 = R.string.picture_play_audio;
        if (string.equals(getString(i2))) {
            this.f18526public.setText(getString(R.string.picture_pause_audio));
            this.f18531switch.setText(getString(i2));
            l();
        } else {
            this.f18526public.setText(getString(i2));
            this.f18531switch.setText(getString(R.string.picture_pause_audio));
            l();
        }
        if (this.a) {
            return;
        }
        this.e.post(this.f);
        this.a = true;
    }

    @RequiresApi(api = 26)
    private void n(Intent intent) throws Resources.NotFoundException, IllegalArgumentException {
        String strM6914if;
        int iM22860catch;
        ArrayList arrayList = new ArrayList();
        if (this.f18434if.f18682do == rd1.m6918super()) {
            this.f18431else = m22875this(intent);
        }
        File file = new File(this.f18431else);
        sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file)));
        boolean zM6218do = ps1.m6218do();
        String strM6912for = zM6218do ? rd1.m6912for(new File(com.luck.picture.lib.tools.Cdo.m23300final(getApplicationContext(), Uri.parse(this.f18431else)))) : rd1.m6912for(file);
        if (this.f18434if.f18682do != rd1.m6918super()) {
            m22871public(com.luck.picture.lib.tools.Cdo.m23308return(file.getAbsolutePath()), file);
        }
        LocalMedia localMedia = new LocalMedia();
        localMedia.m23097public(this.f18431else);
        boolean zStartsWith = strM6912for.startsWith(od1.f4559final);
        int iM6905case = (zStartsWith && zM6218do) ? rd1.m6905case(getApplicationContext(), this.f18431else) : zStartsWith ? rd1.m6921try(this.f18431else) : 0;
        if (this.f18434if.f18682do == rd1.m6918super()) {
            iM6905case = rd1.m6921try(this.f18431else);
            strM6914if = "audio/mpeg";
        } else {
            strM6914if = zStartsWith ? rd1.m6914if(getApplicationContext(), this.f18431else) : rd1.m6909do(this.f18431else);
        }
        localMedia.m23098return(strM6914if);
        localMedia.m23104while(iM6905case);
        localMedia.m23094import(this.f18434if.f18682do);
        if (this.f18434if.f18689if) {
            m22931synchronized(arrayList, localMedia, strM6912for);
        } else {
            this.f18511abstract.add(0, localMedia);
            PictureImageGridAdapter pictureImageGridAdapter = this.f18524private;
            if (pictureImageGridAdapter != null) {
                List<LocalMedia> listM22971throw = pictureImageGridAdapter.m22971throw();
                if (listM22971throw.size() < this.f18434if.f18688goto) {
                    if (rd1.m6908const(listM22971throw.size() > 0 ? listM22971throw.get(0).m23089else() : "", localMedia.m23089else()) || listM22971throw.size() == 0) {
                        int size = listM22971throw.size();
                        PictureSelectionConfig pictureSelectionConfig = this.f18434if;
                        if (size < pictureSelectionConfig.f18688goto) {
                            if (pictureSelectionConfig.f18683else == 1) {
                                p();
                            }
                            listM22971throw.add(localMedia);
                            this.f18524private.m22967class(listM22971throw);
                        }
                    }
                }
                this.f18524private.notifyDataSetChanged();
            }
        }
        if (this.f18524private != null) {
            h(localMedia);
            this.f18537while.setVisibility(this.f18511abstract.size() > 0 ? 4 : 0);
        }
        if (this.f18434if.f18682do == rd1.m6918super() || (iM22860catch = m22860catch(zStartsWith)) == -1) {
            return;
        }
        m22869native(iM22860catch, zStartsWith);
    }

    private void o(Intent intent) {
        ArrayList arrayList = new ArrayList();
        String path = com.yalantis.ucrop.Cdo.m27365for(intent).getPath();
        PictureImageGridAdapter pictureImageGridAdapter = this.f18524private;
        if (pictureImageGridAdapter != null) {
            List<LocalMedia> listM22971throw = pictureImageGridAdapter.m22971throw();
            LocalMedia localMedia = (listM22971throw == null || listM22971throw.size() <= 0) ? null : listM22971throw.get(0);
            if (localMedia != null) {
                this.f18436this = localMedia.m23084case();
                LocalMedia localMedia2 = new LocalMedia(this.f18436this, localMedia.m23091for(), false, localMedia.m23092goto(), localMedia.m23103try(), this.f18434if.f18682do);
                localMedia2.m23102throw(path);
                localMedia2.m23100super(true);
                localMedia2.m23098return(rd1.m6909do(path));
                arrayList.add(localMedia2);
                m22861const(arrayList);
                return;
            }
            return;
        }
        if (this.f18434if.f18689if) {
            String str = this.f18431else;
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            LocalMedia localMedia3 = new LocalMedia(str, 0L, false, pictureSelectionConfig.f18684extends ? 1 : 0, 0, pictureSelectionConfig.f18682do);
            localMedia3.m23100super(true);
            localMedia3.m23102throw(path);
            localMedia3.m23098return(rd1.m6909do(path));
            arrayList.add(localMedia3);
            m22861const(arrayList);
        }
    }

    private void p() {
        List<LocalMedia> listM22971throw;
        PictureImageGridAdapter pictureImageGridAdapter = this.f18524private;
        if (pictureImageGridAdapter == null || (listM22971throw = pictureImageGridAdapter.m22971throw()) == null || listM22971throw.size() <= 0) {
            return;
        }
        listM22971throw.clear();
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m22931synchronized(List<LocalMedia> list, LocalMedia localMedia, String str) throws Resources.NotFoundException {
        boolean zStartsWith = str.startsWith(od1.f4554const);
        PictureSelectionConfig pictureSelectionConfig = this.f18434if;
        if (pictureSelectionConfig.f18711volatile && zStartsWith) {
            String str2 = this.f18431else;
            this.f18436this = str2;
            m22862default(str2);
        } else {
            if (!pictureSelectionConfig.f18681default || !zStartsWith) {
                list.add(localMedia);
                mo22868import(list);
                return;
            }
            list.add(localMedia);
            m22870new(list);
            if (this.f18524private != null) {
                this.f18511abstract.add(0, localMedia);
                this.f18524private.notifyDataSetChanged();
            }
        }
    }

    public void a(List<LocalMedia> list) {
        String strM23089else = list.size() > 0 ? list.get(0).m23089else() : "";
        int i2 = 8;
        if (this.f18434if.f18682do == rd1.m6918super()) {
            this.f18522native.setVisibility(8);
        } else {
            boolean zM6907class = rd1.m6907class(strM23089else);
            boolean z = this.f18434if.f18682do == 2;
            TextView textView = this.f18522native;
            if (!zM6907class && !z) {
                i2 = 0;
            }
            textView.setVisibility(i2);
        }
        if (!(list.size() != 0)) {
            this.f18517finally.setEnabled(false);
            this.f18522native.setEnabled(false);
            this.f18522native.setSelected(false);
            this.f18533throw.setSelected(false);
            if (!this.f18435new) {
                this.f18519import.setVisibility(4);
                this.f18533throw.setText(getString(R.string.picture_please_select));
                return;
            }
            TextView textView2 = this.f18533throw;
            int i3 = R.string.picture_done_front_num;
            Object[] objArr = new Object[2];
            objArr[0] = 0;
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            objArr[1] = Integer.valueOf(pictureSelectionConfig.f18683else == 1 ? 1 : pictureSelectionConfig.f18688goto);
            textView2.setText(getString(i3, objArr));
            return;
        }
        this.f18517finally.setEnabled(true);
        this.f18522native.setEnabled(true);
        this.f18522native.setSelected(true);
        this.f18533throw.setSelected(true);
        if (!this.f18435new) {
            if (!this.f18521interface) {
                this.f18519import.startAnimation(this.f18536volatile);
            }
            this.f18519import.setVisibility(0);
            this.f18519import.setText(String.valueOf(list.size()));
            this.f18533throw.setText(getString(R.string.picture_completed));
            this.f18521interface = false;
            return;
        }
        TextView textView3 = this.f18533throw;
        int i4 = R.string.picture_done_front_num;
        Object[] objArr2 = new Object[2];
        objArr2[0] = Integer.valueOf(list.size());
        PictureSelectionConfig pictureSelectionConfig2 = this.f18434if;
        objArr2[1] = Integer.valueOf(pictureSelectionConfig2.f18683else == 1 ? 1 : pictureSelectionConfig2.f18688goto);
        textView3.setText(getString(i4, objArr2));
    }

    @com.luck.picture.lib.rxbus2.Cfor(threadMode = com.luck.picture.lib.rxbus2.Cnew.MAIN)
    public void b(EventEntity eventEntity) {
        int i2 = eventEntity.f18729do;
        if (i2 != 2771) {
            if (i2 != 2774) {
                return;
            }
            List<LocalMedia> list = eventEntity.f18730for;
            this.f18521interface = list.size() > 0;
            int i3 = eventEntity.f18731if;
            this.f18524private.m22967class(list);
            this.f18524private.notifyItemChanged(i3);
            return;
        }
        List<LocalMedia> list2 = eventEntity.f18730for;
        if (list2.size() > 0) {
            String strM23089else = list2.get(0).m23089else();
            if (this.f18434if.f18681default && strM23089else.startsWith(od1.f4554const)) {
                m22870new(list2);
            } else {
                mo22868import(list2);
            }
        }
    }

    public void l() throws IllegalStateException {
        try {
            MediaPlayer mediaPlayer = this.f18520instanceof;
            if (mediaPlayer != null) {
                if (mediaPlayer.isPlaying()) {
                    this.f18520instanceof.pause();
                } else {
                    this.f18520instanceof.start();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void m() {
        this.f18518implements.m23161switch(new LocalMediaLoader.LocalMediaLoadListener() { // from class: android.support.v4.sd1
            @Override // com.luck.picture.lib.model.LocalMediaLoader.LocalMediaLoadListener
            public final void loadComplete(List list) {
                this.f6126do.g(list);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) throws Resources.NotFoundException, IllegalArgumentException {
        if (i3 == -1) {
            if (i2 == 69) {
                o(intent);
                return;
            } else if (i2 == 609) {
                i(intent);
                return;
            } else {
                if (i2 != 909) {
                    return;
                }
                n(intent);
                return;
            }
        }
        if (i3 == 0) {
            if (this.f18434if.f18689if) {
                m22866for();
            }
        } else if (i3 == 96) {
            u72.m8276do(this.f18430do, ((Throwable) intent.getSerializableExtra("com.yalantis.ucrop.Error")).getMessage());
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        m22866for();
    }

    @Override // com.luck.picture.lib.adapter.PictureImageGridAdapter.OnPhotoSelectChangedListener
    public void onChange(List<LocalMedia> list) {
        a(list);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == R.id.picture_left_back || id == R.id.picture_right) {
            if (this.f18529strictfp.isShowing()) {
                this.f18529strictfp.dismiss();
            } else {
                m22866for();
            }
        }
        if (id == R.id.picture_title) {
            if (this.f18529strictfp.isShowing()) {
                this.f18529strictfp.dismiss();
            } else {
                List<LocalMedia> list = this.f18511abstract;
                if (list != null && list.size() > 0) {
                    this.f18529strictfp.showAsDropDown(this.f18515extends);
                    this.f18529strictfp.m23334goto(this.f18524private.m22971throw());
                }
            }
        }
        if (id == R.id.picture_id_preview) {
            List<LocalMedia> listM22971throw = this.f18524private.m22971throw();
            ArrayList arrayList = new ArrayList();
            Iterator<LocalMedia> it = listM22971throw.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            Bundle bundle = new Bundle();
            bundle.putSerializable(od1.f4566new, arrayList);
            bundle.putSerializable(od1.f4577try, (Serializable) listM22971throw);
            bundle.putBoolean(od1.f4552catch, true);
            m22876throws(PicturePreviewActivity.class, bundle, this.f18434if.f18683else == 1 ? 69 : 609);
            overridePendingTransition(R.anim.a5, 0);
        }
        if (id == R.id.id_ll_ok) {
            List<LocalMedia> listM22971throw2 = this.f18524private.m22971throw();
            LocalMedia localMedia = listM22971throw2.size() > 0 ? listM22971throw2.get(0) : null;
            String strM23089else = localMedia != null ? localMedia.m23089else() : "";
            int size = listM22971throw2.size();
            boolean zStartsWith = strM23089else.startsWith(od1.f4554const);
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            int i2 = pictureSelectionConfig.f18706this;
            if (i2 > 0 && pictureSelectionConfig.f18683else == 2 && size < i2) {
                u72.m8276do(this.f18430do, zStartsWith ? getString(R.string.picture_min_img_num, new Object[]{Integer.valueOf(i2)}) : getString(R.string.picture_min_video_num, new Object[]{Integer.valueOf(i2)}));
                return;
            }
            if (!pictureSelectionConfig.f18711volatile || !zStartsWith) {
                if (pictureSelectionConfig.f18681default && zStartsWith) {
                    m22870new(listM22971throw2);
                    return;
                } else {
                    mo22868import(listM22971throw2);
                    return;
                }
            }
            if (pictureSelectionConfig.f18683else == 1) {
                String strM23084case = localMedia.m23084case();
                this.f18436this = strM23084case;
                m22862default(strM23084case);
            } else {
                ArrayList<String> arrayList2 = new ArrayList<>();
                Iterator<LocalMedia> it2 = listM22971throw2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(it2.next().m23084case());
                }
                m22864extends(arrayList2);
            }
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws SecurityException {
        super.onCreate(bundle);
        if (!com.luck.picture.lib.rxbus2.Cdo.m23256else().m23267goto(this)) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23264catch(this);
        }
        com.luck.picture.lib.permissions.Cdo cdo = new com.luck.picture.lib.permissions.Cdo(this);
        this.f18525protected = cdo;
        if (!this.f18434if.f18689if) {
            setContentView(R.layout.picture_selector);
            d(bundle);
        } else {
            if (bundle == null) {
                cdo.m23177final("android.permission.READ_EXTERNAL_STORAGE").subscribe(new Cif());
            }
            getWindow().setFlags(1024, 1024);
            setContentView(R.layout.picture_empty);
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Handler handler;
        super.onDestroy();
        if (com.luck.picture.lib.rxbus2.Cdo.m23256else().m23267goto(this)) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23268import(this);
        }
        bm0.m578new().m584if();
        Animation animation = this.f18536volatile;
        if (animation != null) {
            animation.cancel();
            this.f18536volatile = null;
        }
        if (this.f18520instanceof == null || (handler = this.e) == null) {
            return;
        }
        handler.removeCallbacks(this.f);
        this.f18520instanceof.release();
        this.f18520instanceof = null;
    }

    @Override // com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter.OnItemClickListener
    public void onItemClick(String str, List<LocalMedia> list) {
        boolean zM4215do = k22.m4215do(str);
        if (!this.f18434if.f18684extends) {
            zM4215do = false;
        }
        this.f18524private.m22969return(zM4215do);
        this.f18516final.setText(str);
        this.f18524private.m22966catch(list);
        this.f18529strictfp.dismiss();
    }

    @Override // com.luck.picture.lib.adapter.PictureImageGridAdapter.OnPhotoSelectChangedListener
    public void onPictureClick(LocalMedia localMedia, int i2) {
        u(this.f18524private.m22970super(), i2);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PictureImageGridAdapter pictureImageGridAdapter = this.f18524private;
        if (pictureImageGridAdapter != null) {
            com.luck.picture.lib.Cif.m23126final(bundle, pictureImageGridAdapter.m22971throw());
        }
    }

    @Override // com.luck.picture.lib.adapter.PictureImageGridAdapter.OnPhotoSelectChangedListener
    public void onTakePhoto() {
        this.f18525protected.m23177final("android.permission.CAMERA").subscribe(new Cgoto());
    }

    public void q() {
        if (!j20.m3667do() || this.f18434if.f18689if) {
            int i2 = this.f18434if.f18682do;
            if (i2 == 0) {
                PhotoPopupWindow photoPopupWindow = this.f18535transient;
                if (photoPopupWindow == null) {
                    r();
                    return;
                }
                if (photoPopupWindow.isShowing()) {
                    this.f18535transient.dismiss();
                }
                this.f18535transient.showAsDropDown(this.f18515extends);
                return;
            }
            if (i2 == 1) {
                r();
            } else if (i2 == 2) {
                t();
            } else {
                if (i2 != 3) {
                    return;
                }
                s();
            }
        }
    }

    public void r() {
        Uri uriJ;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            if (ps1.m6218do()) {
                uriJ = kd1.m4375do(getApplicationContext());
                this.f18431else = uriJ.toString();
            } else {
                int i2 = this.f18434if.f18682do;
                if (i2 == 0) {
                    i2 = 1;
                }
                File fileM23301for = com.luck.picture.lib.tools.Cdo.m23301for(getApplicationContext(), i2, this.f18433goto, this.f18434if.f18710try);
                this.f18431else = fileM23301for.getAbsolutePath();
                uriJ = j(fileM23301for);
            }
            intent.putExtra("output", uriJ);
            startActivityForResult(intent, od1.f4567package);
        }
    }

    public void s() {
        this.f18525protected.m23177final("android.permission.RECORD_AUDIO").subscribe(new Cnew());
    }

    public void t() {
        Uri uriJ;
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            if (ps1.m6218do()) {
                uriJ = kd1.m4376if(getApplicationContext());
                this.f18431else = uriJ.toString();
            } else {
                Context applicationContext = getApplicationContext();
                PictureSelectionConfig pictureSelectionConfig = this.f18434if;
                int i2 = pictureSelectionConfig.f18682do;
                if (i2 == 0) {
                    i2 = 2;
                }
                File fileM23301for = com.luck.picture.lib.tools.Cdo.m23301for(applicationContext, i2, this.f18433goto, pictureSelectionConfig.f18710try);
                this.f18431else = fileM23301for.getAbsolutePath();
                uriJ = j(fileM23301for);
            }
            intent.putExtra("output", uriJ);
            intent.putExtra("android.intent.extra.durationLimit", this.f18434if.f18685final);
            intent.putExtra("android.intent.extra.videoQuality", this.f18434if.f18675break);
            startActivityForResult(intent, od1.f4567package);
        }
    }

    public void u(List<LocalMedia> list, int i2) {
        LocalMedia localMedia = list.get(i2);
        String strM23089else = localMedia.m23089else();
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        int iM6906catch = rd1.m6906catch(strM23089else);
        if (iM6906catch == 1) {
            List<LocalMedia> listM22971throw = this.f18524private.m22971throw();
            bm0.m578new().m585this(list);
            bundle.putSerializable(od1.f4577try, (Serializable) listM22971throw);
            bundle.putInt(od1.f4551case, i2);
            m22876throws(PicturePreviewActivity.class, bundle, this.f18434if.f18683else == 1 ? 69 : 609);
            overridePendingTransition(R.anim.a5, 0);
            return;
        }
        if (iM6906catch == 2) {
            if (this.f18434if.f18683else == 1) {
                arrayList.add(localMedia);
                mo22868import(arrayList);
                return;
            } else {
                bundle.putString("video_path", localMedia.m23084case());
                m22874switch(PictureVideoPlayActivity.class, bundle);
                return;
            }
        }
        if (iM6906catch != 3) {
            return;
        }
        if (this.f18434if.f18683else != 1) {
            m22925instanceof(localMedia.m23084case());
        } else {
            arrayList.add(localMedia);
            mo22868import(arrayList);
        }
    }

    public void v(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        MediaPlayer mediaPlayer = this.f18520instanceof;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.f18520instanceof.reset();
                this.f18520instanceof.setDataSource(str);
                this.f18520instanceof.prepare();
                this.f18520instanceof.seekTo(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.luck.picture.lib.widget.PhotoPopupWindow.OnItemClickListener
    public void onItemClick(int i2) {
        if (i2 == 0) {
            r();
        } else {
            if (i2 != 1) {
                return;
            }
            t();
        }
    }
}

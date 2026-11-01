package com.luck.picture.lib;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.dn1;
import android.support.v4.fz1;
import android.support.v4.gt;
import android.support.v4.is1;
import android.support.v4.od1;
import android.support.v4.on0;
import android.support.v4.rd1;
import android.support.v4.u72;
import android.support.v4.vl0;
import android.support.v4.yl0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.photoview.OnViewTapListener;
import com.luck.picture.lib.photoview.PhotoView;
import com.luck.picture.lib.widget.PreviewViewPager;
import com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView;
import com.youth.banner.BannerConfig;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class PictureExternalPreviewActivity extends PictureBaseActivity implements View.OnClickListener {

    /* renamed from: const, reason: not valid java name */
    private ImageButton f18444const;

    /* renamed from: final, reason: not valid java name */
    private TextView f18445final;

    /* renamed from: import, reason: not valid java name */
    private String f18446import;

    /* renamed from: native, reason: not valid java name */
    private SimpleFragmentAdapter f18447native;

    /* renamed from: public, reason: not valid java name */
    private LayoutInflater f18448public;

    /* renamed from: return, reason: not valid java name */
    private com.luck.picture.lib.permissions.Cdo f18449return;

    /* renamed from: static, reason: not valid java name */
    private Ctry f18450static;

    /* renamed from: super, reason: not valid java name */
    private PreviewViewPager f18451super;

    /* renamed from: throw, reason: not valid java name */
    private List<LocalMedia> f18453throw = new ArrayList();

    /* renamed from: while, reason: not valid java name */
    private int f18454while = 0;

    /* renamed from: switch, reason: not valid java name */
    private Handler f18452switch = new Cnew();

    public class SimpleFragmentAdapter extends PagerAdapter {

        /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$do, reason: invalid class name */
        public class Cdo implements RequestListener<GifDrawable> {
            public Cdo() {
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public boolean onResourceReady(GifDrawable gifDrawable, Object obj, Target<GifDrawable> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
                PictureExternalPreviewActivity.this.m22863else();
                return false;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<GifDrawable> target, boolean z) {
                PictureExternalPreviewActivity.this.m22863else();
                return false;
            }
        }

        /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$for, reason: invalid class name */
        public class Cfor implements OnViewTapListener {
            public Cfor() {
            }

            @Override // com.luck.picture.lib.photoview.OnViewTapListener
            public void onViewTap(View view, float f, float f2) {
                PictureExternalPreviewActivity.this.finish();
                PictureExternalPreviewActivity.this.overridePendingTransition(0, R.anim.a3);
            }
        }

        /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$if, reason: invalid class name */
        public class Cif extends fz1<Bitmap> {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ PhotoView f18458case;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ boolean f18460new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ SubsamplingScaleImageView f18461try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cif(int i, int i2, boolean z, SubsamplingScaleImageView subsamplingScaleImageView, PhotoView photoView) {
                super(i, i2);
                this.f18460new = z;
                this.f18461try = subsamplingScaleImageView;
                this.f18458case = photoView;
            }

            @Override // com.bumptech.glide.request.target.Target
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                PictureExternalPreviewActivity.this.m22863else();
                if (this.f18460new) {
                    PictureExternalPreviewActivity.this.m22885implements(bitmap, this.f18461try);
                } else {
                    this.f18458case.setImageBitmap(bitmap);
                }
            }

            @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
            public void onLoadFailed(@Nullable Drawable drawable) {
                super.onLoadFailed(drawable);
                PictureExternalPreviewActivity.this.m22863else();
            }
        }

        /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$new, reason: invalid class name */
        public class Cnew implements View.OnClickListener {
            public Cnew() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PictureExternalPreviewActivity.this.finish();
                PictureExternalPreviewActivity.this.overridePendingTransition(0, R.anim.a3);
            }
        }

        /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$try, reason: invalid class name */
        public class Ctry implements View.OnLongClickListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ String f18463do;

            /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$SimpleFragmentAdapter$try$do, reason: invalid class name */
            public class Cdo implements Observer<Boolean> {
                public Cdo() {
                }

                @Override // io.reactivex.Observer
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public void onNext(Boolean bool) {
                    if (bool.booleanValue()) {
                        Ctry ctry = Ctry.this;
                        PictureExternalPreviewActivity.this.m22892synchronized(ctry.f18463do);
                    } else {
                        PictureExternalPreviewActivity pictureExternalPreviewActivity = PictureExternalPreviewActivity.this;
                        u72.m8276do(pictureExternalPreviewActivity.f18430do, pictureExternalPreviewActivity.getString(R.string.picture_jurisdiction));
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

            public Ctry(String str) {
                this.f18463do = str;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (PictureExternalPreviewActivity.this.f18449return == null) {
                    PictureExternalPreviewActivity.this.f18449return = new com.luck.picture.lib.permissions.Cdo(PictureExternalPreviewActivity.this);
                }
                PictureExternalPreviewActivity.this.f18449return.m23177final("android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new Cdo());
                return true;
            }
        }

        public SimpleFragmentAdapter() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PictureExternalPreviewActivity.this.f18453throw.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            View viewInflate = PictureExternalPreviewActivity.this.f18448public.inflate(R.layout.picture_image_preview, viewGroup, false);
            PhotoView photoView = (PhotoView) viewInflate.findViewById(R.id.preview_image);
            SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) viewInflate.findViewById(R.id.longImg);
            LocalMedia localMedia = (LocalMedia) PictureExternalPreviewActivity.this.f18453throw.get(i);
            if (localMedia != null) {
                String strM23089else = localMedia.m23089else();
                String strM23088do = (!localMedia.m23085catch() || localMedia.m23083break()) ? (localMedia.m23083break() || (localMedia.m23085catch() && localMedia.m23083break())) ? localMedia.m23088do() : localMedia.m23084case() : localMedia.m23093if();
                if (rd1.m6913goto(strM23088do)) {
                    PictureExternalPreviewActivity.this.m22873static();
                }
                boolean zM6910else = rd1.m6910else(strM23089else);
                boolean zM6904break = rd1.m6904break(localMedia);
                int i2 = 8;
                photoView.setVisibility((!zM6904break || zM6910else) ? 0 : 8);
                if (zM6904break && !zM6910else) {
                    i2 = 0;
                }
                subsamplingScaleImageView.setVisibility(i2);
                if (!zM6910else || localMedia.m23083break()) {
                    Glide.m11048volatile(PictureExternalPreviewActivity.this).mo6031new().load(strM23088do).mo11166do(new dn1().mo11946this(Ccase.f9734do)).j0(new Cif(480, BannerConfig.DURATION, zM6904break, subsamplingScaleImageView, photoView));
                } else {
                    Glide.m11048volatile(PictureExternalPreviewActivity.this).mo6025else().mo11166do(new dn1().z(480, BannerConfig.DURATION).C(com.bumptech.glide.Ctry.HIGH).mo11946this(Ccase.f9736if)).load(strM23088do).o0(new Cdo()).m0(photoView);
                }
                photoView.setOnViewTapListener(new Cfor());
                subsamplingScaleImageView.setOnClickListener(new Cnew());
                photoView.setOnLongClickListener(new Ctry(strM23088do));
            }
            viewGroup.addView(viewInflate, 0);
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$do, reason: invalid class name */
    public class Cdo implements ViewPager.OnPageChangeListener {
        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            PictureExternalPreviewActivity.this.f18445final.setText((i + 1) + on0.f4694final + PictureExternalPreviewActivity.this.f18453throw.size());
        }
    }

    /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f18467do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ gt f18469if;

        public Cfor(String str, gt gtVar) {
            this.f18467do = str;
            this.f18469if = gtVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            PictureExternalPreviewActivity.this.m22873static();
            if (rd1.m6913goto(this.f18467do)) {
                PictureExternalPreviewActivity.this.f18450static = PictureExternalPreviewActivity.this.new Ctry(this.f18467do);
                PictureExternalPreviewActivity.this.f18450static.start();
            } else {
                try {
                    String strM23315try = com.luck.picture.lib.tools.Cdo.m23315try(PictureExternalPreviewActivity.this, System.currentTimeMillis() + rd1.f5753if, PictureExternalPreviewActivity.this.f18446import);
                    com.luck.picture.lib.tools.Cdo.m23303if(this.f18467do, strM23315try);
                    u72.m8276do(PictureExternalPreviewActivity.this.f18430do, PictureExternalPreviewActivity.this.getString(R.string.picture_save_success) + "\n" + strM23315try);
                    PictureExternalPreviewActivity.this.m22863else();
                } catch (IOException e) {
                    u72.m8276do(PictureExternalPreviewActivity.this.f18430do, PictureExternalPreviewActivity.this.getString(R.string.picture_save_error) + "\n" + e.getMessage());
                    PictureExternalPreviewActivity.this.m22863else();
                    e.printStackTrace();
                }
            }
            this.f18469if.dismiss();
        }
    }

    /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ gt f18470do;

        public Cif(gt gtVar) {
            this.f18470do = gtVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f18470do.dismiss();
        }
    }

    /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$new, reason: invalid class name */
    public class Cnew extends Handler {
        public Cnew() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 200) {
                return;
            }
            String str = (String) message.obj;
            u72.m8276do(PictureExternalPreviewActivity.this.f18430do, PictureExternalPreviewActivity.this.getString(R.string.picture_save_success) + "\n" + str);
            PictureExternalPreviewActivity.this.m22863else();
        }
    }

    /* renamed from: com.luck.picture.lib.PictureExternalPreviewActivity$try, reason: invalid class name */
    public class Ctry extends Thread {

        /* renamed from: do, reason: not valid java name */
        private String f18473do;

        public Ctry(String str) {
            this.f18473do = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                PictureExternalPreviewActivity.this.a(this.f18473do);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public void m22885implements(Bitmap bitmap, SubsamplingScaleImageView subsamplingScaleImageView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        subsamplingScaleImageView.setQuickScaleEnabled(true);
        subsamplingScaleImageView.setZoomEnabled(true);
        subsamplingScaleImageView.setPanEnabled(true);
        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
        subsamplingScaleImageView.setMinimumScaleType(2);
        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
        subsamplingScaleImageView.b0(vl0.m8901for(bitmap), new yl0(0.0f, new PointF(0.0f, 0.0f), 0));
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m22886instanceof() throws Resources.NotFoundException {
        this.f18445final.setText((this.f18454while + 1) + on0.f4694final + this.f18453throw.size());
        SimpleFragmentAdapter simpleFragmentAdapter = new SimpleFragmentAdapter();
        this.f18447native = simpleFragmentAdapter;
        this.f18451super.setAdapter(simpleFragmentAdapter);
        this.f18451super.setCurrentItem(this.f18454while);
        this.f18451super.addOnPageChangeListener(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public void m22892synchronized(String str) {
        gt gtVar = new gt(this, (is1.m3569for(this) * 3) / 4, is1.m3570if(this) / 4, R.layout.picture_wind_base_dialog_xml, R.style.Theme_dialog);
        Button button = (Button) gtVar.findViewById(R.id.btn_cancel);
        Button button2 = (Button) gtVar.findViewById(R.id.btn_commit);
        TextView textView = (TextView) gtVar.findViewById(R.id.tv_title);
        TextView textView2 = (TextView) gtVar.findViewById(R.id.tv_content);
        textView.setText(getString(R.string.picture_prompt));
        textView2.setText(getString(R.string.picture_prompt_content));
        button.setOnClickListener(new Cif(gtVar));
        button2.setOnClickListener(new Cfor(str, gtVar));
        gtVar.show();
    }

    public void a(String str) throws IOException {
        try {
            URL url = new URL(str);
            String strM23315try = com.luck.picture.lib.tools.Cdo.m23315try(this, System.currentTimeMillis() + rd1.f5753if, this.f18446import);
            byte[] bArr = new byte[8192];
            long jCurrentTimeMillis = System.currentTimeMillis();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(strM23315try));
            int i = 0;
            while (true) {
                int i2 = bufferedInputStream.read(bArr);
                if (i2 <= -1) {
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    Message messageObtainMessage = this.f18452switch.obtainMessage();
                    messageObtainMessage.what = 200;
                    messageObtainMessage.obj = strM23315try;
                    this.f18452switch.sendMessage(messageObtainMessage);
                    return;
                }
                bufferedOutputStream.write(bArr, 0, i2);
                i += i2;
                long jCurrentTimeMillis2 = i / (System.currentTimeMillis() - jCurrentTimeMillis);
            }
        } catch (IOException e) {
            u72.m8276do(this.f18430do, getString(R.string.picture_save_error) + "\n" + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        finish();
        overridePendingTransition(0, R.anim.a3);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        finish();
        overridePendingTransition(0, R.anim.a3);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        setContentView(R.layout.picture_activity_external_preview);
        this.f18448public = LayoutInflater.from(this);
        this.f18445final = (TextView) findViewById(R.id.picture_title);
        this.f18444const = (ImageButton) findViewById(R.id.left_back);
        this.f18451super = (PreviewViewPager) findViewById(R.id.preview_pager);
        this.f18454while = getIntent().getIntExtra(od1.f4551case, 0);
        this.f18446import = getIntent().getStringExtra(od1.f4562goto);
        this.f18453throw = (List) getIntent().getSerializableExtra(od1.f4566new);
        this.f18444const.setOnClickListener(this);
        m22886instanceof();
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Ctry ctry = this.f18450static;
        if (ctry != null) {
            this.f18452switch.removeCallbacks(ctry);
            this.f18450static = null;
        }
    }
}

package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.net.Uri;
import android.support.v4.dn1;
import android.support.v4.fz1;
import android.support.v4.j10;
import android.support.v4.jh0;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.pk0;
import android.support.v4.wq;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.request.transition.Transition;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.utils.Cstrictfp;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.subscaleview.ImageSource;
import com.wsw.cospa.widget.subscaleview.ImageViewState;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;
import java.io.File;
import java.util.Map;

/* loaded from: classes2.dex */
public class BigImageViewActivity extends BaseActivity {

    /* renamed from: goto, reason: not valid java name */
    private ComicContentImgBean f20905goto;

    @BindView(R.id.arg_res_0x7f09020f)
    public SubsamplingScaleImageView imageView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: this, reason: not valid java name */
    private Bitmap f20906this;

    /* renamed from: com.wsw.cospa.activity.BigImageViewActivity$do, reason: invalid class name */
    public class Cdo extends fz1<File> {
        public Cdo() {
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull File file, @Nullable Transition<? super File> transition) {
            try {
                BigImageViewActivity.this.f20906this = BitmapFactory.decodeFile(file.getAbsolutePath());
                BigImageViewActivity.this.imageView.setImage(ImageSource.uri(Uri.fromFile(file)), new ImageViewState(j10.m3649catch() / BigImageViewActivity.this.f20906this.getWidth(), new PointF(0.0f, 0.0f), 0));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m24811public(Context context, ComicContentImgBean comicContentImgBean) {
        Intent intent = new Intent(context, (Class<?>) BigImageViewActivity.class);
        intent.putExtra(wq.Cdo.f7664super, comicContentImgBean);
        context.startActivity(intent);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0022;
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Bitmap bitmap = this.f20906this;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        this.f20905goto = (ComicContentImgBean) getIntent().getParcelableExtra(wq.Cdo.f7664super);
        this.imageView.setMinimumScaleType(3);
        this.imageView.setMinScale(1.0f);
        this.imageView.setMaxScale(10.0f);
        this.imageView.setZoomEnabled(true);
        if (TextUtils.isEmpty(this.f20905goto.getImgurl())) {
            return;
        }
        dn1 dn1VarMo11946this = new dn1().mo11943super(R.drawable.arg_res_0x7f0800aa).mo11939public(Cif.PREFER_ARGB_8888).mo11946this(Ccase.f9737new);
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        Map<String, String> variableMap = this.f20905goto.getVariableMap();
        if (variableMap != null) {
            for (String str : variableMap.keySet()) {
                cif.m27075if(str.toString(), variableMap.get(str).toString());
            }
        }
        cif.m27075if(pk0.b, AnalyzeHeaders.getDefaultUserAgent());
        jh0.m3881class(this).mo6021case().load(new com.bumptech.glide.load.model.Cif(this.f20905goto.getImgurl(), cif.m27073for())).mo11166do(dn1VarMo11946this).d0(new Cdo());
    }
}

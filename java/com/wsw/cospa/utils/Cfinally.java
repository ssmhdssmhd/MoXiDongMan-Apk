package com.wsw.cospa.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.dn1;
import android.support.v4.h30;
import android.support.v4.ht;
import android.support.v4.j10;
import android.support.v4.jh0;
import android.support.v4.kh0;
import android.support.v4.pk0;
import android.support.v4.so1;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.request.transition.Transition;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.R;
import com.wsw.cospa.utils.Cstrictfp;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.subscaleview.ImageSource;
import com.wsw.cospa.widget.subscaleview.ImageViewState;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.wsw.cospa.utils.finally, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfinally {

    /* renamed from: com.wsw.cospa.utils.finally$do, reason: invalid class name */
    public class Cdo extends TypeToken<Map<String, String>> {
    }

    /* renamed from: com.wsw.cospa.utils.finally$for, reason: invalid class name */
    public class Cfor extends TypeToken<Map<String, String>> {
    }

    /* renamed from: com.wsw.cospa.utils.finally$if, reason: invalid class name */
    public class Cif extends ht<Bitmap> {

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ SubsamplingScaleImageView f22646new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(int i, int i2, SubsamplingScaleImageView subsamplingScaleImageView) {
            super(i, i2);
            this.f22646new = subsamplingScaleImageView;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            try {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f22646new.getLayoutParams();
                int iM3649catch = j10.m3649catch();
                layoutParams.width = iM3649catch;
                layoutParams.height = (iM3649catch * bitmap.getHeight()) / bitmap.getWidth();
                this.f22646new.setLayoutParams(layoutParams);
                this.f22646new.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                this.f22646new.setZoomEnabled(false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // android.support.v4.ht, com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
            super.onLoadFailed(drawable);
        }
    }

    /* renamed from: com.wsw.cospa.utils.finally$new, reason: invalid class name */
    public class Cnew extends TypeToken<Map<String, String>> {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m26884break(Context context, int i, ImageView imageView, int i2) {
        Glide.m11032abstract(context).load(Integer.valueOf(i)).mo11166do(new dn1().mo11927for().A(i2).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26885case(Context context, String str, ImageView imageView) {
        jh0.m3888this(context).load(str).mo11166do(new dn1().mo11927for().A(R.drawable.arg_res_0x7f0801bb).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m26886catch(Context context, String str, ImageView imageView, int i, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dn1 dn1Var = new dn1();
        dn1Var.A(i);
        dn1Var.mo11943super(R.drawable.arg_res_0x7f0801bb);
        dn1Var.mo11934native();
        dn1Var.mo11917break();
        dn1Var.mo11946this(Ccase.f9737new);
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        boolean z = false;
        if (!TextUtils.isEmpty(str2)) {
            Map map = (Map) new Gson().fromJson(str2, new Cdo().getType());
            for (String str3 : map.keySet()) {
                if (str3.equalsIgnoreCase(pk0.b)) {
                    z = true;
                }
                String str4 = (String) map.get(str3);
                Objects.requireNonNull(str4);
                cif.m27075if(str3, str4);
            }
        }
        if (!z) {
            cif.m27075if(pk0.b, AnalyzeHeaders.getDefaultUserAgent());
        }
        jh0.m3888this(context).load(new com.bumptech.glide.load.model.Cif(str, cif.m27073for())).K(true).mo11166do(dn1Var).m0(imageView);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m26887class(Context context, String str, ImageView imageView, String str2, String str3) {
        Map map;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dn1 dn1Var = new dn1();
        dn1Var.A(R.drawable.arg_res_0x7f0801bb);
        dn1Var.mo11943super(R.drawable.arg_res_0x7f0801bb);
        if (!v02.m8711if(context).m8713do(wq.v, true)) {
            dn1Var.z((int) j10.m3660new(context, 80.0f), (int) j10.m3660new(context, 60.0f));
        }
        dn1Var.mo11934native();
        dn1Var.mo11917break();
        dn1Var.mo11918catch();
        dn1Var.mo11946this(Ccase.f9737new);
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        boolean z = false;
        if (!TextUtils.isEmpty(str2) && (map = (Map) new Gson().fromJson(str2, new Cfor().getType())) != null && !map.isEmpty()) {
            for (String str4 : map.keySet()) {
                if (str4.equalsIgnoreCase(pk0.b)) {
                    z = true;
                }
                String str5 = (String) map.get(str4);
                Objects.requireNonNull(str5);
                cif.m27075if(str4, str5);
            }
        }
        if (!z && str3 != null && !str3.isEmpty()) {
            cif.m27075if(pk0.b, str3);
        }
        jh0.m3888this(context).load(new com.bumptech.glide.load.model.Cif(str, cif.m27073for())).K(true).mo11166do(dn1Var).m0(imageView);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m26888const(Context context, String str, SubsamplingScaleImageView subsamplingScaleImageView, Map map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dn1 dn1VarMo11946this = new dn1().mo11943super(R.drawable.arg_res_0x7f0800aa).mo11939public(com.bumptech.glide.load.Cif.PREFER_ARGB_8888).mo11946this(Ccase.f9737new);
        boolean z = false;
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.keySet()) {
                if (obj.toString().equalsIgnoreCase(pk0.b)) {
                    z = true;
                }
                cif.m27075if(obj.toString(), map.get(obj).toString());
            }
        }
        if (!z) {
            cif.m27075if(pk0.b, AnalyzeHeaders.getDefaultUserAgent());
        }
        jh0.m3888this(context).mo6031new().load(new com.bumptech.glide.load.model.Cif(str, cif.m27073for())).mo11166do(dn1VarMo11946this).j0(new Cif(Integer.MIN_VALUE, Integer.MIN_VALUE, subsamplingScaleImageView));
    }

    /* renamed from: do, reason: not valid java name */
    public static void m26889do(Context context, ImageView imageView, String str, int i) {
        StateListDrawable stateListDrawableM2922case = h30.m2922case(0);
        int i2 = (i / 4) * 3;
        Glide.m11032abstract(context).mo6031new().E0(0.5f).load(str).mo11166do(new dn1().z(i2, i2).mo11927for().B(stateListDrawableM2922case).mo11947throw(stateListDrawableM2922case).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m26890else(Context context, byte[] bArr, ImageView imageView) {
        Glide.m11032abstract(context).load(bArr).mo11166do(new dn1().mo11927for().A(R.drawable.arg_res_0x7f0801bb).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m26891final(Context context, byte[] bArr, ImageView imageView) {
        Glide.m11032abstract(context).load(bArr).mo11166do(new dn1().mo11927for().C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26892for(Context context, String str, ImageView imageView) {
        StateListDrawable stateListDrawableM2922case = h30.m2922case(0);
        Glide.m11032abstract(context).load(str).mo11166do(new dn1().mo11927for().B(stateListDrawableM2922case).mo11947throw(stateListDrawableM2922case).C(Ctry.HIGH).N(new kh0()).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m26893goto(Context context, String str, ImageView imageView) {
        StateListDrawable stateListDrawableM2922case = h30.m2922case(0);
        Glide.m11032abstract(context).load(str).mo11166do(new dn1().mo11927for().B(stateListDrawableM2922case).mo11947throw(stateListDrawableM2922case).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m26894if(Context context, int i, ImageView imageView) {
        StateListDrawable stateListDrawableM2922case = h30.m2922case(0);
        Glide.m11032abstract(context).load(Integer.valueOf(i)).mo11166do(new dn1().mo11927for().B(stateListDrawableM2922case).mo11947throw(stateListDrawableM2922case).C(Ctry.HIGH).N(new kh0()).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26895new(Context context, String str, ImageView imageView, int i, int i2, String str2, String str3) {
        Map map;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dn1 dn1Var = new dn1();
        dn1Var.z(i, i2);
        dn1Var.A(R.drawable.arg_res_0x7f0801bb);
        dn1Var.mo11943super(R.drawable.arg_res_0x7f0801bb);
        dn1Var.mo11934native();
        dn1Var.mo11917break();
        dn1Var.mo11946this(Ccase.f9737new);
        Cstrictfp.Cif cif = new Cstrictfp.Cif();
        boolean z = false;
        if (!TextUtils.isEmpty(str2) && (map = (Map) new Gson().fromJson(str2, new Cnew().getType())) != null && !map.isEmpty()) {
            for (String str4 : map.keySet()) {
                if (str4.equalsIgnoreCase(pk0.b)) {
                    z = true;
                }
                String str5 = (String) map.get(str4);
                Objects.requireNonNull(str5);
                cif.m27075if(str4, str5);
            }
        }
        if (!z && str3 != null && !str3.isEmpty()) {
            cif.m27075if(pk0.b, str3);
        }
        jh0.m3888this(context).load(new com.bumptech.glide.load.model.Cif(str, cif.m27073for())).K(true).mo11166do(dn1Var).m0(imageView);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m26896super(Context context, String str, ImageView imageView, int i, String str2) {
        jh0.m3888this(context).load(str).mo11166do(dn1.W(new so1(i)).mo11927for().A(R.drawable.arg_res_0x7f0801bb).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11939public(com.bumptech.glide.load.Cif.PREFER_ARGB_8888).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m26897this(Context context, String str, ImageView imageView, int i) {
        StateListDrawable stateListDrawableM2934new = h30.m2934new(0, i, i);
        Glide.m11032abstract(context).load(str).mo11166do(new dn1().mo11927for().B(stateListDrawableM2934new).mo11947throw(stateListDrawableM2934new).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m26898try(Context context, int i, ImageView imageView) {
        jh0.m3888this(context).load(Integer.valueOf(i)).mo11166do(new dn1().mo11927for().A(R.drawable.arg_res_0x7f0801bb).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }
}

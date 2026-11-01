package com.scwang.smartrefresh.layout.header;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.r3;
import android.support.v4.rf1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalClassics;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class ClassicsHeader extends InternalClassics<ClassicsHeader> implements RefreshHeader {

    /* renamed from: abstract, reason: not valid java name */
    public String f20623abstract;

    /* renamed from: continue, reason: not valid java name */
    public String f20624continue;

    /* renamed from: default, reason: not valid java name */
    public boolean f20625default;

    /* renamed from: extends, reason: not valid java name */
    public String f20626extends;

    /* renamed from: finally, reason: not valid java name */
    public String f20627finally;

    /* renamed from: package, reason: not valid java name */
    public String f20628package;

    /* renamed from: private, reason: not valid java name */
    public String f20629private;

    /* renamed from: public, reason: not valid java name */
    public String f20630public;

    /* renamed from: return, reason: not valid java name */
    public Date f20631return;

    /* renamed from: static, reason: not valid java name */
    public TextView f20632static;

    /* renamed from: strictfp, reason: not valid java name */
    public String f20633strictfp;

    /* renamed from: switch, reason: not valid java name */
    public SharedPreferences f20634switch;

    /* renamed from: throws, reason: not valid java name */
    public DateFormat f20635throws;

    /* renamed from: volatile, reason: not valid java name */
    public String f20636volatile;

    /* renamed from: interface, reason: not valid java name */
    public static final int f20619interface = R.id.srl_classics_update;

    /* renamed from: protected, reason: not valid java name */
    public static String f20620protected = null;

    /* renamed from: transient, reason: not valid java name */
    public static String f20622transient = null;

    /* renamed from: implements, reason: not valid java name */
    public static String f20617implements = null;

    /* renamed from: instanceof, reason: not valid java name */
    public static String f20618instanceof = null;

    /* renamed from: synchronized, reason: not valid java name */
    public static String f20621synchronized = null;
    public static String a = null;
    public static String b = null;
    public static String c = null;

    /* renamed from: com.scwang.smartrefresh.layout.header.ClassicsHeader$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20637do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20637do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20637do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20637do[qm1.Refreshing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20637do[qm1.RefreshReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20637do[qm1.ReleaseToRefresh.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20637do[qm1.ReleaseToTwoLevel.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20637do[qm1.Loading.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ClassicsHeader(Context context) {
        this(context, null);
    }

    /* renamed from: import, reason: not valid java name */
    public ClassicsHeader m24446import(boolean z) {
        TextView textView = this.f20632static;
        this.f20625default = z;
        textView.setVisibility(z ? 0 : 8);
        RefreshKernel refreshKernel = this.f20663else;
        if (refreshKernel != null) {
            refreshKernel.requestRemeasureHeightFor(this);
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public ClassicsHeader m24447native(CharSequence charSequence) {
        this.f20631return = null;
        this.f20632static.setText(charSequence);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        if (z) {
            this.f20666new.setText(this.f20623abstract);
            if (this.f20631return != null) {
                m24448public(new Date());
            }
        } else {
            this.f20666new.setText(this.f20624continue);
        }
        return super.onFinish(refreshLayout, z);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        ImageView imageView = this.f20670try;
        TextView textView = this.f20632static;
        switch (Cdo.f20637do[qm1Var2.ordinal()]) {
            case 1:
                textView.setVisibility(this.f20625default ? 0 : 8);
                break;
            case 2:
                break;
            case 3:
            case 4:
                this.f20666new.setText(this.f20627finally);
                imageView.setVisibility(8);
                return;
            case 5:
                this.f20666new.setText(this.f20629private);
                imageView.animate().rotation(180.0f);
                return;
            case 6:
                this.f20666new.setText(this.f20636volatile);
                imageView.animate().rotation(0.0f);
                return;
            case 7:
                imageView.setVisibility(8);
                textView.setVisibility(this.f20625default ? 4 : 8);
                this.f20666new.setText(this.f20628package);
                return;
            default:
                return;
        }
        this.f20666new.setText(this.f20626extends);
        imageView.setVisibility(0);
        imageView.animate().rotation(0.0f);
    }

    /* renamed from: public, reason: not valid java name */
    public ClassicsHeader m24448public(Date date) {
        this.f20631return = date;
        this.f20632static.setText(this.f20635throws.format(date));
        if (this.f20634switch != null && !isInEditMode()) {
            this.f20634switch.edit().putLong(this.f20630public, date.getTime()).apply();
        }
        return this;
    }

    /* renamed from: return, reason: not valid java name */
    public ClassicsHeader m24449return(float f) {
        this.f20632static.setTextSize(f);
        RefreshKernel refreshKernel = this.f20663else;
        if (refreshKernel != null) {
            refreshKernel.requestRemeasureHeightFor(this);
        }
        return this;
    }

    /* renamed from: static, reason: not valid java name */
    public ClassicsHeader m24450static(float f) {
        TextView textView = this.f20632static;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
        marginLayoutParams.topMargin = i02.m3194new(f);
        textView.setLayoutParams(marginLayoutParams);
        return this;
    }

    /* renamed from: switch, reason: not valid java name */
    public ClassicsHeader m24451switch(DateFormat dateFormat) {
        this.f20635throws = dateFormat;
        Date date = this.f20631return;
        if (date != null) {
            this.f20632static.setText(dateFormat.format(date));
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public ClassicsHeader mo24445if(@ColorInt int i) {
        this.f20632static.setTextColor((16777215 & i) | (-872415232));
        return (ClassicsHeader) super.mo24445if(i);
    }

    public ClassicsHeader(Context context, AttributeSet attributeSet) {
        FragmentManager supportFragmentManager;
        List<Fragment> fragments;
        super(context, attributeSet, 0);
        this.f20630public = "LAST_UPDATE_TIME";
        this.f20625default = true;
        View.inflate(context, R.layout.srl_classics_header, this);
        ImageView imageView = (ImageView) findViewById(R.id.srl_classics_arrow);
        this.f20670try = imageView;
        TextView textView = (TextView) findViewById(R.id.srl_classics_update);
        this.f20632static = textView;
        ImageView imageView2 = (ImageView) findViewById(R.id.srl_classics_progress);
        this.f20659case = imageView2;
        this.f20666new = (TextView) findViewById(R.id.srl_classics_title);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClassicsHeader);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        new LinearLayout.LayoutParams(-2, -2).topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClassicsHeader_srlTextTimeMarginTop, i02.m3194new(0.0f));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClassicsFooter_srlDrawableMarginRight, i02.m3194new(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        int i = R.styleable.ClassicsHeader_srlDrawableArrowSize;
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(i, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(i, layoutParams.height);
        int i2 = R.styleable.ClassicsHeader_srlDrawableProgressSize;
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(i2, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(i2, layoutParams2.height);
        int i3 = R.styleable.ClassicsHeader_srlDrawableSize;
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams.height);
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams2.height);
        this.f20662const = typedArrayObtainStyledAttributes.getInt(R.styleable.ClassicsHeader_srlFinishDuration, this.f20662const);
        this.f20625default = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ClassicsHeader_srlEnableLastTime, this.f20625default);
        this.f20654if = y02.f8079this[typedArrayObtainStyledAttributes.getInt(R.styleable.ClassicsHeader_srlClassicsSpinnerStyle, this.f20654if.f8081do)];
        int i4 = R.styleable.ClassicsHeader_srlDrawableArrow;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.f20670try.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(i4));
        } else if (this.f20670try.getDrawable() == null) {
            r3 r3Var = new r3();
            this.f20665goto = r3Var;
            r3Var.m5148do(-10066330);
            this.f20670try.setImageDrawable(this.f20665goto);
        }
        int i5 = R.styleable.ClassicsHeader_srlDrawableProgress;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            this.f20659case.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(i5));
        } else if (this.f20659case.getDrawable() == null) {
            rf1 rf1Var = new rf1();
            this.f20668this = rf1Var;
            rf1Var.m5148do(-10066330);
            this.f20659case.setImageDrawable(this.f20668this);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ClassicsHeader_srlTextSizeTitle)) {
            this.f20666new.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(r4, i02.m3194new(16.0f)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ClassicsHeader_srlTextSizeTime)) {
            this.f20632static.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(r4, i02.m3194new(12.0f)));
        }
        int i6 = R.styleable.ClassicsHeader_srlPrimaryColor;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            super.m24467catch(typedArrayObtainStyledAttributes.getColor(i6, 0));
        }
        int i7 = R.styleable.ClassicsHeader_srlAccentColor;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            mo24445if(typedArrayObtainStyledAttributes.getColor(i7, 0));
        }
        int i8 = R.styleable.ClassicsHeader_srlTextPulling;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            this.f20626extends = typedArrayObtainStyledAttributes.getString(i8);
        } else {
            String str = f20620protected;
            if (str != null) {
                this.f20626extends = str;
            } else {
                this.f20626extends = context.getString(R.string.srl_header_pulling);
            }
        }
        int i9 = R.styleable.ClassicsHeader_srlTextLoading;
        if (typedArrayObtainStyledAttributes.hasValue(i9)) {
            this.f20628package = typedArrayObtainStyledAttributes.getString(i9);
        } else {
            String str2 = f20617implements;
            if (str2 != null) {
                this.f20628package = str2;
            } else {
                this.f20628package = context.getString(R.string.srl_header_loading);
            }
        }
        int i10 = R.styleable.ClassicsHeader_srlTextRelease;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            this.f20629private = typedArrayObtainStyledAttributes.getString(i10);
        } else {
            String str3 = f20618instanceof;
            if (str3 != null) {
                this.f20629private = str3;
            } else {
                this.f20629private = context.getString(R.string.srl_header_release);
            }
        }
        int i11 = R.styleable.ClassicsHeader_srlTextFinish;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.f20623abstract = typedArrayObtainStyledAttributes.getString(i11);
        } else {
            String str4 = f20621synchronized;
            if (str4 != null) {
                this.f20623abstract = str4;
            } else {
                this.f20623abstract = context.getString(R.string.srl_header_finish);
            }
        }
        int i12 = R.styleable.ClassicsHeader_srlTextFailed;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            this.f20624continue = typedArrayObtainStyledAttributes.getString(i12);
        } else {
            String str5 = a;
            if (str5 != null) {
                this.f20624continue = str5;
            } else {
                this.f20624continue = context.getString(R.string.srl_header_failed);
            }
        }
        int i13 = R.styleable.ClassicsHeader_srlTextSecondary;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            this.f20636volatile = typedArrayObtainStyledAttributes.getString(i13);
        } else {
            String str6 = c;
            if (str6 != null) {
                this.f20636volatile = str6;
            } else {
                this.f20636volatile = context.getString(R.string.srl_header_secondary);
            }
        }
        int i14 = R.styleable.ClassicsHeader_srlTextRefreshing;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            this.f20627finally = typedArrayObtainStyledAttributes.getString(i14);
        } else {
            String str7 = f20622transient;
            if (str7 != null) {
                this.f20627finally = str7;
            } else {
                this.f20627finally = context.getString(R.string.srl_header_refreshing);
            }
        }
        int i15 = R.styleable.ClassicsHeader_srlTextUpdate;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            this.f20633strictfp = typedArrayObtainStyledAttributes.getString(i15);
        } else {
            String str8 = b;
            if (str8 != null) {
                this.f20633strictfp = str8;
            } else {
                this.f20633strictfp = context.getString(R.string.srl_header_update);
            }
        }
        this.f20635throws = new SimpleDateFormat(this.f20633strictfp, Locale.getDefault());
        typedArrayObtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        textView.setVisibility(this.f20625default ? 0 : 8);
        this.f20666new.setText(isInEditMode() ? this.f20627finally : this.f20626extends);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
        try {
            if ((context instanceof FragmentActivity) && (supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager()) != null && (fragments = supportFragmentManager.getFragments()) != null && fragments.size() > 0) {
                m24448public(new Date());
                return;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f20630public += context.getClass().getName();
        this.f20634switch = context.getSharedPreferences("ClassicsHeader", 0);
        m24448public(new Date(this.f20634switch.getLong(this.f20630public, System.currentTimeMillis())));
    }
}

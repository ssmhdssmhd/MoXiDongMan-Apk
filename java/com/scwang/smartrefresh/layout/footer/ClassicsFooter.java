package com.scwang.smartrefresh.layout.footer;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.r3;
import android.support.v4.rf1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.RefreshFooter;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalClassics;

/* loaded from: classes2.dex */
public class ClassicsFooter extends InternalClassics<ClassicsFooter> implements RefreshFooter {

    /* renamed from: abstract, reason: not valid java name */
    public static String f20570abstract;

    /* renamed from: continue, reason: not valid java name */
    public static String f20571continue;

    /* renamed from: interface, reason: not valid java name */
    public static String f20572interface;

    /* renamed from: package, reason: not valid java name */
    public static String f20573package;

    /* renamed from: private, reason: not valid java name */
    public static String f20574private;

    /* renamed from: strictfp, reason: not valid java name */
    public static String f20575strictfp;

    /* renamed from: volatile, reason: not valid java name */
    public static String f20576volatile;

    /* renamed from: default, reason: not valid java name */
    public String f20577default;

    /* renamed from: extends, reason: not valid java name */
    public String f20578extends;

    /* renamed from: finally, reason: not valid java name */
    public boolean f20579finally;

    /* renamed from: public, reason: not valid java name */
    public String f20580public;

    /* renamed from: return, reason: not valid java name */
    public String f20581return;

    /* renamed from: static, reason: not valid java name */
    public String f20582static;

    /* renamed from: switch, reason: not valid java name */
    public String f20583switch;

    /* renamed from: throws, reason: not valid java name */
    public String f20584throws;

    /* renamed from: com.scwang.smartrefresh.layout.footer.ClassicsFooter$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20585do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20585do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20585do[qm1.PullUpToLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20585do[qm1.Loading.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20585do[qm1.LoadReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20585do[qm1.ReleaseToLoad.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20585do[qm1.Refreshing.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ClassicsFooter(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        if (this.f20579finally) {
            return 0;
        }
        this.f20666new.setText(z ? this.f20584throws : this.f20577default);
        return super.onFinish(refreshLayout, z);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        if (this.f20579finally) {
            return;
        }
        super.onStartAnimator(refreshLayout, i, i2);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        ImageView imageView = this.f20670try;
        if (this.f20579finally) {
            return;
        }
        switch (Cdo.f20585do[qm1Var2.ordinal()]) {
            case 1:
                imageView.setVisibility(0);
                break;
            case 2:
                break;
            case 3:
            case 4:
                imageView.setVisibility(8);
                this.f20666new.setText(this.f20582static);
                return;
            case 5:
                this.f20666new.setText(this.f20581return);
                imageView.animate().rotation(0.0f);
                return;
            case 6:
                this.f20666new.setText(this.f20583switch);
                imageView.setVisibility(8);
                return;
            default:
                return;
        }
        this.f20666new.setText(this.f20580public);
        imageView.animate().rotation(180.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshFooter
    public boolean setNoMoreData(boolean z) {
        if (this.f20579finally == z) {
            return true;
        }
        this.f20579finally = z;
        ImageView imageView = this.f20670try;
        if (z) {
            this.f20666new.setText(this.f20578extends);
            imageView.setVisibility(8);
            return true;
        }
        this.f20666new.setText(this.f20580public);
        imageView.setVisibility(0);
        return true;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (this.f20654if == y02.f8075case) {
            super.setPrimaryColors(iArr);
        }
    }

    public ClassicsFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20579finally = false;
        View.inflate(context, R.layout.srl_classics_footer, this);
        ImageView imageView = (ImageView) findViewById(R.id.srl_classics_arrow);
        this.f20670try = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.srl_classics_progress);
        this.f20659case = imageView2;
        this.f20666new = (TextView) findViewById(R.id.srl_classics_title);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClassicsFooter);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClassicsFooter_srlDrawableMarginRight, i02.m3194new(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        int i = R.styleable.ClassicsFooter_srlDrawableArrowSize;
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(i, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(i, layoutParams.height);
        int i2 = R.styleable.ClassicsFooter_srlDrawableProgressSize;
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(i2, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(i2, layoutParams2.height);
        int i3 = R.styleable.ClassicsFooter_srlDrawableSize;
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams.height);
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(i3, layoutParams2.height);
        this.f20662const = typedArrayObtainStyledAttributes.getInt(R.styleable.ClassicsFooter_srlFinishDuration, this.f20662const);
        this.f20654if = y02.f8079this[typedArrayObtainStyledAttributes.getInt(R.styleable.ClassicsFooter_srlClassicsSpinnerStyle, this.f20654if.f8081do)];
        int i4 = R.styleable.ClassicsFooter_srlDrawableArrow;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.f20670try.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(i4));
        } else if (this.f20670try.getDrawable() == null) {
            r3 r3Var = new r3();
            this.f20665goto = r3Var;
            r3Var.m5148do(-10066330);
            this.f20670try.setImageDrawable(this.f20665goto);
        }
        int i5 = R.styleable.ClassicsFooter_srlDrawableProgress;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            this.f20659case.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(i5));
        } else if (this.f20659case.getDrawable() == null) {
            rf1 rf1Var = new rf1();
            this.f20668this = rf1Var;
            rf1Var.m5148do(-10066330);
            this.f20659case.setImageDrawable(this.f20668this);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.ClassicsFooter_srlTextSizeTitle)) {
            this.f20666new.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(r3, i02.m3194new(16.0f)));
        }
        int i6 = R.styleable.ClassicsFooter_srlPrimaryColor;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            super.m24467catch(typedArrayObtainStyledAttributes.getColor(i6, 0));
        }
        int i7 = R.styleable.ClassicsFooter_srlAccentColor;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            super.mo24445if(typedArrayObtainStyledAttributes.getColor(i7, 0));
        }
        int i8 = R.styleable.ClassicsFooter_srlTextPulling;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            this.f20580public = typedArrayObtainStyledAttributes.getString(i8);
        } else {
            String str = f20573package;
            if (str != null) {
                this.f20580public = str;
            } else {
                this.f20580public = context.getString(R.string.srl_footer_pulling);
            }
        }
        int i9 = R.styleable.ClassicsFooter_srlTextRelease;
        if (typedArrayObtainStyledAttributes.hasValue(i9)) {
            this.f20581return = typedArrayObtainStyledAttributes.getString(i9);
        } else {
            String str2 = f20574private;
            if (str2 != null) {
                this.f20581return = str2;
            } else {
                this.f20581return = context.getString(R.string.srl_footer_release);
            }
        }
        int i10 = R.styleable.ClassicsFooter_srlTextLoading;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            this.f20582static = typedArrayObtainStyledAttributes.getString(i10);
        } else {
            String str3 = f20570abstract;
            if (str3 != null) {
                this.f20582static = str3;
            } else {
                this.f20582static = context.getString(R.string.srl_footer_loading);
            }
        }
        int i11 = R.styleable.ClassicsFooter_srlTextRefreshing;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.f20583switch = typedArrayObtainStyledAttributes.getString(i11);
        } else {
            String str4 = f20571continue;
            if (str4 != null) {
                this.f20583switch = str4;
            } else {
                this.f20583switch = context.getString(R.string.srl_footer_refreshing);
            }
        }
        int i12 = R.styleable.ClassicsFooter_srlTextFinish;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            this.f20584throws = typedArrayObtainStyledAttributes.getString(i12);
        } else {
            String str5 = f20575strictfp;
            if (str5 != null) {
                this.f20584throws = str5;
            } else {
                this.f20584throws = context.getString(R.string.srl_footer_finish);
            }
        }
        int i13 = R.styleable.ClassicsFooter_srlTextFailed;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            this.f20577default = typedArrayObtainStyledAttributes.getString(i13);
        } else {
            String str6 = f20576volatile;
            if (str6 != null) {
                this.f20577default = str6;
            } else {
                this.f20577default = context.getString(R.string.srl_footer_failed);
            }
        }
        int i14 = R.styleable.ClassicsFooter_srlTextNothing;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            this.f20578extends = typedArrayObtainStyledAttributes.getString(i14);
        } else {
            String str7 = f20572interface;
            if (str7 != null) {
                this.f20578extends = str7;
            } else {
                this.f20578extends = context.getString(R.string.srl_footer_nothing);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        this.f20666new.setText(isInEditMode() ? this.f20582static : this.f20580public);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
    }
}

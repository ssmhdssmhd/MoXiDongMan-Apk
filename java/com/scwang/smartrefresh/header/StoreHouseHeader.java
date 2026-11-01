package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.support.v4.i02;
import android.support.v4.s12;
import android.support.v4.t12;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class StoreHouseHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: default, reason: not valid java name */
    public static final float f20169default = 0.4f;

    /* renamed from: extends, reason: not valid java name */
    public static final float f20170extends = 1.0f;

    /* renamed from: finally, reason: not valid java name */
    public static final float f20171finally = 0.4f;

    /* renamed from: package, reason: not valid java name */
    public static final int f20172package = 400;

    /* renamed from: throws, reason: not valid java name */
    public static final float f20173throws = 0.7f;

    /* renamed from: break, reason: not valid java name */
    public int f20174break;

    /* renamed from: case, reason: not valid java name */
    public int f20175case;

    /* renamed from: catch, reason: not valid java name */
    public int f20176catch;

    /* renamed from: class, reason: not valid java name */
    public int f20177class;

    /* renamed from: const, reason: not valid java name */
    public int f20178const;

    /* renamed from: else, reason: not valid java name */
    public int f20179else;

    /* renamed from: final, reason: not valid java name */
    public int f20180final;

    /* renamed from: goto, reason: not valid java name */
    public int f20181goto;

    /* renamed from: import, reason: not valid java name */
    public boolean f20182import;

    /* renamed from: native, reason: not valid java name */
    public boolean f20183native;

    /* renamed from: new, reason: not valid java name */
    public List<s12> f20184new;

    /* renamed from: public, reason: not valid java name */
    public Matrix f20185public;

    /* renamed from: return, reason: not valid java name */
    public RefreshKernel f20186return;

    /* renamed from: static, reason: not valid java name */
    public Cif f20187static;

    /* renamed from: super, reason: not valid java name */
    public int f20188super;

    /* renamed from: switch, reason: not valid java name */
    public Transformation f20189switch;

    /* renamed from: this, reason: not valid java name */
    public float f20190this;

    /* renamed from: throw, reason: not valid java name */
    public int f20191throw;

    /* renamed from: try, reason: not valid java name */
    public float f20192try;

    /* renamed from: while, reason: not valid java name */
    public int f20193while;

    /* renamed from: com.scwang.smartrefresh.header.StoreHouseHeader$do, reason: invalid class name */
    public class Cdo extends Animation {
        public Cdo() {
            super.setDuration(250L);
            super.setInterpolator(new AccelerateInterpolator());
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            StoreHouseHeader storeHouseHeader = StoreHouseHeader.this;
            storeHouseHeader.f20190this = 1.0f - f;
            storeHouseHeader.invalidate();
            if (f == 1.0f) {
                for (int i = 0; i < StoreHouseHeader.this.f20184new.size(); i++) {
                    StoreHouseHeader.this.f20184new.get(i).m7238if(StoreHouseHeader.this.f20181goto);
                }
            }
        }
    }

    public StoreHouseHeader(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    public StoreHouseHeader m24316case(int i) {
        this.f20175case = i;
        for (int i2 = 0; i2 < this.f20184new.size(); i2++) {
            this.f20184new.get(i2).m7240try(i);
        }
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int iSave = canvas.save();
        int size = this.f20184new.size();
        float f = isInEditMode() ? 1.0f : this.f20190this;
        for (int i = 0; i < size; i++) {
            canvas.save();
            s12 s12Var = this.f20184new.get(i);
            float f2 = this.f20177class;
            PointF pointF = s12Var.f5993do;
            float f3 = f2 + pointF.x;
            float f4 = this.f20178const + pointF.y;
            if (this.f20182import) {
                s12Var.getTransformation(getDrawingTime(), this.f20189switch);
                canvas.translate(f3, f4);
            } else if (f == 0.0f) {
                s12Var.m7238if(this.f20181goto);
            } else {
                float f5 = (i * 0.3f) / size;
                float f6 = 0.3f - f5;
                if (f == 1.0f || f >= 1.0f - f6) {
                    canvas.translate(f3, f4);
                    s12Var.m7237for(0.4f);
                } else {
                    float fMin = f > f5 ? Math.min(1.0f, (f - f5) / 0.7f) : 0.0f;
                    float f7 = 1.0f - fMin;
                    this.f20185public.reset();
                    this.f20185public.postRotate(360.0f * fMin);
                    this.f20185public.postScale(fMin, fMin);
                    this.f20185public.postTranslate(f3 + (s12Var.f5997if * f7), f4 + ((-this.f20179else) * f7));
                    s12Var.m7237for(fMin * 0.4f);
                    canvas.concat(this.f20185public);
                }
            }
            s12Var.m7236do(canvas);
            canvas.restore();
        }
        if (this.f20182import) {
            invalidate();
        }
        canvas.restoreToCount(iSave);
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public StoreHouseHeader m24317do(List<float[]> list) {
        boolean z = this.f20184new.size() > 0;
        this.f20184new.clear();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        for (int i = 0; i < list.size(); i++) {
            float[] fArr = list.get(i);
            PointF pointF = new PointF(i02.m3194new(fArr[0]) * this.f20192try, i02.m3194new(fArr[1]) * this.f20192try);
            PointF pointF2 = new PointF(i02.m3194new(fArr[2]) * this.f20192try, i02.m3194new(fArr[3]) * this.f20192try);
            fMax = Math.max(Math.max(fMax, pointF.x), pointF2.x);
            fMax2 = Math.max(Math.max(fMax2, pointF.y), pointF2.y);
            s12 s12Var = new s12(i, pointF, pointF2, this.f20191throw, this.f20175case);
            s12Var.m7238if(this.f20181goto);
            this.f20184new.add(s12Var);
        }
        this.f20174break = (int) Math.ceil(fMax);
        this.f20176catch = (int) Math.ceil(fMax2);
        if (z) {
            requestLayout();
        }
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public StoreHouseHeader m24318else(int i) {
        this.f20180final = i;
        this.f20188super = i;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public StoreHouseHeader m24319for(String str, int i) {
        m24317do(t12.m7681do(str, i * 0.01f, 14));
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public StoreHouseHeader m24320goto(float f) {
        this.f20192try = f;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public StoreHouseHeader m24321if(String str) {
        m24319for(str, 25);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public StoreHouseHeader m24322new(int i) throws Resources.NotFoundException {
        String[] stringArray = getResources().getStringArray(i);
        ArrayList arrayList = new ArrayList();
        for (String str : stringArray) {
            String[] strArrSplit = str.split(",");
            float[] fArr = new float[4];
            for (int i2 = 0; i2 < 4; i2++) {
                fArr[i2] = Float.parseFloat(strArrSplit[i2]);
            }
            arrayList.add(fArr);
        }
        m24317do(arrayList);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20182import = false;
        this.f20187static.m24328new();
        if (z && this.f20183native) {
            startAnimation(new Cdo());
            return 250;
        }
        for (int i = 0; i < this.f20184new.size(); i++) {
            this.f20184new.get(i).m7238if(this.f20181goto);
        }
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20186return = refreshKernel;
        refreshKernel.requestDrawBackgroundFor(this, this.f20193while);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.setMeasuredDimension(View.resolveSize(super.getSuggestedMinimumWidth(), i), View.resolveSize(super.getSuggestedMinimumHeight(), i2));
        this.f20177class = (getMeasuredWidth() - this.f20174break) / 2;
        this.f20178const = (getMeasuredHeight() - this.f20176catch) / 2;
        this.f20179else = getMeasuredHeight() / 2;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20190this = f * 0.8f;
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20182import = true;
        this.f20187static.m24326for();
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            int i = iArr[0];
            this.f20193while = i;
            RefreshKernel refreshKernel = this.f20186return;
            if (refreshKernel != null) {
                refreshKernel.requestDrawBackgroundFor(this, i);
            }
            if (iArr.length > 1) {
                m24323this(iArr[1]);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public StoreHouseHeader m24323this(@ColorInt int i) {
        this.f20191throw = i;
        for (int i2 = 0; i2 < this.f20184new.size(); i2++) {
            this.f20184new.get(i2).m7239new(i);
        }
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public StoreHouseHeader m24324try(int i) {
        this.f20179else = i;
        return this;
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20184new = new ArrayList();
        this.f20192try = 1.0f;
        this.f20175case = -1;
        this.f20179else = -1;
        this.f20181goto = -1;
        this.f20190this = 0.0f;
        this.f20174break = 0;
        this.f20176catch = 0;
        this.f20177class = 0;
        this.f20178const = 0;
        this.f20180final = 1000;
        this.f20188super = 1000;
        this.f20191throw = -1;
        this.f20193while = 0;
        this.f20182import = false;
        this.f20183native = false;
        this.f20185public = new Matrix();
        this.f20187static = new Cif(this, null);
        this.f20189switch = new Transformation();
        this.f20175case = i02.m3194new(1.0f);
        this.f20179else = i02.m3194new(40.0f);
        this.f20181goto = Resources.getSystem().getDisplayMetrics().widthPixels / 2;
        this.f20193while = -13421773;
        m24323this(-3355444);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.StoreHouseHeader);
        this.f20175case = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.StoreHouseHeader_shhLineWidth, this.f20175case);
        this.f20179else = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.StoreHouseHeader_shhDropHeight, this.f20179else);
        this.f20183native = typedArrayObtainStyledAttributes.getBoolean(R.styleable.StoreHouseHeader_shhEnableFadeAnimation, this.f20183native);
        int i = R.styleable.StoreHouseHeader_shhText;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            m24321if(typedArrayObtainStyledAttributes.getString(i));
        } else {
            m24321if("StoreHouse");
        }
        typedArrayObtainStyledAttributes.recycle();
        setMinimumHeight(this.f20176catch + i02.m3194new(40.0f));
    }

    /* renamed from: com.scwang.smartrefresh.header.StoreHouseHeader$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f20196do;

        /* renamed from: for, reason: not valid java name */
        public int f20197for;

        /* renamed from: if, reason: not valid java name */
        public int f20198if;

        /* renamed from: new, reason: not valid java name */
        public int f20199new;

        /* renamed from: try, reason: not valid java name */
        public boolean f20200try;

        private Cif() {
            this.f20196do = 0;
            this.f20198if = 0;
            this.f20197for = 0;
            this.f20199new = 0;
            this.f20200try = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public void m24326for() {
            this.f20200try = true;
            this.f20196do = 0;
            StoreHouseHeader storeHouseHeader = StoreHouseHeader.this;
            int size = storeHouseHeader.f20180final / storeHouseHeader.f20184new.size();
            this.f20199new = size;
            StoreHouseHeader storeHouseHeader2 = StoreHouseHeader.this;
            this.f20198if = storeHouseHeader2.f20188super / size;
            this.f20197for = (storeHouseHeader2.f20184new.size() / this.f20198if) + 1;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public void m24328new() {
            this.f20200try = false;
            StoreHouseHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            RefreshKernel refreshKernel;
            int i = this.f20196do % this.f20198if;
            for (int i2 = 0; i2 < this.f20197for; i2++) {
                int i3 = (this.f20198if * i2) + i;
                if (i3 <= this.f20196do) {
                    s12 s12Var = StoreHouseHeader.this.f20184new.get(i3 % StoreHouseHeader.this.f20184new.size());
                    s12Var.setFillAfter(false);
                    s12Var.setFillEnabled(true);
                    s12Var.setFillBefore(false);
                    s12Var.setDuration(400L);
                    s12Var.m7235case(1.0f, 0.4f);
                }
            }
            this.f20196do++;
            if (!this.f20200try || (refreshKernel = StoreHouseHeader.this.f20186return) == null) {
                return;
            }
            refreshKernel.getRefreshLayout().getLayout().postDelayed(this, this.f20199new);
        }

        public /* synthetic */ Cif(StoreHouseHeader storeHouseHeader, Cdo cdo) {
            this();
        }
    }
}

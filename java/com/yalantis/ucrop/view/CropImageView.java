package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.ct;
import android.support.v4.d9;
import android.support.v4.vs;
import android.support.v4.xl0;
import android.support.v4.xl1;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.callback.BitmapCropCallback;
import com.yalantis.ucrop.callback.CropBoundsChangeListener;
import com.yalantis.ucrop.view.TransformImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class CropImageView extends TransformImageView {

    /* renamed from: interface, reason: not valid java name */
    public static final float f23097interface = 10.0f;

    /* renamed from: protected, reason: not valid java name */
    public static final float f23098protected = 0.0f;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f23099strictfp = 0;

    /* renamed from: transient, reason: not valid java name */
    public static final float f23100transient = 0.0f;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f23101volatile = 500;

    /* renamed from: abstract, reason: not valid java name */
    private int f23102abstract;

    /* renamed from: continue, reason: not valid java name */
    private long f23103continue;

    /* renamed from: default, reason: not valid java name */
    private Runnable f23104default;

    /* renamed from: extends, reason: not valid java name */
    private Runnable f23105extends;

    /* renamed from: finally, reason: not valid java name */
    private float f23106finally;

    /* renamed from: package, reason: not valid java name */
    private float f23107package;

    /* renamed from: private, reason: not valid java name */
    private int f23108private;

    /* renamed from: public, reason: not valid java name */
    private final RectF f23109public;

    /* renamed from: return, reason: not valid java name */
    private final Matrix f23110return;

    /* renamed from: static, reason: not valid java name */
    private float f23111static;

    /* renamed from: switch, reason: not valid java name */
    private float f23112switch;

    /* renamed from: throws, reason: not valid java name */
    private CropBoundsChangeListener f23113throws;

    /* renamed from: com.yalantis.ucrop.view.CropImageView$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: break, reason: not valid java name */
        private final boolean f23114break;

        /* renamed from: case, reason: not valid java name */
        private final float f23115case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<CropImageView> f23116do;

        /* renamed from: else, reason: not valid java name */
        private final float f23117else;

        /* renamed from: for, reason: not valid java name */
        private final long f23118for = System.currentTimeMillis();

        /* renamed from: goto, reason: not valid java name */
        private final float f23119goto;

        /* renamed from: if, reason: not valid java name */
        private final long f23120if;

        /* renamed from: new, reason: not valid java name */
        private final float f23121new;

        /* renamed from: this, reason: not valid java name */
        private final float f23122this;

        /* renamed from: try, reason: not valid java name */
        private final float f23123try;

        public Cdo(CropImageView cropImageView, long j, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
            this.f23116do = new WeakReference<>(cropImageView);
            this.f23120if = j;
            this.f23121new = f;
            this.f23123try = f2;
            this.f23115case = f3;
            this.f23117else = f4;
            this.f23119goto = f5;
            this.f23122this = f6;
            this.f23114break = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f23116do.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.f23120if, System.currentTimeMillis() - this.f23118for);
            float fM1012for = ct.m1012for(fMin, 0.0f, this.f23115case, this.f23120if);
            float fM1012for2 = ct.m1012for(fMin, 0.0f, this.f23117else, this.f23120if);
            float fM1013if = ct.m1013if(fMin, 0.0f, this.f23122this, this.f23120if);
            if (fMin < this.f23120if) {
                float[] fArr = cropImageView.f23187if;
                cropImageView.m27546catch(fM1012for - (fArr[0] - this.f23121new), fM1012for2 - (fArr[1] - this.f23123try));
                if (!this.f23114break) {
                    cropImageView.m27517private(this.f23119goto + fM1013if, cropImageView.f23109public.centerX(), cropImageView.f23109public.centerY());
                }
                if (cropImageView.m27519return()) {
                    return;
                }
                cropImageView.post(this);
            }
        }
    }

    /* renamed from: com.yalantis.ucrop.view.CropImageView$if, reason: invalid class name */
    public static class Cif implements Runnable {

        /* renamed from: case, reason: not valid java name */
        private final float f23124case;

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<CropImageView> f23125do;

        /* renamed from: else, reason: not valid java name */
        private final float f23126else;

        /* renamed from: for, reason: not valid java name */
        private final long f23127for = System.currentTimeMillis();

        /* renamed from: if, reason: not valid java name */
        private final long f23128if;

        /* renamed from: new, reason: not valid java name */
        private final float f23129new;

        /* renamed from: try, reason: not valid java name */
        private final float f23130try;

        public Cif(CropImageView cropImageView, long j, float f, float f2, float f3, float f4) {
            this.f23125do = new WeakReference<>(cropImageView);
            this.f23128if = j;
            this.f23129new = f;
            this.f23130try = f2;
            this.f23124case = f3;
            this.f23126else = f4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.f23125do.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.f23128if, System.currentTimeMillis() - this.f23127for);
            float fM1013if = ct.m1013if(fMin, 0.0f, this.f23130try, this.f23128if);
            if (fMin >= this.f23128if) {
                cropImageView.m27512default();
            } else {
                cropImageView.m27517private(this.f23129new + fM1013if, this.f23124case, this.f23126else);
                cropImageView.post(this);
            }
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    /* renamed from: extends, reason: not valid java name */
    private void m27504extends(float f, float f2) {
        float fWidth = this.f23109public.width();
        float fHeight = this.f23109public.height();
        float fMax = Math.max(this.f23109public.width() / f, this.f23109public.height() / f2);
        RectF rectF = this.f23109public;
        float f3 = ((fWidth - (f * fMax)) / 2.0f) + rectF.left;
        float f4 = ((fHeight - (f2 * fMax)) / 2.0f) + rectF.top;
        this.f23188new.reset();
        this.f23188new.postScale(fMax, fMax);
        this.f23188new.postTranslate(f3, f4);
        setImageMatrix(this.f23188new);
    }

    /* renamed from: import, reason: not valid java name */
    private void m27505import(float f, float f2) {
        float fMin = Math.min(Math.min(this.f23109public.width() / f, this.f23109public.width() / f2), Math.min(this.f23109public.height() / f2, this.f23109public.height() / f));
        this.f23107package = fMin;
        this.f23106finally = fMin * this.f23112switch;
    }

    /* renamed from: throw, reason: not valid java name */
    private float[] m27507throw() {
        this.f23110return.reset();
        this.f23110return.setRotate(-getCurrentAngle());
        float[] fArr = this.f23182do;
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        float[] fArrM9537if = xl1.m9537if(this.f23109public);
        this.f23110return.mapPoints(fArrCopyOf);
        this.f23110return.mapPoints(fArrM9537if);
        RectF rectFM9538new = xl1.m9538new(fArrCopyOf);
        RectF rectFM9538new2 = xl1.m9538new(fArrM9537if);
        float f = rectFM9538new.left - rectFM9538new2.left;
        float f2 = rectFM9538new.top - rectFM9538new2.top;
        float f3 = rectFM9538new.right - rectFM9538new2.right;
        float f4 = rectFM9538new.bottom - rectFM9538new2.bottom;
        float[] fArr2 = new float[4];
        if (f <= 0.0f) {
            f = 0.0f;
        }
        fArr2[0] = f;
        if (f2 <= 0.0f) {
            f2 = 0.0f;
        }
        fArr2[1] = f2;
        if (f3 >= 0.0f) {
            f3 = 0.0f;
        }
        fArr2[2] = f3;
        if (f4 >= 0.0f) {
            f4 = 0.0f;
        }
        fArr2[3] = f4;
        this.f23110return.reset();
        this.f23110return.setRotate(getCurrentAngle());
        this.f23110return.mapPoints(fArr2);
        return fArr2;
    }

    /* renamed from: while, reason: not valid java name */
    private void m27508while() {
        if (getDrawable() == null) {
            return;
        }
        m27505import(r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m27509abstract(float f) {
        m27511continue(f, this.f23109public.centerX(), this.f23109public.centerY());
    }

    @Override // com.yalantis.ucrop.view.TransformImageView
    /* renamed from: break, reason: not valid java name */
    public void mo27510break(float f, float f2, float f3) {
        if (f > 1.0f && getCurrentScale() * f <= getMaxScale()) {
            super.mo27510break(f, f2, f3);
        } else {
            if (f >= 1.0f || getCurrentScale() * f < getMinScale()) {
                return;
            }
            super.mo27510break(f, f2, f3);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public void m27511continue(float f, float f2, float f3) {
        if (f >= getMinScale()) {
            mo27510break(f / getCurrentScale(), f2, f3);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m27512default() {
        setImageToWrapCropBounds(true);
    }

    /* renamed from: finally, reason: not valid java name */
    public void m27513finally(float f, float f2, float f3, long j) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        float currentScale = getCurrentScale();
        Cif cif = new Cif(this, j, currentScale, f - currentScale, f2, f3);
        this.f23105extends = cif;
        post(cif);
    }

    @Nullable
    public CropBoundsChangeListener getCropBoundsChangeListener() {
        return this.f23113throws;
    }

    public float getMaxScale() {
        return this.f23106finally;
    }

    public float getMinScale() {
        return this.f23107package;
    }

    public float getTargetAspectRatio() {
        return this.f23111static;
    }

    @Override // com.yalantis.ucrop.view.TransformImageView
    /* renamed from: goto, reason: not valid java name */
    public void mo27514goto() {
        super.mo27514goto();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.f23111static == 0.0f) {
            this.f23111static = intrinsicWidth / intrinsicHeight;
        }
        int i = this.f23191try;
        float f = this.f23111static;
        int i2 = (int) (i / f);
        int i3 = this.f23178case;
        if (i2 > i3) {
            this.f23109public.set((i - ((int) (i3 * f))) / 2, 0.0f, r4 + r2, i3);
        } else {
            this.f23109public.set(0.0f, (i3 - i2) / 2, i, i2 + r6);
        }
        m27505import(intrinsicWidth, intrinsicHeight);
        m27504extends(intrinsicWidth, intrinsicHeight);
        CropBoundsChangeListener cropBoundsChangeListener = this.f23113throws;
        if (cropBoundsChangeListener != null) {
            cropBoundsChangeListener.onCropAspectRatioChanged(this.f23111static);
        }
        TransformImageView.TransformImageListener transformImageListener = this.f23183else;
        if (transformImageListener != null) {
            transformImageListener.onScale(getCurrentScale());
            this.f23183else.onRotate(getCurrentAngle());
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m27515native() {
        removeCallbacks(this.f23104default);
        removeCallbacks(this.f23105extends);
    }

    /* renamed from: package, reason: not valid java name */
    public void m27516package(float f) {
        m27517private(f, this.f23109public.centerX(), this.f23109public.centerY());
    }

    /* renamed from: private, reason: not valid java name */
    public void m27517private(float f, float f2, float f3) {
        if (f <= getMaxScale()) {
            mo27510break(f / getCurrentScale(), f2, f3);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m27518public(@NonNull Bitmap.CompressFormat compressFormat, int i, @Nullable BitmapCropCallback bitmapCropCallback) {
        m27515native();
        setImageToWrapCropBounds(false);
        new d9(getContext(), getViewBitmap(), new xl0(this.f23109public, xl1.m9538new(this.f23182do), getCurrentScale(), getCurrentAngle()), new vs(this.f23108private, this.f23102abstract, compressFormat, i, getImageInputUri(), getImageOutputPath(), getExifInfo()), bitmapCropCallback).execute(new Void[0]);
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m27519return() {
        return m27520static(this.f23182do);
    }

    public void setCropBoundsChangeListener(@Nullable CropBoundsChangeListener cropBoundsChangeListener) {
        this.f23113throws = cropBoundsChangeListener;
    }

    public void setCropRect(RectF rectF) {
        this.f23111static = rectF.width() / rectF.height();
        this.f23109public.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        m27508while();
        m27512default();
    }

    public void setImageToWrapCropBounds(boolean z) {
        float f;
        float fMax;
        float f2;
        if (!this.f23179catch || m27519return()) {
            return;
        }
        float[] fArr = this.f23187if;
        float f3 = fArr[0];
        float f4 = fArr[1];
        float currentScale = getCurrentScale();
        float fCenterX = this.f23109public.centerX() - f3;
        float fCenterY = this.f23109public.centerY() - f4;
        this.f23110return.reset();
        this.f23110return.setTranslate(fCenterX, fCenterY);
        float[] fArr2 = this.f23182do;
        float[] fArrCopyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.f23110return.mapPoints(fArrCopyOf);
        boolean zM27520static = m27520static(fArrCopyOf);
        if (zM27520static) {
            float[] fArrM27507throw = m27507throw();
            float f5 = -(fArrM27507throw[0] + fArrM27507throw[2]);
            f2 = -(fArrM27507throw[1] + fArrM27507throw[3]);
            f = f5;
            fMax = 0.0f;
        } else {
            RectF rectF = new RectF(this.f23109public);
            this.f23110return.reset();
            this.f23110return.setRotate(getCurrentAngle());
            this.f23110return.mapRect(rectF);
            float[] fArrM9536for = xl1.m9536for(this.f23182do);
            f = fCenterX;
            fMax = (Math.max(rectF.width() / fArrM9536for[0], rectF.height() / fArrM9536for[1]) * currentScale) - currentScale;
            f2 = fCenterY;
        }
        if (z) {
            Cdo cdo = new Cdo(this, this.f23103continue, f3, f4, f, f2, currentScale, fMax, zM27520static);
            this.f23104default = cdo;
            post(cdo);
        } else {
            m27546catch(f, f2);
            if (zM27520static) {
                return;
            }
            m27517private(currentScale + fMax, this.f23109public.centerX(), this.f23109public.centerY());
        }
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = 100) long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Animation duration cannot be negative value.");
        }
        this.f23103continue = j;
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int i) {
        this.f23108private = i;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int i) {
        this.f23102abstract = i;
    }

    public void setMaxScaleMultiplier(float f) {
        this.f23112switch = f;
    }

    public void setTargetAspectRatio(float f) {
        if (getDrawable() == null) {
            this.f23111static = f;
            return;
        }
        if (f == 0.0f) {
            this.f23111static = r0.getIntrinsicWidth() / r0.getIntrinsicHeight();
        } else {
            this.f23111static = f;
        }
        CropBoundsChangeListener cropBoundsChangeListener = this.f23113throws;
        if (cropBoundsChangeListener != null) {
            cropBoundsChangeListener.onCropAspectRatioChanged(this.f23111static);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m27520static(float[] fArr) {
        this.f23110return.reset();
        this.f23110return.setRotate(-getCurrentAngle());
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        this.f23110return.mapPoints(fArrCopyOf);
        float[] fArrM9537if = xl1.m9537if(this.f23109public);
        this.f23110return.mapPoints(fArrM9537if);
        return xl1.m9538new(fArrCopyOf).contains(xl1.m9538new(fArrM9537if));
    }

    /* renamed from: switch, reason: not valid java name */
    public void m27521switch(float f) {
        m27550this(f, this.f23109public.centerX(), this.f23109public.centerY());
    }

    /* renamed from: throws, reason: not valid java name */
    public void m27522throws(@NonNull TypedArray typedArray) {
        float fAbs = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_x, 0.0f));
        float fAbs2 = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_y, 0.0f));
        if (fAbs == 0.0f || fAbs2 == 0.0f) {
            this.f23111static = 0.0f;
        } else {
            this.f23111static = fAbs / fAbs2;
        }
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23109public = new RectF();
        this.f23110return = new Matrix();
        this.f23112switch = 10.0f;
        this.f23105extends = null;
        this.f23108private = 0;
        this.f23102abstract = 0;
        this.f23103continue = 500L;
    }
}

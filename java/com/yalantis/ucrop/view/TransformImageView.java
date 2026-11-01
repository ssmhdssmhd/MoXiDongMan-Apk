package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.a90;
import android.support.v4.ha0;
import android.support.v4.l9;
import android.support.v4.xl1;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.callback.BitmapLoadCallback;

/* loaded from: classes2.dex */
public class TransformImageView extends ImageView {

    /* renamed from: import, reason: not valid java name */
    private static final int f23173import = 2;

    /* renamed from: native, reason: not valid java name */
    private static final int f23174native = 9;

    /* renamed from: throw, reason: not valid java name */
    private static final String f23175throw = "TransformImageView";

    /* renamed from: while, reason: not valid java name */
    private static final int f23176while = 8;

    /* renamed from: break, reason: not valid java name */
    public boolean f23177break;

    /* renamed from: case, reason: not valid java name */
    public int f23178case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f23179catch;

    /* renamed from: class, reason: not valid java name */
    private int f23180class;

    /* renamed from: const, reason: not valid java name */
    private Uri f23181const;

    /* renamed from: do, reason: not valid java name */
    public final float[] f23182do;

    /* renamed from: else, reason: not valid java name */
    public TransformImageListener f23183else;

    /* renamed from: final, reason: not valid java name */
    private String f23184final;

    /* renamed from: for, reason: not valid java name */
    private final float[] f23185for;

    /* renamed from: goto, reason: not valid java name */
    private float[] f23186goto;

    /* renamed from: if, reason: not valid java name */
    public final float[] f23187if;

    /* renamed from: new, reason: not valid java name */
    public Matrix f23188new;

    /* renamed from: super, reason: not valid java name */
    private a90 f23189super;

    /* renamed from: this, reason: not valid java name */
    private float[] f23190this;

    /* renamed from: try, reason: not valid java name */
    public int f23191try;

    public interface TransformImageListener {
        void onLoadComplete();

        void onLoadFailure(@NonNull Exception exc);

        void onRotate(float f);

        void onScale(float f);
    }

    /* renamed from: com.yalantis.ucrop.view.TransformImageView$do, reason: invalid class name */
    public class Cdo implements BitmapLoadCallback {
        public Cdo() {
        }

        @Override // com.yalantis.ucrop.callback.BitmapLoadCallback
        public void onBitmapLoaded(@NonNull Bitmap bitmap, @NonNull a90 a90Var, @NonNull Uri uri, @Nullable Uri uri2) {
            TransformImageView.this.f23181const = uri;
            TransformImageView.this.f23184final = uri2.getPath();
            TransformImageView.this.f23189super = a90Var;
            TransformImageView transformImageView = TransformImageView.this;
            transformImageView.f23177break = true;
            transformImageView.setImageBitmap(bitmap);
        }

        @Override // com.yalantis.ucrop.callback.BitmapLoadCallback
        public void onFailure(@NonNull Exception exc) {
            TransformImageListener transformImageListener = TransformImageView.this.f23183else;
            if (transformImageListener != null) {
                transformImageListener.onLoadFailure(exc);
            }
        }
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    /* renamed from: final, reason: not valid java name */
    private void m27542final() {
        this.f23188new.mapPoints(this.f23182do, this.f23186goto);
        this.f23188new.mapPoints(this.f23187if, this.f23190this);
    }

    /* renamed from: break */
    public void mo27510break(float f, float f2, float f3) {
        if (f != 0.0f) {
            this.f23188new.postScale(f, f, f2, f3);
            setImageMatrix(this.f23188new);
            TransformImageListener transformImageListener = this.f23183else;
            if (transformImageListener != null) {
                transformImageListener.onScale(m27551try(this.f23188new));
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public float m27545case(@NonNull Matrix matrix, @IntRange(from = 0, to = 9) int i) {
        matrix.getValues(this.f23185for);
        return this.f23185for[i];
    }

    /* renamed from: catch, reason: not valid java name */
    public void m27546catch(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        this.f23188new.postTranslate(f, f2);
        setImageMatrix(this.f23188new);
    }

    /* renamed from: class, reason: not valid java name */
    public void m27547class(@NonNull String str, @NonNull Matrix matrix) {
        float fM27545case = m27545case(matrix, 2);
        float fM27545case2 = m27545case(matrix, 5);
        float fM27551try = m27551try(matrix);
        float fM27549new = m27549new(matrix);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": matrix: { x: ");
        sb.append(fM27545case);
        sb.append(", y: ");
        sb.append(fM27545case2);
        sb.append(", scale: ");
        sb.append(fM27551try);
        sb.append(", angle: ");
        sb.append(fM27549new);
        sb.append(" }");
    }

    /* renamed from: const, reason: not valid java name */
    public void m27548const(@NonNull Uri uri, @Nullable Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        l9.m4617new(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new Cdo());
    }

    /* renamed from: else */
    public void mo27526else() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public float getCurrentAngle() {
        return m27549new(this.f23188new);
    }

    public float getCurrentScale() {
        return m27551try(this.f23188new);
    }

    public a90 getExifInfo() {
        return this.f23189super;
    }

    public Uri getImageInputUri() {
        return this.f23181const;
    }

    public String getImageOutputPath() {
        return this.f23184final;
    }

    public int getMaxBitmapSize() {
        if (this.f23180class <= 0) {
            this.f23180class = l9.m4616if(getContext());
        }
        return this.f23180class;
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof ha0)) {
            return null;
        }
        return ((ha0) getDrawable()).m2972do();
    }

    /* renamed from: goto */
    public void mo27514goto() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.f23186goto = xl1.m9537if(rectF);
        this.f23190this = xl1.m9535do(rectF);
        this.f23179catch = true;
        TransformImageListener transformImageListener = this.f23183else;
        if (transformImageListener != null) {
            transformImageListener.onLoadComplete();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public float m27549new(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2(m27545case(matrix, 1), m27545case(matrix, 0)) * 57.29577951308232d));
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z || (this.f23177break && !this.f23179catch)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f23191try = width - paddingLeft;
            this.f23178case = height - paddingTop;
            mo27514goto();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new ha0(bitmap));
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.f23188new.set(matrix);
        m27542final();
    }

    public void setMaxBitmapSize(int i) {
        this.f23180class = i;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        }
    }

    public void setTransformImageListener(TransformImageListener transformImageListener) {
        this.f23183else = transformImageListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m27550this(float f, float f2, float f3) {
        if (f != 0.0f) {
            this.f23188new.postRotate(f, f2, f3);
            setImageMatrix(this.f23188new);
            TransformImageListener transformImageListener = this.f23183else;
            if (transformImageListener != null) {
                transformImageListener.onRotate(m27549new(this.f23188new));
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public float m27551try(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow(m27545case(matrix, 0), 2.0d) + Math.pow(m27545case(matrix, 3), 2.0d));
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23182do = new float[8];
        this.f23187if = new float[2];
        this.f23185for = new float[9];
        this.f23188new = new Matrix();
        this.f23177break = false;
        this.f23179catch = false;
        this.f23180class = 0;
        mo27526else();
    }
}

package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIRadiusImageView extends AppCompatImageView {

    /* renamed from: default, reason: not valid java name */
    private static final Bitmap.Config f19475default = Bitmap.Config.ARGB_8888;

    /* renamed from: extends, reason: not valid java name */
    private static final int f19476extends = 2;

    /* renamed from: throws, reason: not valid java name */
    private static final int f19477throws = -7829368;

    /* renamed from: break, reason: not valid java name */
    private int f19478break;

    /* renamed from: case, reason: not valid java name */
    private int f19479case;

    /* renamed from: catch, reason: not valid java name */
    private Paint f19480catch;

    /* renamed from: class, reason: not valid java name */
    private Paint f19481class;

    /* renamed from: const, reason: not valid java name */
    private ColorFilter f19482const;

    /* renamed from: do, reason: not valid java name */
    private boolean f19483do;

    /* renamed from: else, reason: not valid java name */
    private int f19484else;

    /* renamed from: final, reason: not valid java name */
    private ColorFilter f19485final;

    /* renamed from: for, reason: not valid java name */
    private boolean f19486for;

    /* renamed from: goto, reason: not valid java name */
    private int f19487goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f19488if;

    /* renamed from: import, reason: not valid java name */
    private RectF f19489import;

    /* renamed from: native, reason: not valid java name */
    private Bitmap f19490native;

    /* renamed from: new, reason: not valid java name */
    private int f19491new;

    /* renamed from: public, reason: not valid java name */
    private Matrix f19492public;

    /* renamed from: return, reason: not valid java name */
    private int f19493return;

    /* renamed from: static, reason: not valid java name */
    private int f19494static;

    /* renamed from: super, reason: not valid java name */
    private BitmapShader f19495super;

    /* renamed from: switch, reason: not valid java name */
    private ImageView.ScaleType f19496switch;

    /* renamed from: this, reason: not valid java name */
    private boolean f19497this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f19498throw;

    /* renamed from: try, reason: not valid java name */
    private int f19499try;

    /* renamed from: while, reason: not valid java name */
    private RectF f19500while;

    public QMUIRadiusImageView(Context context) {
        this(context, null, R.attr.QMUIRadiusImageViewStyle);
    }

    /* renamed from: do, reason: not valid java name */
    private void m23776do(Canvas canvas, int i) {
        float f = (i * 1.0f) / 2.0f;
        this.f19480catch.setColorFilter(this.f19483do ? this.f19485final : this.f19482const);
        if (this.f19486for) {
            canvas.drawCircle(this.f19500while.centerX(), this.f19500while.centerY(), Math.min(this.f19500while.width() / 2.0f, this.f19500while.height() / 2.0f) - f, this.f19480catch);
            return;
        }
        RectF rectF = this.f19489import;
        RectF rectF2 = this.f19500while;
        rectF.left = rectF2.left + f;
        rectF.top = rectF2.top + f;
        rectF.right = rectF2.right - f;
        rectF.bottom = rectF2.bottom - f;
        if (this.f19488if) {
            canvas.drawOval(rectF, this.f19480catch);
        } else {
            int i2 = this.f19478break;
            canvas.drawRoundRect(rectF, i2, i2, this.f19480catch);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m23777else() {
        Bitmap bitmap;
        this.f19492public.reset();
        this.f19498throw = false;
        if (this.f19495super == null || (bitmap = this.f19490native) == null) {
            return;
        }
        m23778goto(this.f19492public, bitmap, this.f19500while);
        this.f19495super.setLocalMatrix(this.f19492public);
        this.f19480catch.setShader(this.f19495super);
    }

    private Bitmap getBitmap() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        if (!(drawable instanceof BitmapDrawable)) {
            try {
                Bitmap bitmapCreateBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f19475default) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f19475default);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return bitmapCreateBitmap;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width == 0.0f || height == 0.0f) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            float minimumWidth = getMinimumWidth() / width;
            float minimumHeight = getMinimumHeight() / height;
            if (minimumWidth > 1.0f || minimumHeight > 1.0f) {
                float fMax = Math.max(minimumWidth, minimumHeight);
                Matrix matrix = new Matrix();
                matrix.postScale(fMax, fMax);
                return Bitmap.createBitmap(bitmap, 0, 0, (int) width, (int) height, matrix, false);
            }
        }
        return bitmap;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m23778goto(@NonNull Matrix matrix, @NonNull Bitmap bitmap, RectF rectF) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (scaleType == ImageView.ScaleType.MATRIX) {
            m23783this(matrix, bitmap, rectF);
            return;
        }
        if (scaleType == ImageView.ScaleType.CENTER) {
            float f = (this.f19493return - width) / 2.0f;
            float f2 = (this.f19494static - height) / 2.0f;
            matrix.postTranslate(f, f2);
            rectF.set(Math.max(0.0f, f), Math.max(0.0f, f2), Math.min(f + width, this.f19493return), Math.min(f2 + height, this.f19494static));
            return;
        }
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(this.f19493return / width, this.f19494static / height);
            matrix.setScale(fMax, fMax);
            matrix.postTranslate((-((width * fMax) - this.f19493return)) / 2.0f, (-((fMax * height) - this.f19494static)) / 2.0f);
            rectF.set(0.0f, 0.0f, this.f19493return, this.f19494static);
            return;
        }
        if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            int i = this.f19493return;
            float f3 = i / width;
            int i2 = this.f19494static;
            float f4 = i2 / height;
            if (f3 >= 1.0f && f4 >= 1.0f) {
                float f5 = (i - width) / 2.0f;
                float f6 = (i2 - height) / 2.0f;
                matrix.postTranslate(f5, f6);
                rectF.set(f5, f6, width + f5, height + f6);
                return;
            }
            float fMin = Math.min(f3, f4);
            matrix.setScale(fMin, fMin);
            float f7 = width * fMin;
            float f8 = height * fMin;
            float f9 = (this.f19493return - f7) / 2.0f;
            float f10 = (this.f19494static - f8) / 2.0f;
            matrix.postTranslate(f9, f10);
            rectF.set(f9, f10, f7 + f9, f8 + f10);
            return;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            matrix.setScale(this.f19493return / width, this.f19494static / height);
            rectF.set(0.0f, 0.0f, this.f19493return, this.f19494static);
            return;
        }
        float fMin2 = Math.min(this.f19493return / width, this.f19494static / height);
        matrix.setScale(fMin2, fMin2);
        float f11 = width * fMin2;
        float f12 = height * fMin2;
        if (scaleType == ImageView.ScaleType.FIT_START) {
            rectF.set(0.0f, 0.0f, f11, f12);
            return;
        }
        if (scaleType == ImageView.ScaleType.FIT_CENTER) {
            float f13 = (this.f19493return - f11) / 2.0f;
            float f14 = (this.f19494static - f12) / 2.0f;
            matrix.postTranslate(f13, f14);
            rectF.set(f13, f14, f11 + f13, f12 + f14);
            return;
        }
        matrix.postTranslate(this.f19493return - f11, this.f19494static - f12);
        int i3 = this.f19493return;
        float f15 = i3 - f11;
        int i4 = this.f19494static;
        rectF.set(f15, i4 - f12, i3, i4);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23779if(Canvas canvas, int i) {
        if (i <= 0) {
            return;
        }
        float f = i;
        float f2 = (1.0f * f) / 2.0f;
        this.f19481class.setColor(this.f19483do ? this.f19484else : this.f19499try);
        this.f19481class.setStrokeWidth(f);
        if (this.f19486for) {
            canvas.drawCircle(this.f19500while.centerX(), this.f19500while.centerY(), (Math.min(this.f19500while.width(), this.f19500while.height()) / 2.0f) - f2, this.f19481class);
            return;
        }
        RectF rectF = this.f19489import;
        RectF rectF2 = this.f19500while;
        rectF.left = rectF2.left + f2;
        rectF.top = rectF2.top + f2;
        rectF.right = rectF2.right - f2;
        rectF.bottom = rectF2.bottom - f2;
        if (this.f19488if) {
            canvas.drawOval(rectF, this.f19481class);
        } else {
            int i2 = this.f19478break;
            canvas.drawRoundRect(rectF, i2, i2, this.f19481class);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m23780case() {
        Bitmap bitmap = getBitmap();
        if (bitmap == this.f19490native) {
            return;
        }
        this.f19490native = bitmap;
        if (bitmap == null) {
            this.f19495super = null;
            invalidate();
            return;
        }
        this.f19498throw = true;
        Bitmap bitmap2 = this.f19490native;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f19495super = new BitmapShader(bitmap2, tileMode, tileMode);
        if (this.f19480catch == null) {
            Paint paint = new Paint();
            this.f19480catch = paint;
            paint.setAntiAlias(true);
        }
        this.f19480catch.setShader(this.f19495super);
        requestLayout();
        invalidate();
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m23781for() {
        return this.f19486for;
    }

    public int getBorderColor() {
        return this.f19499try;
    }

    public int getBorderWidth() {
        return this.f19491new;
    }

    public int getCornerRadius() {
        return this.f19478break;
    }

    public int getSelectedBorderColor() {
        return this.f19484else;
    }

    public int getSelectedBorderWidth() {
        return this.f19479case;
    }

    public int getSelectedMaskColor() {
        return this.f19487goto;
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.f19483do;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m23782new() {
        return !this.f19486for && this.f19488if;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        int i = this.f19483do ? this.f19479case : this.f19491new;
        if (this.f19490native == null || this.f19495super == null) {
            m23779if(canvas, i);
            return;
        }
        if (this.f19493return != width || this.f19494static != height || this.f19496switch != getScaleType() || this.f19498throw) {
            this.f19493return = width;
            this.f19494static = height;
            this.f19496switch = getScaleType();
            m23777else();
        }
        m23776do(canvas, i);
        m23779if(canvas, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (!this.f19486for) {
            super.onMeasure(i, i2);
            return;
        }
        if (mode == 1073741824) {
            setMeasuredDimension(size, size);
            return;
        }
        if (mode2 == 1073741824) {
            setMeasuredDimension(size2, size2);
            return;
        }
        Bitmap bitmap = this.f19490native;
        if (bitmap == null) {
            setMeasuredDimension(0, 0);
        } else {
            int iMin = Math.min(Math.min(bitmap.getWidth(), size), Math.min(this.f19490native.getHeight(), size2));
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isClickable()) {
            setSelected(false);
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f19497this) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setSelected(true);
        } else if (action == 1 || action == 3 || action == 4 || action == 8) {
            setSelected(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("不支持adjustViewBounds");
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (this.f19499try != i) {
            this.f19499try = i;
            invalidate();
        }
    }

    public void setBorderWidth(int i) {
        if (this.f19491new != i) {
            this.f19491new = i;
            invalidate();
        }
    }

    public void setCircle(boolean z) {
        if (this.f19486for != z) {
            this.f19486for = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f19482const == colorFilter) {
            return;
        }
        this.f19482const = colorFilter;
        if (this.f19483do) {
            return;
        }
        invalidate();
    }

    public void setCornerRadius(int i) {
        if (this.f19478break != i) {
            this.f19478break = i;
            if (this.f19486for || this.f19488if) {
                return;
            }
            invalidate();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m23780case();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m23780case();
    }

    public void setOval(boolean z) {
        boolean z2 = false;
        if (z && this.f19486for) {
            this.f19486for = false;
            z2 = true;
        }
        if (this.f19488if != z || z2) {
            this.f19488if = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setSelected(boolean z) {
        if (this.f19483do != z) {
            this.f19483do = z;
            invalidate();
        }
    }

    public void setSelectedBorderColor(@ColorInt int i) {
        if (this.f19484else != i) {
            this.f19484else = i;
            if (this.f19483do) {
                invalidate();
            }
        }
    }

    public void setSelectedBorderWidth(int i) {
        if (this.f19479case != i) {
            this.f19479case = i;
            if (this.f19483do) {
                invalidate();
            }
        }
    }

    public void setSelectedColorFilter(ColorFilter colorFilter) {
        if (this.f19485final == colorFilter) {
            return;
        }
        this.f19485final = colorFilter;
        if (this.f19483do) {
            invalidate();
        }
    }

    public void setSelectedMaskColor(@ColorInt int i) {
        if (this.f19487goto != i) {
            this.f19487goto = i;
            if (i != 0) {
                this.f19485final = new PorterDuffColorFilter(this.f19487goto, PorterDuff.Mode.DARKEN);
            } else {
                this.f19485final = null;
            }
            if (this.f19483do) {
                invalidate();
            }
        }
        this.f19487goto = i;
    }

    public void setTouchSelectModeEnabled(boolean z) {
        this.f19497this = z;
    }

    /* renamed from: this, reason: not valid java name */
    public void m23783this(@NonNull Matrix matrix, @NonNull Bitmap bitmap, RectF rectF) {
        matrix.set(getImageMatrix());
        rectF.set(0.0f, 0.0f, this.f19493return, this.f19494static);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m23784try() {
        return this.f19497this;
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIRadiusImageViewStyle);
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19483do = false;
        this.f19488if = false;
        this.f19486for = false;
        this.f19497this = true;
        this.f19498throw = false;
        this.f19500while = new RectF();
        this.f19489import = new RectF();
        Paint paint = new Paint();
        this.f19481class = paint;
        paint.setAntiAlias(true);
        this.f19481class.setStyle(Paint.Style.STROKE);
        this.f19492public = new Matrix();
        setScaleType(ImageView.ScaleType.CENTER_CROP);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIRadiusImageView, i, 0);
        this.f19491new = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_border_width, 0);
        this.f19499try = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_border_color, -7829368);
        this.f19479case = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_selected_border_width, this.f19491new);
        this.f19484else = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_selected_border_color, this.f19499try);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_selected_mask_color, 0);
        this.f19487goto = color;
        if (color != 0) {
            this.f19485final = new PorterDuffColorFilter(this.f19487goto, PorterDuff.Mode.DARKEN);
        }
        this.f19497this = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_touch_select_mode_enabled, true);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_circle, false);
        this.f19486for = z;
        if (!z) {
            this.f19488if = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_oval, false);
        }
        if (!this.f19488if) {
            this.f19478break = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_corner_radius, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}

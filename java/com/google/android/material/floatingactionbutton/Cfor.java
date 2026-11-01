package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.floatingactionbutton.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends Drawable {

    /* renamed from: while, reason: not valid java name */
    private static final float f11996while = 1.3333f;

    /* renamed from: break, reason: not valid java name */
    @ColorInt
    private int f11997break;

    /* renamed from: catch, reason: not valid java name */
    @ColorInt
    private int f11999catch;

    /* renamed from: class, reason: not valid java name */
    @ColorInt
    private int f12000class;

    /* renamed from: const, reason: not valid java name */
    @ColorInt
    private int f12001const;

    /* renamed from: goto, reason: not valid java name */
    @Dimension
    public float f12006goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Paint f12007if;

    /* renamed from: super, reason: not valid java name */
    private ShapeAppearanceModel f12009super;

    /* renamed from: this, reason: not valid java name */
    @ColorInt
    private int f12010this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private ColorStateList f12011throw;

    /* renamed from: do, reason: not valid java name */
    private final ShapeAppearancePathProvider f12002do = ShapeAppearancePathProvider.m14030catch();

    /* renamed from: for, reason: not valid java name */
    private final Path f12005for = new Path();

    /* renamed from: new, reason: not valid java name */
    private final Rect f12008new = new Rect();

    /* renamed from: try, reason: not valid java name */
    private final RectF f12012try = new RectF();

    /* renamed from: case, reason: not valid java name */
    private final RectF f11998case = new RectF();

    /* renamed from: else, reason: not valid java name */
    private final Cif f12003else = new Cif();

    /* renamed from: final, reason: not valid java name */
    private boolean f12004final = true;

    /* renamed from: com.google.android.material.floatingactionbutton.for$if, reason: invalid class name */
    public class Cif extends Drawable.ConstantState {
        private Cif() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return Cfor.this;
        }
    }

    public Cfor(ShapeAppearanceModel shapeAppearanceModel) {
        this.f12009super = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.f12007if = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private Shader m13513do() {
        copyBounds(this.f12008new);
        float fHeight = this.f12006goto / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{ColorUtils.compositeColors(this.f12010this, this.f12001const), ColorUtils.compositeColors(this.f11997break, this.f12001const), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f11997break, 0), this.f12001const), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f12000class, 0), this.f12001const), ColorUtils.compositeColors(this.f12000class, this.f12001const), ColorUtils.compositeColors(this.f11999catch, this.f12001const)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* renamed from: case, reason: not valid java name */
    public void m13514case(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f12010this = i;
        this.f11997break = i2;
        this.f11999catch = i3;
        this.f12000class = i4;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f12004final) {
            this.f12007if.setShader(m13513do());
            this.f12004final = false;
        }
        float strokeWidth = this.f12007if.getStrokeWidth() / 2.0f;
        copyBounds(this.f12008new);
        this.f12012try.set(this.f12008new);
        float fMin = Math.min(this.f12009super.m13978import().getCornerSize(m13517if()), this.f12012try.width() / 2.0f);
        if (this.f12009super.m13981return(m13517if())) {
            this.f12012try.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f12012try, fMin, fMin, this.f12007if);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m13515else(ShapeAppearanceModel shapeAppearanceModel) {
        this.f12009super = shapeAppearanceModel;
        invalidateSelf();
    }

    /* renamed from: for, reason: not valid java name */
    public ShapeAppearanceModel m13516for() {
        return this.f12009super;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f12003else;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f12006goto > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f12009super.m13981return(m13517if())) {
            outline.setRoundRect(getBounds(), this.f12009super.m13978import().getCornerSize(m13517if()));
            return;
        }
        copyBounds(this.f12008new);
        this.f12012try.set(this.f12008new);
        this.f12002do.m14041new(this.f12009super, 1.0f, this.f12012try, this.f12005for);
        if (this.f12005for.isConvex()) {
            outline.setConvexPath(this.f12005for);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.f12009super.m13981return(m13517if())) {
            return true;
        }
        int iRound = Math.round(this.f12006goto);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public RectF m13517if() {
        this.f11998case.set(getBounds());
        return this.f11998case;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f12011throw;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: new, reason: not valid java name */
    public void m13518new(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f12001const = colorStateList.getColorForState(getState(), this.f12001const);
        }
        this.f12011throw = colorStateList;
        this.f12004final = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f12004final = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f12011throw;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f12001const)) != this.f12001const) {
            this.f12004final = true;
            this.f12001const = colorForState;
        }
        if (this.f12004final) {
            invalidateSelf();
        }
        return this.f12004final;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.f12007if.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f12007if.setColorFilter(colorFilter);
        invalidateSelf();
    }

    /* renamed from: try, reason: not valid java name */
    public void m13519try(@Dimension float f) {
        if (this.f12006goto != f) {
            this.f12006goto = f;
            this.f12007if.setStrokeWidth(f * f11996while);
            this.f12004final = true;
            invalidateSelf();
        }
    }
}

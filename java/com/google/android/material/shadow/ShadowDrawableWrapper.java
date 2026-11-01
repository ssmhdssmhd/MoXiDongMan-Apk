package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

@Deprecated
/* loaded from: classes.dex */
public class ShadowDrawableWrapper extends DrawableWrapper {

    /* renamed from: import, reason: not valid java name */
    public static final float f12469import = 1.5f;

    /* renamed from: native, reason: not valid java name */
    public static final float f12470native = 0.25f;

    /* renamed from: public, reason: not valid java name */
    public static final float f12471public = 0.5f;

    /* renamed from: return, reason: not valid java name */
    public static final float f12472return = 1.0f;

    /* renamed from: while, reason: not valid java name */
    public static final double f12473while = Math.cos(Math.toRadians(45.0d));

    /* renamed from: break, reason: not valid java name */
    private boolean f12474break;

    /* renamed from: case, reason: not valid java name */
    public float f12475case;

    /* renamed from: catch, reason: not valid java name */
    private final int f12476catch;

    /* renamed from: class, reason: not valid java name */
    private final int f12477class;

    /* renamed from: const, reason: not valid java name */
    private final int f12478const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    public final Paint f12479do;

    /* renamed from: else, reason: not valid java name */
    public float f12480else;

    /* renamed from: final, reason: not valid java name */
    private boolean f12481final;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    public final RectF f12482for;

    /* renamed from: goto, reason: not valid java name */
    public float f12483goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    public final Paint f12484if;

    /* renamed from: new, reason: not valid java name */
    public float f12485new;

    /* renamed from: super, reason: not valid java name */
    private float f12486super;

    /* renamed from: this, reason: not valid java name */
    public float f12487this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f12488throw;

    /* renamed from: try, reason: not valid java name */
    public Path f12489try;

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.f12474break = true;
        this.f12481final = true;
        this.f12488throw = false;
        this.f12476catch = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.f12477class = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.f12478const = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.f12479do = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f12485new = Math.round(f);
        this.f12482for = new RectF();
        Paint paint2 = new Paint(paint);
        this.f12484if = paint2;
        paint2.setAntiAlias(false);
        m13924throw(f2, f3);
    }

    /* renamed from: do, reason: not valid java name */
    private void m13908do(@NonNull Rect rect) {
        float f = this.f12480else;
        float f2 = 1.5f * f;
        this.f12482for.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.f12482for;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        m13910if();
    }

    /* renamed from: for, reason: not valid java name */
    public static float m13909for(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        double d = f;
        double d2 = 1.0d - f12473while;
        double d3 = f2;
        Double.isNaN(d3);
        Double.isNaN(d);
        return (float) (d + (d2 * d3));
    }

    /* renamed from: if, reason: not valid java name */
    private void m13910if() {
        float f = this.f12485new;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f12483goto;
        rectF2.inset(-f2, -f2);
        Path path = this.f12489try;
        if (path == null) {
            this.f12489try = new Path();
        } else {
            path.reset();
        }
        this.f12489try.setFillType(Path.FillType.EVEN_ODD);
        this.f12489try.moveTo(-this.f12485new, 0.0f);
        this.f12489try.rLineTo(-this.f12483goto, 0.0f);
        this.f12489try.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f12489try.arcTo(rectF, 270.0f, -90.0f, false);
        this.f12489try.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.f12485new / f3;
            this.f12479do.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.f12476catch, this.f12477class, this.f12478const}, new float[]{0.0f, f4, ((1.0f - f4) / 2.0f) + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f12484if.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f12476catch, this.f12477class, this.f12478const}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f12484if.setAntiAlias(false);
    }

    /* renamed from: new, reason: not valid java name */
    public static float m13911new(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d = f * 1.5f;
        double d2 = 1.0d - f12473while;
        double d3 = f2;
        Double.isNaN(d3);
        Double.isNaN(d);
        return (float) (d + (d2 * d3));
    }

    /* renamed from: try, reason: not valid java name */
    private void m13912try(@NonNull Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        float f3;
        float f4;
        int iSave = canvas.save();
        canvas.rotate(this.f12486super, this.f12482for.centerX(), this.f12482for.centerY());
        float f5 = this.f12485new;
        float f6 = (-f5) - this.f12483goto;
        float f7 = f5 * 2.0f;
        boolean z = this.f12482for.width() - f7 > 0.0f;
        boolean z2 = this.f12482for.height() - f7 > 0.0f;
        float f8 = this.f12487this;
        float f9 = f5 / ((f8 - (0.5f * f8)) + f5);
        float f10 = f5 / ((f8 - (0.25f * f8)) + f5);
        float f11 = f5 / ((f8 - (f8 * 1.0f)) + f5);
        int iSave2 = canvas.save();
        RectF rectF = this.f12482for;
        canvas.translate(rectF.left + f5, rectF.top + f5);
        canvas.scale(f9, f10);
        canvas.drawPath(this.f12489try, this.f12479do);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
            canvas.drawRect(0.0f, f6, this.f12482for.width() - f7, -this.f12485new, this.f12484if);
        } else {
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
        }
        canvas.restoreToCount(i);
        int iSave3 = canvas.save();
        RectF rectF2 = this.f12482for;
        canvas.translate(rectF2.right - f5, rectF2.bottom - f5);
        float f12 = f;
        canvas.scale(f9, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f12489try, this.f12479do);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            f3 = f2;
            f4 = f12;
            canvas.drawRect(0.0f, f6, this.f12482for.width() - f7, (-this.f12485new) + this.f12483goto, this.f12484if);
        } else {
            f3 = f2;
            f4 = f12;
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF3 = this.f12482for;
        canvas.translate(rectF3.left + f5, rectF3.bottom - f5);
        canvas.scale(f9, f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f12489try, this.f12479do);
        if (z2) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f6, this.f12482for.height() - f7, -this.f12485new, this.f12484if);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        RectF rectF4 = this.f12482for;
        canvas.translate(rectF4.right - f5, rectF4.top + f5);
        float f13 = f3;
        canvas.scale(f9, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f12489try, this.f12479do);
        if (z2) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f6, this.f12482for.height() - f7, -this.f12485new, this.f12484if);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(i2);
    }

    /* renamed from: while, reason: not valid java name */
    private static int m13913while(float f) {
        int iRound = Math.round(f);
        return iRound % 2 == 1 ? iRound - 1 : iRound;
    }

    /* renamed from: break, reason: not valid java name */
    public float m13914break() {
        return this.f12487this;
    }

    /* renamed from: case, reason: not valid java name */
    public float m13915case() {
        return this.f12485new;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13916catch(boolean z) {
        this.f12481final = z;
        invalidateSelf();
    }

    /* renamed from: class, reason: not valid java name */
    public void m13917class(float f) {
        float fRound = Math.round(f);
        if (this.f12485new == fRound) {
            return;
        }
        this.f12485new = fRound;
        this.f12474break = true;
        invalidateSelf();
    }

    /* renamed from: const, reason: not valid java name */
    public void m13918const(float f) {
        m13924throw(this.f12487this, f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f12474break) {
            m13908do(getBounds());
            this.f12474break = false;
        }
        m13912try(canvas);
        super.draw(canvas);
    }

    /* renamed from: else, reason: not valid java name */
    public float m13919else() {
        return this.f12480else;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m13920final(float f) {
        if (this.f12486super != f) {
            this.f12486super = f;
            invalidateSelf();
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int iCeil = (int) Math.ceil(m13911new(this.f12480else, this.f12485new, this.f12481final));
        int iCeil2 = (int) Math.ceil(m13909for(this.f12480else, this.f12485new, this.f12481final));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    /* renamed from: goto, reason: not valid java name */
    public float m13921goto() {
        float f = this.f12480else;
        return (Math.max(f, this.f12485new + ((f * 1.5f) / 2.0f)) * 2.0f) + (this.f12480else * 1.5f * 2.0f);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f12474break = true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f12479do.setAlpha(i);
        this.f12484if.setAlpha(i);
    }

    /* renamed from: super, reason: not valid java name */
    public void m13922super(float f) {
        m13924throw(f, this.f12480else);
    }

    /* renamed from: this, reason: not valid java name */
    public float m13923this() {
        float f = this.f12480else;
        return (Math.max(f, this.f12485new + (f / 2.0f)) * 2.0f) + (this.f12480else * 2.0f);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m13924throw(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float fM13913while = m13913while(f);
        float fM13913while2 = m13913while(f2);
        if (fM13913while > fM13913while2) {
            if (!this.f12488throw) {
                this.f12488throw = true;
            }
            fM13913while = fM13913while2;
        }
        if (this.f12487this == fM13913while && this.f12480else == fM13913while2) {
            return;
        }
        this.f12487this = fM13913while;
        this.f12480else = fM13913while2;
        this.f12483goto = Math.round(fM13913while * 1.5f);
        this.f12475case = fM13913while2;
        this.f12474break = true;
        invalidateSelf();
    }
}

package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* renamed from: com.google.android.material.textfield.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends MaterialShapeDrawable {

    /* renamed from: abstract, reason: not valid java name */
    @NonNull
    private final Paint f13004abstract;

    /* renamed from: continue, reason: not valid java name */
    @NonNull
    private final RectF f13005continue;

    /* renamed from: strictfp, reason: not valid java name */
    private int f13006strictfp;

    public Cfor() {
        this(null);
    }

    private void b0(@NonNull Canvas canvas) {
        if (i0(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.f13006strictfp);
    }

    private void c0(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!i0(callback)) {
            e0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() != 2) {
            view.setLayerType(2, null);
        }
    }

    private void e0(@NonNull Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f13006strictfp = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f13006strictfp = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    private void h0() {
        this.f13004abstract.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f13004abstract.setColor(-1);
        this.f13004abstract.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    private boolean i0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    public boolean a0() {
        return !this.f13005continue.isEmpty();
    }

    public void d0() {
        f0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        c0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f13005continue, this.f13004abstract);
        b0(canvas);
    }

    public void f0(float f, float f2, float f3, float f4) {
        RectF rectF = this.f13005continue;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    public void g0(@NonNull RectF rectF) {
        f0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public Cfor(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        super(shapeAppearanceModel == null ? new ShapeAppearanceModel() : shapeAppearanceModel);
        this.f13004abstract = new Paint(1);
        h0();
        this.f13005continue = new RectF();
    }
}

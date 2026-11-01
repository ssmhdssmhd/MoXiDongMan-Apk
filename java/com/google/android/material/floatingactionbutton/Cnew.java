package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.no1;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;

@RequiresApi(21)
/* renamed from: com.google.android.material.floatingactionbutton.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew extends FloatingActionButtonImpl {

    /* renamed from: com.google.android.material.floatingactionbutton.new$do, reason: invalid class name */
    public static class Cdo extends MaterialShapeDrawable {
        public Cdo(ShapeAppearanceModel shapeAppearanceModel) {
            super(shapeAppearanceModel);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public Cnew(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        super(floatingActionButton, shadowViewDelegate);
    }

    @NonNull
    private Animator z(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f11952default, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f11952default, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(FloatingActionButtonImpl.f11941strictfp);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    public boolean a() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    @NonNull
    /* renamed from: break */
    public MaterialShapeDrawable mo13479break() {
        return new Cdo((ShapeAppearanceModel) Preconditions.checkNotNull(this.f11953do));
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: continue */
    public void mo13482continue(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f11952default.isEnabled()) {
                this.f11952default.setElevation(0.0f);
                this.f11952default.setTranslationZ(0.0f);
                return;
            }
            this.f11952default.setElevation(this.f11959goto);
            if (this.f11952default.isPressed()) {
                this.f11952default.setTranslationZ(this.f11946break);
            } else if (this.f11952default.isFocused() || this.f11952default.isHovered()) {
                this.f11952default.setTranslationZ(this.f11971this);
            } else {
                this.f11952default.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: final */
    public float mo13485final() {
        return this.f11952default.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: finally */
    public void mo13486finally() {
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    public void l(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f11958for;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(no1.m5294new(colorStateList));
        } else {
            super.l(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: native */
    public void mo13490native(@NonNull Rect rect) {
        if (this.f11955extends.isCompatPaddingEnabled()) {
            super.mo13490native(rect);
        } else if (r()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f11948catch - this.f11952default.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    public boolean p() {
        return this.f11955extends.isCompatPaddingEnabled() || !r();
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: private */
    public void mo13493private() {
        v();
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: strictfp */
    public void mo13498strictfp(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.f11952default.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(FloatingActionButtonImpl.f, z(f, f3));
            stateListAnimator.addState(FloatingActionButtonImpl.g, z(f, f2));
            stateListAnimator.addState(FloatingActionButtonImpl.h, z(f, f2));
            stateListAnimator.addState(FloatingActionButtonImpl.i, z(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f11952default, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.f11952default;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f11952default, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(FloatingActionButtonImpl.f11941strictfp);
            stateListAnimator.addState(FloatingActionButtonImpl.j, animatorSet);
            stateListAnimator.addState(FloatingActionButtonImpl.k, z(0.0f, 0.0f));
            this.f11952default.setStateListAnimator(stateListAnimator);
        }
        if (p()) {
            v();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    public void t() {
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl
    /* renamed from: throws */
    public void mo13503throws(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable layerDrawable;
        MaterialShapeDrawable materialShapeDrawableMo13479break = mo13479break();
        this.f11960if = materialShapeDrawableMo13479break;
        materialShapeDrawableMo13479break.setTintList(colorStateList);
        if (mode != null) {
            this.f11960if.setTintMode(mode);
        }
        this.f11960if.k(this.f11952default.getContext());
        if (i > 0) {
            this.f11963new = y(i, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f11963new), (Drawable) Preconditions.checkNotNull(this.f11960if)});
        } else {
            this.f11963new = null;
            layerDrawable = this.f11960if;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(no1.m5294new(colorStateList2), layerDrawable, null);
        this.f11958for = rippleDrawable;
        this.f11974try = rippleDrawable;
    }

    @NonNull
    public Cfor y(int i, ColorStateList colorStateList) {
        Context context = this.f11952default.getContext();
        Cfor cfor = new Cfor((ShapeAppearanceModel) Preconditions.checkNotNull(this.f11953do));
        cfor.m13514case(ContextCompat.getColor(context, R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_outer_color));
        cfor.m13519try(i);
        cfor.m13518new(colorStateList);
        return cfor;
    }
}

package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.b90;
import android.support.v4.iz;
import android.support.v4.k62;
import android.support.v4.q01;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.expandable.ExpandableTransformationWidget;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.stateful.ExtendableSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, ExpandableTransformationWidget, Shapeable, CoordinatorLayout.AttachedBehavior {

    /* renamed from: default, reason: not valid java name */
    private static final int f11904default = 470;

    /* renamed from: import, reason: not valid java name */
    private static final String f11905import = "FloatingActionButton";

    /* renamed from: native, reason: not valid java name */
    private static final String f11906native = "expandableWidgetHelper";

    /* renamed from: public, reason: not valid java name */
    private static final int f11907public = R.style.Widget_Design_FloatingActionButton;

    /* renamed from: return, reason: not valid java name */
    public static final int f11908return = 1;

    /* renamed from: static, reason: not valid java name */
    public static final int f11909static = 0;

    /* renamed from: switch, reason: not valid java name */
    public static final int f11910switch = -1;

    /* renamed from: throws, reason: not valid java name */
    public static final int f11911throws = 0;

    /* renamed from: break, reason: not valid java name */
    private int f11912break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private ColorStateList f11913case;

    /* renamed from: catch, reason: not valid java name */
    private int f11914catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f11915class;

    /* renamed from: const, reason: not valid java name */
    public final Rect f11916const;

    /* renamed from: else, reason: not valid java name */
    private int f11917else;

    /* renamed from: final, reason: not valid java name */
    private final Rect f11918final;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private PorterDuff.Mode f11919for;

    /* renamed from: goto, reason: not valid java name */
    private int f11920goto;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private ColorStateList f11921if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private ColorStateList f11922new;

    /* renamed from: super, reason: not valid java name */
    @NonNull
    private final AppCompatImageHelper f11923super;

    /* renamed from: this, reason: not valid java name */
    private int f11924this;

    /* renamed from: throw, reason: not valid java name */
    @NonNull
    private final b90 f11925throw;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private PorterDuff.Mode f11926try;

    /* renamed from: while, reason: not valid java name */
    private FloatingActionButtonImpl f11927while;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: case */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: do */
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: else */
        public /* bridge */ /* synthetic */ void mo13466else(boolean z) {
            super.mo13466else(z);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: if */
        public /* bridge */ /* synthetic */ boolean mo13467if() {
            return super.mo13467if();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @VisibleForTesting
        public /* bridge */ /* synthetic */ void setInternalAutoHideListener(Cif cif) {
            super.setInternalAutoHideListener(cif);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* renamed from: try */
        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$do, reason: invalid class name */
    public class Cdo implements FloatingActionButtonImpl.InternalVisibilityChangedListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f11932do;

        public Cdo(Cif cif) {
            this.f11932do = cif;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
        public void onHidden() {
            this.f11932do.mo12845do(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
        public void onShown() {
            this.f11932do.mo12846if(FloatingActionButton.this);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$for, reason: invalid class name */
    public class Cfor implements ShadowViewDelegate {
        public Cfor() {
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public float getRadius() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public boolean isCompatPaddingEnabled() {
            return FloatingActionButton.this.f11915class;
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f11916const.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f11912break, i2 + FloatingActionButton.this.f11912break, i3 + FloatingActionButton.this.f11912break, i4 + FloatingActionButton.this.f11912break);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do */
        public void mo12845do(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: if */
        public void mo12846if(FloatingActionButton floatingActionButton) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$new, reason: invalid class name */
    public @interface Cnew {
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$try, reason: invalid class name */
    public class Ctry<T extends FloatingActionButton> implements FloatingActionButtonImpl.InternalTransformationCallback {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final TransformationCallback<T> f11935do;

        public Ctry(@NonNull TransformationCallback<T> transformationCallback) {
            this.f11935do = transformationCallback;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Ctry) && ((Ctry) obj).f11935do.equals(this.f11935do);
        }

        public int hashCode() {
            return this.f11935do.hashCode();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        public void onScaleChanged() {
            this.f11935do.onScaleChanged(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        public void onTranslationChanged() {
            this.f11935do.onTranslationChanged(FloatingActionButton.this);
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m13435catch(int i) {
        int i2 = this.f11924this;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        return i != -1 ? i != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < f11904default ? m13435catch(1) : m13435catch(0);
    }

    @Nullable
    /* renamed from: default, reason: not valid java name */
    private FloatingActionButtonImpl.InternalVisibilityChangedListener m13436default(@Nullable Cif cif) {
        if (cif == null) {
            return null;
        }
        return new Cdo(cif);
    }

    private FloatingActionButtonImpl getImpl() {
        if (this.f11927while == null) {
            this.f11927while = m13438goto();
        }
        return this.f11927while;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private FloatingActionButtonImpl m13438goto() {
        return Build.VERSION.SDK_INT >= 21 ? new com.google.android.material.floatingactionbutton.Cnew(this, new Cfor()) : new FloatingActionButtonImpl(this, new Cfor());
    }

    /* renamed from: return, reason: not valid java name */
    private static int m13440return(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, size);
        }
        if (mode == 0) {
            return i;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m13441throw(@NonNull Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f11916const;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* renamed from: while, reason: not valid java name */
    private void m13442while() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f11922new;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f11926try;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    /* renamed from: break, reason: not valid java name */
    public void m13443break(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m13441throw(rect);
    }

    /* renamed from: case, reason: not valid java name */
    public void m13444case(@NonNull TransformationCallback<? extends FloatingActionButton> transformationCallback) {
        getImpl().m13480case(new Ctry(transformationCallback));
    }

    /* renamed from: class, reason: not valid java name */
    public void m13445class() {
        hide(null);
    }

    /* renamed from: const, reason: not valid java name */
    public void m13446const(@Nullable Cif cif, boolean z) {
        getImpl().m13500switch(m13436default(cif), z);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo13482continue(getDrawableState());
    }

    /* renamed from: else, reason: not valid java name */
    public void m13447else() {
        setCustomSize(0);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m13448final() {
        return getImpl().m13483default();
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f11921if;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f11919for;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().mo13485final();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m13507while();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m13495public();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().m13481catch();
    }

    @Px
    public int getCustomSize() {
        return this.f11924this;
    }

    @Override // com.google.android.material.expandable.ExpandableTransformationWidget
    public int getExpandedComponentIdHint() {
        return this.f11925throw.m483if();
    }

    @Nullable
    public q01 getHideMotionSpec() {
        return getImpl().m13502throw();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f11913case;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f11913case;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return (ShapeAppearanceModel) Preconditions.checkNotNull(getImpl().m13496return());
    }

    @Nullable
    public q01 getShowMotionSpec() {
        return getImpl().m13497static();
    }

    public int getSize() {
        return this.f11920goto;
    }

    public int getSizeDimension() {
        return m13435catch(this.f11920goto);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f11922new;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f11926try;
    }

    public boolean getUseCompatPadding() {
        return this.f11915class;
    }

    public void hide(@Nullable Cif cif) {
        m13446const(cif, true);
    }

    /* renamed from: import, reason: not valid java name */
    public void m13449import(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m13487implements(animatorListener);
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    public boolean isExpanded() {
        return this.f11925throw.m482for();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo13486finally();
    }

    /* renamed from: native, reason: not valid java name */
    public void m13450native(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m13488instanceof(animatorListener);
    }

    /* renamed from: new, reason: not valid java name */
    public void m13451new(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m13491new(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m13492package();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m13478abstract();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f11912break = (sizeDimension - this.f11914catch) / 2;
        getImpl().v();
        int iMin = Math.min(m13440return(sizeDimension, i), m13440return(sizeDimension, i2));
        Rect rect = this.f11916const;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f11925throw.m484new((Bundle) Preconditions.checkNotNull(extendableSavedState.f12788do.get(f11906native)));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.f12788do.put(f11906native, this.f11925throw.m485try());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && m13456this(this.f11918final) && !this.f11918final.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: public, reason: not valid java name */
    public void m13452public(@NonNull TransformationCallback<? extends FloatingActionButton> transformationCallback) {
        getImpl().m13501synchronized(new Ctry(transformationCallback));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f11921if != colorStateList) {
            this.f11921if = colorStateList;
            getImpl().b(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f11919for != mode) {
            this.f11919for = mode;
            getImpl().c(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().d(f);
    }

    public void setCompatElevationResource(@DimenRes int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().g(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().k(f);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i != this.f11924this) {
            this.f11924this = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().w(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().m13499super()) {
            getImpl().e(z);
            requestLayout();
        }
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    public boolean setExpanded(boolean z) {
        return this.f11925throw.m480case(z);
    }

    @Override // com.google.android.material.expandable.ExpandableTransformationWidget
    public void setExpandedComponentIdHint(@IdRes int i) {
        this.f11925throw.m481else(i);
    }

    public void setHideMotionSpec(@Nullable q01 q01Var) {
        getImpl().f(q01Var);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(q01.m6295new(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().u();
            if (this.f11922new != null) {
                m13442while();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f11923super.setImageResource(i);
        m13442while();
    }

    public void setRippleColor(@ColorInt int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m13494protected();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m13494protected();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z) {
        getImpl().m(z);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        getImpl().n(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable q01 q01Var) {
        getImpl().o(q01Var);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(q01.m6295new(getContext(), i));
    }

    public void setSize(int i) {
        this.f11924this = 0;
        if (i != this.f11920goto) {
            this.f11920goto = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f11922new != colorStateList) {
            this.f11922new = colorStateList;
            m13442while();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f11926try != mode) {
            this.f11926try = mode;
            m13442while();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m13504transient();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m13504transient();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m13504transient();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f11915class != z) {
            this.f11915class = z;
            getImpl().mo13493private();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    public void show(@Nullable Cif cif) {
        m13457throws(cif, true);
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m13453static() {
        return getImpl().m13499super();
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m13454super() {
        return getImpl().m13484extends();
    }

    /* renamed from: switch, reason: not valid java name */
    public void m13455switch() {
        show(null);
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public boolean m13456this(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m13441throw(rect);
        return true;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m13457throws(@Nullable Cif cif, boolean z) {
        getImpl().s(m13436default(cif), z);
    }

    /* renamed from: try, reason: not valid java name */
    public void m13458try(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m13505try(animatorListener);
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: new, reason: not valid java name */
        private static final boolean f11928new = true;

        /* renamed from: do, reason: not valid java name */
        private Rect f11929do;

        /* renamed from: for, reason: not valid java name */
        private boolean f11930for;

        /* renamed from: if, reason: not valid java name */
        private Cif f11931if;

        public BaseBehavior() {
            this.f11930for = true;
        }

        /* renamed from: break, reason: not valid java name */
        private boolean m13459break(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            if (!m13461goto(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m13446const(this.f11931if, false);
                return true;
            }
            floatingActionButton.m13457throws(this.f11931if, false);
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        private static boolean m13460for(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        private boolean m13461goto(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            return this.f11930for && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: new, reason: not valid java name */
        private void m13462new(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f11916const;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            int i = 0;
            int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) {
                i = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i);
            }
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
            }
        }

        /* renamed from: this, reason: not valid java name */
        private boolean m13463this(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton) {
            if (!m13461goto(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f11929do == null) {
                this.f11929do = new Rect();
            }
            Rect rect = this.f11929do;
            iz.m3636do(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m13446const(this.f11931if, false);
                return true;
            }
            floatingActionButton.m13457throws(this.f11931if, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m13460for(view) && m13459break(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (m13463this(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            m13462new(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f11916const;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: else, reason: not valid java name */
        public void mo13466else(boolean z) {
            this.f11930for = z;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean mo13467if() {
            return this.f11930for;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @VisibleForTesting
        public void setInternalAutoHideListener(Cif cif) {
            this.f11931if = cif;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m13463this(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!m13460for(view)) {
                return false;
            }
            m13459break(view, floatingActionButton);
            return false;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.f11930for = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f11913case != colorStateList) {
            this.f11913case = colorStateList;
            getImpl().l(this.f11913case);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = f11907public;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11916const = new Rect();
        this.f11918final = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.FloatingActionButton, i, i2, new int[0]);
        this.f11921if = sx0.m7649do(context2, typedArrayM4267break, R.styleable.FloatingActionButton_backgroundTint);
        this.f11919for = ViewUtils.m13612catch(typedArrayM4267break.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f11913case = sx0.m7649do(context2, typedArrayM4267break, R.styleable.FloatingActionButton_rippleColor);
        this.f11920goto = typedArrayM4267break.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.f11924this = typedArrayM4267break.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
        this.f11917else = typedArrayM4267break.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayM4267break.getDimension(R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayM4267break.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayM4267break.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f11915class = typedArrayM4267break.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        this.f11914catch = typedArrayM4267break.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0);
        q01 q01VarM6293for = q01.m6293for(context2, typedArrayM4267break, R.styleable.FloatingActionButton_showMotionSpec);
        q01 q01VarM6293for2 = q01.m6293for(context2, typedArrayM4267break, R.styleable.FloatingActionButton_hideMotionSpec);
        ShapeAppearanceModel shapeAppearanceModelM14003const = ShapeAppearanceModel.m13967else(context2, attributeSet, i, i2, ShapeAppearanceModel.f12544const).m14003const();
        boolean z = typedArrayM4267break.getBoolean(R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayM4267break.getBoolean(R.styleable.FloatingActionButton_android_enabled, true));
        typedArrayM4267break.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f11923super = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i);
        this.f11925throw = new b90(this);
        getImpl().n(shapeAppearanceModelM14003const);
        getImpl().mo13503throws(this.f11921if, this.f11919for, this.f11913case, this.f11917else);
        getImpl().j(dimensionPixelSize);
        getImpl().d(dimension);
        getImpl().g(dimension2);
        getImpl().k(dimension3);
        getImpl().i(this.f11914catch);
        getImpl().o(q01VarM6293for);
        getImpl().f(q01VarM6293for2);
        getImpl().e(z);
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}

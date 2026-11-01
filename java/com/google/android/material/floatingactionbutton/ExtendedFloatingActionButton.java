package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.iz;
import android.support.v4.k62;
import android.support.v4.q01;
import android.support.v4.vx0;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    private static final int a = 1;
    private static final int b = 2;

    /* renamed from: synchronized, reason: not valid java name */
    private static final int f11870synchronized = 0;

    /* renamed from: abstract, reason: not valid java name */
    private final int f11871abstract;

    /* renamed from: continue, reason: not valid java name */
    private int f11872continue;

    /* renamed from: default, reason: not valid java name */
    private final com.google.android.material.floatingactionbutton.Cdo f11873default;

    /* renamed from: extends, reason: not valid java name */
    @NonNull
    private final MotionStrategy f11874extends;

    /* renamed from: finally, reason: not valid java name */
    @NonNull
    private final MotionStrategy f11875finally;

    /* renamed from: implements, reason: not valid java name */
    @NonNull
    public ColorStateList f11876implements;

    /* renamed from: interface, reason: not valid java name */
    private boolean f11877interface;

    /* renamed from: package, reason: not valid java name */
    private final MotionStrategy f11878package;

    /* renamed from: private, reason: not valid java name */
    private final MotionStrategy f11879private;

    /* renamed from: protected, reason: not valid java name */
    private boolean f11880protected;

    /* renamed from: strictfp, reason: not valid java name */
    private int f11881strictfp;

    /* renamed from: throws, reason: not valid java name */
    private int f11882throws;

    /* renamed from: transient, reason: not valid java name */
    private boolean f11883transient;

    /* renamed from: volatile, reason: not valid java name */
    @NonNull
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f11884volatile;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f11869instanceof = R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    public static final Property<View, Float> c = new Cnew(Float.class, "width");
    public static final Property<View, Float> d = new Ctry(Float.class, "height");
    public static final Property<View, Float> e = new Ccase(Float.class, "paddingStart");
    public static final Property<View, Float> f = new Celse(Float.class, "paddingEnd");

    public interface Size {
        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$break, reason: invalid class name */
    public static abstract class Cbreak {
        /* renamed from: do, reason: not valid java name */
        public void m13423do(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: for, reason: not valid java name */
        public void m13424for(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: if, reason: not valid java name */
        public void m13425if(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: new, reason: not valid java name */
        public void m13426new(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$case, reason: invalid class name */
    public static class Ccase extends Property<View, Float> {
        public Ccase(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, f.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$catch, reason: invalid class name */
    public class Ccatch extends com.google.android.material.floatingactionbutton.Cif {
        public Ccatch(com.google.android.material.floatingactionbutton.Cdo cdo) {
            super(ExtendedFloatingActionButton.this, cdo);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f11882throws = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f11882throws = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(@Nullable Cbreak cbreak) {
            if (cbreak != null) {
                cbreak.m13424for(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return ExtendedFloatingActionButton.this.m13384interface();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$do, reason: invalid class name */
    public class Cdo implements Size {
        public Cdo() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f11881strictfp;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f11872continue;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f11872continue + ExtendedFloatingActionButton.this.f11881strictfp;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$else, reason: invalid class name */
    public static class Celse extends Property<View, Float> {
        public Celse(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        private boolean f11894do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cbreak f11895for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ MotionStrategy f11896if;

        public Cfor(MotionStrategy motionStrategy, Cbreak cbreak) {
            this.f11896if = motionStrategy;
            this.f11895for = cbreak;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f11894do = true;
            this.f11896if.onAnimationCancel();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f11896if.onAnimationEnd();
            if (this.f11894do) {
                return;
            }
            this.f11896if.onChange(this.f11895for);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f11896if.onAnimationStart(animator);
            this.f11894do = false;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$goto, reason: invalid class name */
    public class Cgoto extends com.google.android.material.floatingactionbutton.Cif {

        /* renamed from: else, reason: not valid java name */
        private final Size f11898else;

        /* renamed from: goto, reason: not valid java name */
        private final boolean f11899goto;

        public Cgoto(com.google.android.material.floatingactionbutton.Cdo cdo, Size size, boolean z) {
            super(ExtendedFloatingActionButton.this, cdo);
            this.f11898else = size;
            this.f11899goto = z;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        @NonNull
        public AnimatorSet createAnimator() {
            q01 currentMotionSpec = getCurrentMotionSpec();
            if (currentMotionSpec.m6297break("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrM6302else = currentMotionSpec.m6302else("width");
                propertyValuesHolderArrM6302else[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f11898else.getWidth());
                currentMotionSpec.m6300class("width", propertyValuesHolderArrM6302else);
            }
            if (currentMotionSpec.m6297break("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrM6302else2 = currentMotionSpec.m6302else("height");
                propertyValuesHolderArrM6302else2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f11898else.getHeight());
                currentMotionSpec.m6300class("height", propertyValuesHolderArrM6302else2);
            }
            if (currentMotionSpec.m6297break("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrM6302else3 = currentMotionSpec.m6302else("paddingStart");
                propertyValuesHolderArrM6302else3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f11898else.getPaddingStart());
                currentMotionSpec.m6300class("paddingStart", propertyValuesHolderArrM6302else3);
            }
            if (currentMotionSpec.m6297break("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrM6302else4 = currentMotionSpec.m6302else("paddingEnd");
                propertyValuesHolderArrM6302else4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f11898else.getPaddingEnd());
                currentMotionSpec.m6300class("paddingEnd", propertyValuesHolderArrM6302else4);
            }
            if (currentMotionSpec.m6297break("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrM6302else5 = currentMotionSpec.m6302else("labelOpacity");
                boolean z = this.f11899goto;
                propertyValuesHolderArrM6302else5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                currentMotionSpec.m6300class("labelOpacity", propertyValuesHolderArrM6302else5);
            }
            return super.m13521if(currentMotionSpec);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            return this.f11899goto ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f11880protected = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f11898else.getLayoutParams().width;
            layoutParams.height = this.f11898else.getLayoutParams().height;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.f11877interface = this.f11899goto;
            ExtendedFloatingActionButton.this.f11880protected = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(@Nullable Cbreak cbreak) {
            if (cbreak == null) {
                return;
            }
            if (this.f11899goto) {
                cbreak.m13423do(ExtendedFloatingActionButton.this);
            } else {
                cbreak.m13426new(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.f11877interface = this.f11899goto;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f11898else.getLayoutParams().width;
            layoutParams.height = this.f11898else.getLayoutParams().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f11898else.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f11898else.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return this.f11899goto == ExtendedFloatingActionButton.this.f11877interface || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$if, reason: invalid class name */
    public class Cif implements Size {
        public Cif() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public ViewGroup.LayoutParams getLayoutParams() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$new, reason: invalid class name */
    public static class Cnew extends Property<View, Float> {
        public Cnew(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$this, reason: invalid class name */
    public class Cthis extends com.google.android.material.floatingactionbutton.Cif {

        /* renamed from: else, reason: not valid java name */
        private boolean f11902else;

        public Cthis(com.google.android.material.floatingactionbutton.Cdo cdo) {
            super(ExtendedFloatingActionButton.this, cdo);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationCancel() {
            super.onAnimationCancel();
            this.f11902else = true;
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationEnd() {
            super.onAnimationEnd();
            ExtendedFloatingActionButton.this.f11882throws = 0;
            if (this.f11902else) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.Cif, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f11902else = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f11882throws = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void onChange(@Nullable Cbreak cbreak) {
            if (cbreak != null) {
                cbreak.m13425if(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public boolean shouldCancel() {
            return ExtendedFloatingActionButton.this.m13393volatile();
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$try, reason: invalid class name */
    public static class Ctry extends Property<View, Float> {
        public Ctry(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        this.f11876implements = getTextColors();
    }

    private boolean b() {
        return (ViewCompat.isLaidOut(this) || (!m13384interface() && this.f11883transient)) && !isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public boolean m13384interface() {
        return getVisibility() != 0 ? this.f11882throws == 2 : this.f11882throws != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public void m13386protected(@NonNull MotionStrategy motionStrategy, @Nullable Cbreak cbreak) {
        if (motionStrategy.shouldCancel()) {
            return;
        }
        if (!b()) {
            motionStrategy.performNow();
            motionStrategy.onChange(cbreak);
            return;
        }
        measure(0, 0);
        AnimatorSet animatorSetCreateAnimator = motionStrategy.createAnimator();
        animatorSetCreateAnimator.addListener(new Cfor(motionStrategy, cbreak));
        Iterator<Animator.AnimatorListener> it = motionStrategy.getListeners().iterator();
        while (it.hasNext()) {
            animatorSetCreateAnimator.addListener(it.next());
        }
        animatorSetCreateAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public boolean m13393volatile() {
        return getVisibility() == 0 ? this.f11882throws == 1 : this.f11882throws != 2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m13395abstract() {
        m13386protected(this.f11879private, null);
    }

    public void c() {
        m13386protected(this.f11878package, null);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m13396continue(@NonNull Cbreak cbreak) {
        m13386protected(this.f11879private, cbreak);
    }

    public void d(@NonNull Cbreak cbreak) {
        m13386protected(this.f11878package, cbreak);
    }

    /* renamed from: default, reason: not valid java name */
    public void m13397default(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11879private.addAnimationListener(animatorListener);
    }

    public void e() {
        m13386protected(this.f11874extends, null);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m13398extends(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11878package.addAnimationListener(animatorListener);
    }

    public void f(@NonNull Cbreak cbreak) {
        m13386protected(this.f11874extends, cbreak);
    }

    /* renamed from: finally, reason: not valid java name */
    public void m13399finally(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11874extends.addAnimationListener(animatorListener);
    }

    public void g(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.f11884volatile;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    public int getCollapsedSize() {
        int i = this.f11871abstract;
        return i < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i;
    }

    @Nullable
    public q01 getExtendMotionSpec() {
        return this.f11875finally.getMotionSpec();
    }

    @Nullable
    public q01 getHideMotionSpec() {
        return this.f11879private.getMotionSpec();
    }

    @Nullable
    public q01 getShowMotionSpec() {
        return this.f11878package.getMotionSpec();
    }

    @Nullable
    public q01 getShrinkMotionSpec() {
        return this.f11874extends.getMotionSpec();
    }

    /* renamed from: implements, reason: not valid java name */
    public void m13400implements(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11879private.removeAnimationListener(animatorListener);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m13401instanceof(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11878package.removeAnimationListener(animatorListener);
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11877interface && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.f11877interface = false;
            this.f11874extends.performNow();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m13402package() {
        m13386protected(this.f11875finally, null);
    }

    /* renamed from: private, reason: not valid java name */
    public void m13403private(@NonNull Cbreak cbreak) {
        m13386protected(this.f11875finally, cbreak);
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f11883transient = z;
    }

    public void setExtendMotionSpec(@Nullable q01 q01Var) {
        this.f11875finally.setMotionSpec(q01Var);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i) {
        setExtendMotionSpec(q01.m6295new(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f11877interface == z) {
            return;
        }
        MotionStrategy motionStrategy = z ? this.f11875finally : this.f11874extends;
        if (motionStrategy.shouldCancel()) {
            return;
        }
        motionStrategy.performNow();
    }

    public void setHideMotionSpec(@Nullable q01 q01Var) {
        this.f11879private.setMotionSpec(q01Var);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(q01.m6295new(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f11877interface || this.f11880protected) {
            return;
        }
        this.f11872continue = ViewCompat.getPaddingStart(this);
        this.f11881strictfp = ViewCompat.getPaddingEnd(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.f11877interface || this.f11880protected) {
            return;
        }
        this.f11872continue = i;
        this.f11881strictfp = i3;
    }

    public void setShowMotionSpec(@Nullable q01 q01Var) {
        this.f11878package.setMotionSpec(q01Var);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(q01.m6295new(getContext(), i));
    }

    public void setShrinkMotionSpec(@Nullable q01 q01Var) {
        this.f11874extends.setMotionSpec(q01Var);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i) {
        setShrinkMotionSpec(q01.m6295new(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        a();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final boolean m13404strictfp() {
        return this.f11877interface;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m13405synchronized(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11874extends.removeAnimationListener(animatorListener);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m13406throws(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11875finally.addAnimationListener(animatorListener);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m13407transient(@NonNull Animator.AnimatorListener animatorListener) {
        this.f11875finally.removeAnimationListener(animatorListener);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: case, reason: not valid java name */
        private static final boolean f11885case = false;

        /* renamed from: else, reason: not valid java name */
        private static final boolean f11886else = true;

        /* renamed from: do, reason: not valid java name */
        private Rect f11887do;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        private Cbreak f11888for;

        /* renamed from: if, reason: not valid java name */
        @Nullable
        private Cbreak f11889if;

        /* renamed from: new, reason: not valid java name */
        private boolean f11890new;

        /* renamed from: try, reason: not valid java name */
        private boolean f11891try;

        public ExtendedFloatingActionButtonBehavior() {
            this.f11890new = false;
            this.f11891try = true;
        }

        /* renamed from: class, reason: not valid java name */
        private boolean m13408class(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f11890new || this.f11891try) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        /* renamed from: final, reason: not valid java name */
        private boolean m13409final(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m13408class(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f11887do == null) {
                this.f11887do = new Rect();
            }
            Rect rect = this.f11887do;
            iz.m3636do(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                m13415const(extendedFloatingActionButton);
                return true;
            }
            m13416do(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: super, reason: not valid java name */
        private boolean m13410super(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m13408class(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                m13415const(extendedFloatingActionButton);
                return true;
            }
            m13416do(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: try, reason: not valid java name */
        private static boolean m13411try(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @VisibleForTesting
        /* renamed from: break, reason: not valid java name */
        public void m13412break(@Nullable Cbreak cbreak) {
            this.f11889if = cbreak;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m13409final(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!m13411try(view)) {
                return false;
            }
            m13410super(view, extendedFloatingActionButton);
            return false;
        }

        @VisibleForTesting
        /* renamed from: catch, reason: not valid java name */
        public void m13414catch(@Nullable Cbreak cbreak) {
            this.f11888for = cbreak;
        }

        /* renamed from: const, reason: not valid java name */
        public void m13415const(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f11891try;
            extendedFloatingActionButton.m13386protected(z ? extendedFloatingActionButton.f11874extends : extendedFloatingActionButton.f11879private, z ? this.f11888for : this.f11889if);
        }

        /* renamed from: do, reason: not valid java name */
        public void m13416do(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z = this.f11891try;
            extendedFloatingActionButton.m13386protected(z ? extendedFloatingActionButton.f11875finally : extendedFloatingActionButton.f11878package, z ? this.f11888for : this.f11889if);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m13411try(view) && m13410super(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (m13409final(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i);
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m13418for() {
            return this.f11890new;
        }

        /* renamed from: goto, reason: not valid java name */
        public void m13419goto(boolean z) {
            this.f11890new = z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m13421new() {
            return this.f11891try;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        /* renamed from: this, reason: not valid java name */
        public void m13422this(boolean z) {
            this.f11891try = z;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f11890new = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f11891try = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11869instanceof;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11882throws = 0;
        com.google.android.material.floatingactionbutton.Cdo cdo = new com.google.android.material.floatingactionbutton.Cdo();
        this.f11873default = cdo;
        Ccatch ccatch = new Ccatch(cdo);
        this.f11878package = ccatch;
        Cthis cthis = new Cthis(cdo);
        this.f11879private = cthis;
        this.f11877interface = true;
        this.f11880protected = false;
        this.f11883transient = false;
        Context context2 = getContext();
        this.f11884volatile = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.ExtendedFloatingActionButton, i, i2, new int[0]);
        q01 q01VarM6293for = q01.m6293for(context2, typedArrayM4267break, R.styleable.ExtendedFloatingActionButton_showMotionSpec);
        q01 q01VarM6293for2 = q01.m6293for(context2, typedArrayM4267break, R.styleable.ExtendedFloatingActionButton_hideMotionSpec);
        q01 q01VarM6293for3 = q01.m6293for(context2, typedArrayM4267break, R.styleable.ExtendedFloatingActionButton_extendMotionSpec);
        q01 q01VarM6293for4 = q01.m6293for(context2, typedArrayM4267break, R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.f11871abstract = typedArrayM4267break.getDimensionPixelSize(R.styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        this.f11872continue = ViewCompat.getPaddingStart(this);
        this.f11881strictfp = ViewCompat.getPaddingEnd(this);
        com.google.android.material.floatingactionbutton.Cdo cdo2 = new com.google.android.material.floatingactionbutton.Cdo();
        Cgoto cgoto = new Cgoto(cdo2, new Cdo(), true);
        this.f11875finally = cgoto;
        Cgoto cgoto2 = new Cgoto(cdo2, new Cif(), false);
        this.f11874extends = cgoto2;
        ccatch.setMotionSpec(q01VarM6293for);
        cthis.setMotionSpec(q01VarM6293for2);
        cgoto.setMotionSpec(q01VarM6293for3);
        cgoto2.setMotionSpec(q01VarM6293for4);
        typedArrayM4267break.recycle();
        setShapeAppearanceModel(ShapeAppearanceModel.m13967else(context2, attributeSet, i, i2, ShapeAppearanceModel.f12544const).m14003const());
        a();
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        a();
    }
}

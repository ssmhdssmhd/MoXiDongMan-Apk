package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.k62;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: abstract, reason: not valid java name */
    private static final float f12688abstract = 0.8f;

    /* renamed from: continue, reason: not valid java name */
    @NonNull
    public static final Handler f12689continue;

    /* renamed from: default, reason: not valid java name */
    public static final int f12690default = 0;

    /* renamed from: extends, reason: not valid java name */
    public static final int f12691extends = 250;

    /* renamed from: finally, reason: not valid java name */
    public static final int f12692finally = 180;

    /* renamed from: interface, reason: not valid java name */
    private static final boolean f12693interface;

    /* renamed from: package, reason: not valid java name */
    private static final int f12694package = 150;

    /* renamed from: private, reason: not valid java name */
    private static final int f12695private = 75;

    /* renamed from: protected, reason: not valid java name */
    private static final int[] f12696protected;

    /* renamed from: return, reason: not valid java name */
    public static final int f12697return = 0;

    /* renamed from: static, reason: not valid java name */
    public static final int f12698static = 1;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f12699strictfp = 0;

    /* renamed from: switch, reason: not valid java name */
    public static final int f12700switch = -2;

    /* renamed from: throws, reason: not valid java name */
    public static final int f12701throws = -1;

    /* renamed from: transient, reason: not valid java name */
    private static final String f12702transient;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f12703volatile = 1;

    /* renamed from: break, reason: not valid java name */
    @RequiresApi(29)
    private final Runnable f12704break;

    /* renamed from: case, reason: not valid java name */
    private boolean f12705case;

    /* renamed from: catch, reason: not valid java name */
    @Nullable
    private Rect f12706catch;

    /* renamed from: class, reason: not valid java name */
    private int f12707class;

    /* renamed from: const, reason: not valid java name */
    private int f12708const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final ViewGroup f12709do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private View f12710else;

    /* renamed from: final, reason: not valid java name */
    private int f12711final;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    public final SnackbarBaseLayout f12712for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f12713goto;

    /* renamed from: if, reason: not valid java name */
    private final Context f12714if;

    /* renamed from: import, reason: not valid java name */
    private Behavior f12715import;

    /* renamed from: native, reason: not valid java name */
    @Nullable
    private final AccessibilityManager f12716native;

    /* renamed from: new, reason: not valid java name */
    @NonNull
    private final com.google.android.material.snackbar.ContentViewCallback f12717new;

    /* renamed from: public, reason: not valid java name */
    @NonNull
    public SnackbarManager.Callback f12718public;

    /* renamed from: super, reason: not valid java name */
    private int f12719super;

    /* renamed from: this, reason: not valid java name */
    private final ViewTreeObserver.OnGlobalLayoutListener f12720this;

    /* renamed from: throw, reason: not valid java name */
    private int f12721throw;

    /* renamed from: try, reason: not valid java name */
    private int f12722try;

    /* renamed from: while, reason: not valid java name */
    private List<Cpublic<B>> f12723while;

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: public, reason: not valid java name */
        @NonNull
        private final Creturn f12724public = new Creturn(this);

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public void m14212super(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f12724public.m14217for(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: do */
        public boolean mo12791do(View view) {
            return this.f12724public.m14216do(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f12724public.m14218if(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @Deprecated
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i, int i2, int i3, int i4);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: goto, reason: not valid java name */
        private static final View.OnTouchListener f12725goto = new Cdo();

        /* renamed from: case, reason: not valid java name */
        private ColorStateList f12726case;

        /* renamed from: do, reason: not valid java name */
        private OnLayoutChangeListener f12727do;

        /* renamed from: else, reason: not valid java name */
        private PorterDuff.Mode f12728else;

        /* renamed from: for, reason: not valid java name */
        private int f12729for;

        /* renamed from: if, reason: not valid java name */
        private OnAttachStateChangeListener f12730if;

        /* renamed from: new, reason: not valid java name */
        private final float f12731new;

        /* renamed from: try, reason: not valid java name */
        private final float f12732try;

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$do, reason: invalid class name */
        public static class Cdo implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        private Drawable m14213do() throws Resources.NotFoundException {
            float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(qx0.m6672break(this, R.attr.colorSurface, R.attr.colorOnSurface, getBackgroundOverlayColorAlpha()));
            if (this.f12726case == null) {
                return DrawableCompat.wrap(gradientDrawable);
            }
            Drawable drawableWrap = DrawableCompat.wrap(gradientDrawable);
            DrawableCompat.setTintList(drawableWrap, this.f12726case);
            return drawableWrap;
        }

        public float getActionTextColorAlpha() {
            return this.f12732try;
        }

        public int getAnimationMode() {
            return this.f12729for;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f12731new;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.f12730if;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.f12730if;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            OnLayoutChangeListener onLayoutChangeListener = this.f12727do;
            if (onLayoutChangeListener != null) {
                onLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
            }
        }

        public void setAnimationMode(int i) {
            this.f12729for = i;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f12726case != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f12726case);
                DrawableCompat.setTintMode(drawable, this.f12728else);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f12726case = colorStateList;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(drawableWrap, colorStateList);
                DrawableCompat.setTintMode(drawableWrap, this.f12728else);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f12728else = mode;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(drawableWrap, mode);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        public void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.f12730if = onAttachStateChangeListener;
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f12725goto);
            super.setOnClickListener(onClickListener);
        }

        public void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.f12727do = onLayoutChangeListener;
        }

        public SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) {
            super(vx0.m8993for(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r1, 0));
            }
            this.f12729for = typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            this.f12731new = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(sx0.m7649do(context2, typedArrayObtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.m13612catch(typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f12732try = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f12725goto);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, m14213do());
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$break, reason: invalid class name */
    public static class Cbreak implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i = message.what;
            if (i == 0) {
                ((BaseTransientBottomBar) message.obj).t();
                return true;
            }
            if (i != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).m14208synchronized(message.arg1);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$case, reason: invalid class name */
    public class Ccase extends AnimatorListenerAdapter {
        public Ccase() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.g();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f12717new.animateContentIn(70, 180);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$catch, reason: invalid class name */
    public class Ccatch implements ViewTreeObserver.OnGlobalLayoutListener {
        public Ccatch() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (BaseTransientBottomBar.this.f12713goto) {
                BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                baseTransientBottomBar.f12721throw = baseTransientBottomBar.m14189static();
                BaseTransientBottomBar.this.z();
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$class, reason: invalid class name */
    public class Cclass implements Runnable {
        public Cclass() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM14195volatile;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f12712for == null || baseTransientBottomBar.f12714if == null || (iM14195volatile = (BaseTransientBottomBar.this.m14195volatile() - BaseTransientBottomBar.this.m14184implements()) + ((int) BaseTransientBottomBar.this.f12712for.getTranslationY())) >= BaseTransientBottomBar.this.f12719super) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f12712for.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                String unused = BaseTransientBottomBar.f12702transient;
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f12719super - iM14195volatile;
            BaseTransientBottomBar.this.f12712for.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$const, reason: invalid class name */
    public class Cconst implements OnApplyWindowInsetsListener {
        public Cconst() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f12707class = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f12708const = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f12711final = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.z();
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f12712for;
            if (snackbarBaseLayout == null) {
                return;
            }
            if (snackbarBaseLayout.getParent() != null) {
                BaseTransientBottomBar.this.f12712for.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.f12712for.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.v();
            } else {
                BaseTransientBottomBar.this.x();
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$else, reason: invalid class name */
    public class Celse implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        private int f12738do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f12740if;

        public Celse(int i) {
            this.f12740if = i;
            this.f12738do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f12693interface) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f12712for, iIntValue - this.f12738do);
            } else {
                BaseTransientBottomBar.this.f12712for.setTranslationY(iIntValue);
            }
            this.f12738do = iIntValue;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$final, reason: invalid class name */
    public class Cfinal extends AccessibilityDelegateCompat {
        public Cfinal() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            BaseTransientBottomBar.this.mo14207switch();
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f12742do;

        public Cfor(int i) {
            this.f12742do = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.f(this.f12742do);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$goto, reason: invalid class name */
    public class Cgoto extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f12744do;

        public Cgoto(int i) {
            this.f12744do = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.f(this.f12744do);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f12717new.animateContentOut(0, 180);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.g();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$import, reason: invalid class name */
    public class Cimport implements SwipeDismissBehavior.OnDismissListener {
        public Cimport() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
        public void onDismiss(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.m14209throws(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
        public void onDragStateChanged(int i) {
            if (i == 0) {
                SnackbarManager.m14227for().m14233class(BaseTransientBottomBar.this.f12718public);
            } else if (i == 1 || i == 2) {
                SnackbarManager.m14227for().m14232catch(BaseTransientBottomBar.this.f12718public);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$native, reason: invalid class name */
    public @interface Cnative {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f12712for.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$public, reason: invalid class name */
    public static abstract class Cpublic<B> {

        /* renamed from: do, reason: not valid java name */
        public static final int f12749do = 0;

        /* renamed from: for, reason: not valid java name */
        public static final int f12750for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f12751if = 1;

        /* renamed from: new, reason: not valid java name */
        public static final int f12752new = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f12753try = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$public$do, reason: invalid class name */
        public @interface Cdo {
        }

        /* renamed from: do, reason: not valid java name */
        public void mo14214do(B b, int i) {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo14215if(B b) {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$return, reason: invalid class name */
    public static class Creturn {

        /* renamed from: do, reason: not valid java name */
        private SnackbarManager.Callback f12754do;

        public Creturn(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.m12789catch(0.1f);
            swipeDismissBehavior.m12794this(0.6f);
            swipeDismissBehavior.m12790class(0);
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m14216do(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        /* renamed from: for, reason: not valid java name */
        public void m14217for(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f12754do = baseTransientBottomBar.f12718public;
        }

        /* renamed from: if, reason: not valid java name */
        public void m14218if(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    SnackbarManager.m14227for().m14232catch(this.f12754do);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                SnackbarManager.m14227for().m14233class(this.f12754do);
            }
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$static, reason: invalid class name */
    public @interface Cstatic {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$super, reason: invalid class name */
    public class Csuper implements SnackbarManager.Callback {
        public Csuper() {
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void dismiss(int i) {
            Handler handler = BaseTransientBottomBar.f12689continue;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void show() {
            Handler handler = BaseTransientBottomBar.f12689continue;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$this, reason: invalid class name */
    public class Cthis implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        private int f12756do = 0;

        public Cthis() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.f12693interface) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f12712for, iIntValue - this.f12756do);
            } else {
                BaseTransientBottomBar.this.f12712for.setTranslationY(iIntValue);
            }
            this.f12756do = iIntValue;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$throw, reason: invalid class name */
    public class Cthrow implements OnAttachStateChangeListener {

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$throw$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseTransientBottomBar.this.f(3);
            }
        }

        public Cthrow() {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            WindowInsets rootWindowInsets;
            if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = BaseTransientBottomBar.this.f12712for.getRootWindowInsets()) == null) {
                return;
            }
            BaseTransientBottomBar.this.f12719super = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
            BaseTransientBottomBar.this.z();
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (BaseTransientBottomBar.this.d()) {
                BaseTransientBottomBar.f12689continue.post(new Cdo());
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$try, reason: invalid class name */
    public class Ctry implements ValueAnimator.AnimatorUpdateListener {
        public Ctry() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f12712for.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.f12712for.setScaleY(fFloatValue);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$while, reason: invalid class name */
    public class Cwhile implements OnLayoutChangeListener {
        public Cwhile() {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4) {
            BaseTransientBottomBar.this.f12712for.setOnLayoutChangeListener(null);
            BaseTransientBottomBar.this.u();
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f12693interface = i >= 16 && i <= 19;
        f12696protected = new int[]{R.attr.snackbarStyle};
        f12702transient = BaseTransientBottomBar.class.getSimpleName();
        f12689continue = new Handler(Looper.getMainLooper(), new Cbreak());
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this(viewGroup.getContext(), viewGroup, view, contentViewCallback);
    }

    /* renamed from: default, reason: not valid java name */
    private ValueAnimator m14177default(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(w1.f7369do);
        valueAnimatorOfFloat.addUpdateListener(new Cnew());
        return valueAnimatorOfFloat;
    }

    private boolean e() {
        ViewGroup.LayoutParams layoutParams = this.f12712for.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public int m14184implements() {
        int[] iArr = new int[2];
        this.f12712for.getLocationOnScreen(iArr);
        return iArr[1] + this.f12712for.getHeight();
    }

    private void p(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehaviorM14198continue = this.f12715import;
        if (swipeDismissBehaviorM14198continue == null) {
            swipeDismissBehaviorM14198continue = m14198continue();
        }
        if (swipeDismissBehaviorM14198continue instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorM14198continue).m14212super(this);
        }
        swipeDismissBehaviorM14198continue.setListener(new Cimport());
        layoutParams.setBehavior(swipeDismissBehaviorM14198continue);
        if (this.f12710else == null) {
            layoutParams.insetEdge = 80;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private int m14187protected() {
        int height = this.f12712for.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f12712for.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    private boolean r() {
        return this.f12719super > 0 && !this.f12705case && e();
    }

    /* renamed from: return, reason: not valid java name */
    private void m14188return(int i) {
        if (this.f12712for.getAnimationMode() == 1) {
            w(i);
        } else {
            y(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public int m14189static() {
        View view = this.f12710else;
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.f12709do.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f12709do.getHeight()) - i;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private ValueAnimator m14190strictfp(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(w1.f7372new);
        valueAnimatorOfFloat.addUpdateListener(new Ctry());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (q()) {
            m14206public();
            return;
        }
        if (this.f12712for.getParent() != null) {
            this.f12712for.setVisibility(0);
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        ValueAnimator valueAnimatorM14177default = m14177default(0.0f, 1.0f);
        ValueAnimator valueAnimatorM14190strictfp = m14190strictfp(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorM14177default, valueAnimatorM14190strictfp);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new Cif());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(17)
    /* renamed from: volatile, reason: not valid java name */
    public int m14195volatile() {
        WindowManager windowManager = (WindowManager) this.f12714if.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private void w(int i) {
        ValueAnimator valueAnimatorM14177default = m14177default(1.0f, 0.0f);
        valueAnimatorM14177default.setDuration(75L);
        valueAnimatorM14177default.addListener(new Cfor(i));
        valueAnimatorM14177default.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        int iM14187protected = m14187protected();
        if (f12693interface) {
            ViewCompat.offsetTopAndBottom(this.f12712for, iM14187protected);
        } else {
            this.f12712for.setTranslationY(iM14187protected);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iM14187protected, 0);
        valueAnimator.setInterpolator(w1.f7371if);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new Ccase());
        valueAnimator.addUpdateListener(new Celse(iM14187protected));
        valueAnimator.start();
    }

    private void y(int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m14187protected());
        valueAnimator.setInterpolator(w1.f7371if);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new Cgoto(i));
        valueAnimator.addUpdateListener(new Cthis());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        Rect rect;
        ViewGroup.LayoutParams layoutParams = this.f12712for.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || (rect = this.f12706catch) == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = rect.bottom + (this.f12710else != null ? this.f12721throw : this.f12707class);
        marginLayoutParams.leftMargin = rect.left + this.f12708const;
        marginLayoutParams.rightMargin = rect.right + this.f12711final;
        this.f12712for.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !r()) {
            return;
        }
        this.f12712for.removeCallbacks(this.f12704break);
        this.f12712for.post(this.f12704break);
    }

    public boolean a() {
        return this.f12713goto;
    }

    /* renamed from: abstract, reason: not valid java name */
    public int mo14197abstract() {
        return this.f12722try;
    }

    public boolean b() {
        return this.f12705case;
    }

    public boolean c() {
        return SnackbarManager.m14227for().m14238try(this.f12718public);
    }

    @NonNull
    /* renamed from: continue, reason: not valid java name */
    public SwipeDismissBehavior<? extends View> m14198continue() {
        return new Behavior();
    }

    public boolean d() {
        return SnackbarManager.m14227for().m14231case(this.f12718public);
    }

    @Nullable
    /* renamed from: extends, reason: not valid java name */
    public View m14199extends() {
        return this.f12710else;
    }

    public void f(int i) {
        SnackbarManager.m14227for().m14237this(this.f12718public);
        List<Cpublic<B>> list = this.f12723while;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f12723while.get(size).mo14214do(this, i);
            }
        }
        ViewParent parent = this.f12712for.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f12712for);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public int m14200finally() {
        return this.f12712for.getAnimationMode();
    }

    public void g() {
        SnackbarManager.m14227for().m14230break(this.f12718public);
        List<Cpublic<B>> list = this.f12723while;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f12723while.get(size).mo14215if(this);
            }
        }
    }

    @NonNull
    public B h(@Nullable Cpublic<B> cpublic) {
        List<Cpublic<B>> list;
        if (cpublic == null || (list = this.f12723while) == null) {
            return this;
        }
        list.remove(cpublic);
        return this;
    }

    @NonNull
    public B i(@IdRes int i) {
        View viewFindViewById = this.f12709do.findViewById(i);
        if (viewFindViewById != null) {
            return (B) j(viewFindViewById);
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m14201instanceof() {
        TypedArray typedArrayObtainStyledAttributes = this.f12714if.obtainStyledAttributes(f12696protected);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    @LayoutRes
    /* renamed from: interface, reason: not valid java name */
    public int m14202interface() {
        return m14201instanceof() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    @NonNull
    public B j(@Nullable View view) {
        ViewUtils.m13613class(this.f12710else, this.f12720this);
        this.f12710else = view;
        ViewUtils.m13615do(view, this.f12720this);
        return this;
    }

    public void k(boolean z) {
        this.f12713goto = z;
    }

    @NonNull
    public B l(int i) {
        this.f12712for.setAnimationMode(i);
        return this;
    }

    @NonNull
    public B m(Behavior behavior) {
        this.f12715import = behavior;
        return this;
    }

    @NonNull
    public B n(int i) {
        this.f12722try = i;
        return this;
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public B m14203native(@Nullable Cpublic<B> cpublic) {
        if (cpublic == null) {
            return this;
        }
        if (this.f12723while == null) {
            this.f12723while = new ArrayList();
        }
        this.f12723while.add(cpublic);
        return this;
    }

    @NonNull
    public B o(boolean z) {
        this.f12705case = z;
        return this;
    }

    /* renamed from: package, reason: not valid java name */
    public Behavior m14204package() {
        return this.f12715import;
    }

    @NonNull
    /* renamed from: private, reason: not valid java name */
    public Context m14205private() {
        return this.f12714if;
    }

    /* renamed from: public, reason: not valid java name */
    public void m14206public() {
        this.f12712for.post(new Cdo());
    }

    public boolean q() {
        AccessibilityManager accessibilityManager = this.f12716native;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public void s() {
        SnackbarManager.m14227for().m14234final(mo14197abstract(), this.f12718public);
    }

    /* renamed from: switch, reason: not valid java name */
    public void mo14207switch() {
        m14209throws(3);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m14208synchronized(int i) {
        if (q() && this.f12712for.getVisibility() == 0) {
            m14188return(i);
        } else {
            f(i);
        }
    }

    public final void t() {
        this.f12712for.setOnAttachStateChangeListener(new Cthrow());
        if (this.f12712for.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f12712for.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                p((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.f12721throw = m14189static();
            z();
            this.f12712for.setVisibility(4);
            this.f12709do.addView(this.f12712for);
        }
        if (ViewCompat.isLaidOut(this.f12712for)) {
            u();
        } else {
            this.f12712for.setOnLayoutChangeListener(new Cwhile());
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m14209throws(int i) {
        SnackbarManager.m14227for().m14235if(this.f12718public, i);
    }

    @NonNull
    /* renamed from: transient, reason: not valid java name */
    public View m14210transient() {
        return this.f12712for;
    }

    public BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        this.f12713goto = false;
        this.f12720this = new Ccatch();
        this.f12704break = new Cclass();
        this.f12718public = new Csuper();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (contentViewCallback == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f12709do = viewGroup;
        this.f12717new = contentViewCallback;
        this.f12714if = context;
        k62.m4270do(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(m14202interface(), viewGroup, false);
        this.f12712for = snackbarBaseLayout;
        if (view instanceof SnackbarContentLayout) {
            ((SnackbarContentLayout) view).m14223do(snackbarBaseLayout.getActionTextColorAlpha());
        }
        snackbarBaseLayout.addView(view);
        ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f12706catch = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new Cconst());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new Cfinal());
        this.f12716native = (AccessibilityManager) context.getSystemService("accessibility");
    }
}

package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ViewUtils {

    public interface OnApplyWindowInsetsListener {
        WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, Ctry ctry);
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f12129do;

        public Cdo(View view) {
            this.f12129do = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) this.f12129do.getContext().getSystemService("input_method")).showSoftInput(this.f12129do, 1);
        }
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$for, reason: invalid class name */
    public static class Cfor implements androidx.core.view.OnApplyWindowInsetsListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ OnApplyWindowInsetsListener f12130do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Ctry f12131if;

        public Cfor(OnApplyWindowInsetsListener onApplyWindowInsetsListener, Ctry ctry) {
            this.f12130do = onApplyWindowInsetsListener;
            this.f12131if = ctry;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f12130do.onApplyWindowInsets(view, windowInsetsCompat, new Ctry(this.f12131if));
        }
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$if, reason: invalid class name */
    public static class Cif implements OnApplyWindowInsetsListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f12132do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f12133for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f12134if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ OnApplyWindowInsetsListener f12135new;

        public Cif(boolean z, boolean z2, boolean z3, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            this.f12132do = z;
            this.f12134if = z2;
            this.f12133for = z3;
            this.f12135new = onApplyWindowInsetsListener;
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Ctry ctry) {
            if (this.f12132do) {
                ctry.f12139new += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean zM13610break = ViewUtils.m13610break(view);
            if (this.f12134if) {
                if (zM13610break) {
                    ctry.f12137for += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    ctry.f12136do += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f12133for) {
                if (zM13610break) {
                    ctry.f12136do += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    ctry.f12137for += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            ctry.m13625do(view);
            OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f12135new;
            return onApplyWindowInsetsListener != null ? onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsetsCompat, ctry) : windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$new, reason: invalid class name */
    public static class Cnew implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    private ViewUtils() {
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m13610break(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public static ViewGroup m13611case(@Nullable View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    /* renamed from: catch, reason: not valid java name */
    public static PorterDuff.Mode m13612catch(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m13613class(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            m13614const(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m13614const(@NonNull ViewTreeObserver viewTreeObserver, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m13615do(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public static ViewOverlayImpl m13616else(@NonNull View view) {
        return m13619goto(m13611case(view));
    }

    /* renamed from: final, reason: not valid java name */
    public static void m13617final(@NonNull View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new Cnew());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m13618for(@NonNull View view, @Nullable AttributeSet attributeSet, int i, int i2, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.Insets, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        m13621new(view, new Cif(z, z2, z3, onApplyWindowInsetsListener));
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public static ViewOverlayImpl m13619goto(@Nullable View view) {
        if (view == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? new Cgoto(view) : Celse.m13666do(view);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m13620if(@NonNull View view, @Nullable AttributeSet attributeSet, int i, int i2) {
        m13618for(view, attributeSet, i, i2, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m13621new(@NonNull View view, @NonNull OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new Cfor(onApplyWindowInsetsListener, new Ctry(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        m13617final(view);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m13622super(@NonNull View view) {
        view.requestFocus();
        view.post(new Cdo(view));
    }

    /* renamed from: this, reason: not valid java name */
    public static float m13623this(@NonNull View view) {
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ViewCompat.getElevation((View) parent);
        }
        return elevation;
    }

    /* renamed from: try, reason: not valid java name */
    public static float m13624try(@NonNull Context context, @Dimension(unit = 0) int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public int f12136do;

        /* renamed from: for, reason: not valid java name */
        public int f12137for;

        /* renamed from: if, reason: not valid java name */
        public int f12138if;

        /* renamed from: new, reason: not valid java name */
        public int f12139new;

        public Ctry(int i, int i2, int i3, int i4) {
            this.f12136do = i;
            this.f12138if = i2;
            this.f12137for = i3;
            this.f12139new = i4;
        }

        /* renamed from: do, reason: not valid java name */
        public void m13625do(View view) {
            ViewCompat.setPaddingRelative(view, this.f12136do, this.f12138if, this.f12137for, this.f12139new);
        }

        public Ctry(@NonNull Ctry ctry) {
            this.f12136do = ctry.f12136do;
            this.f12138if = ctry.f12138if;
            this.f12137for = ctry.f12137for;
            this.f12139new = ctry.f12139new;
        }
    }
}

package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes.dex */
public class Snackbar extends BaseTransientBottomBar<Snackbar> {
    private static final int[] a;
    private static final int[] b;

    /* renamed from: implements, reason: not valid java name */
    @Nullable
    private final AccessibilityManager f12762implements;

    /* renamed from: instanceof, reason: not valid java name */
    private boolean f12763instanceof;

    /* renamed from: synchronized, reason: not valid java name */
    @Nullable
    private BaseTransientBottomBar.Cpublic<Snackbar> f12764synchronized;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout, android.view.View
        public /* bridge */ /* synthetic */ void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.snackbar.Snackbar$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View.OnClickListener f12765do;

        public Cdo(View.OnClickListener onClickListener) {
            this.f12765do = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12765do.onClick(view);
            Snackbar.this.m14209throws(1);
        }
    }

    /* renamed from: com.google.android.material.snackbar.Snackbar$if, reason: invalid class name */
    public static class Cif extends BaseTransientBottomBar.Cpublic<Snackbar> {

        /* renamed from: break, reason: not valid java name */
        public static final int f12767break = 4;

        /* renamed from: case, reason: not valid java name */
        public static final int f12768case = 0;

        /* renamed from: else, reason: not valid java name */
        public static final int f12769else = 1;

        /* renamed from: goto, reason: not valid java name */
        public static final int f12770goto = 2;

        /* renamed from: this, reason: not valid java name */
        public static final int f12771this = 3;

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.Cpublic
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo14214do(Snackbar snackbar, int i) {
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.Cpublic
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo14215if(Snackbar snackbar) {
        }
    }

    static {
        int i = R.attr.snackbarButtonStyle;
        a = new int[]{i};
        b = new int[]{i, R.attr.snackbarTextViewStyle};
    }

    private Snackbar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull ContentViewCallback contentViewCallback) {
        super(context, viewGroup, view, contentViewCallback);
        this.f12762implements = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    @Nullable
    private static ViewGroup A(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    @Deprecated
    public static boolean B(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(a);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    private static boolean C(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(b);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    @NonNull
    public static Snackbar D(@NonNull Context context, @NonNull View view, @NonNull CharSequence charSequence, int i) {
        return G(context, view, charSequence, i);
    }

    @NonNull
    public static Snackbar E(@NonNull View view, @StringRes int i, int i2) {
        return F(view, view.getResources().getText(i), i2);
    }

    @NonNull
    public static Snackbar F(@NonNull View view, @NonNull CharSequence charSequence, int i) {
        return G(null, view, charSequence, i);
    }

    @NonNull
    private static Snackbar G(@Nullable Context context, @NonNull View view, @NonNull CharSequence charSequence, int i) {
        ViewGroup viewGroupA = A(view);
        if (viewGroupA == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        if (context == null) {
            context = viewGroupA.getContext();
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(context).inflate(C(context) ? R.layout.mtrl_layout_snackbar_include : R.layout.design_layout_snackbar_include, viewGroupA, false);
        Snackbar snackbar = new Snackbar(context, viewGroupA, snackbarContentLayout, snackbarContentLayout);
        snackbar.R(charSequence);
        snackbar.n(i);
        return snackbar;
    }

    @NonNull
    public Snackbar H(@StringRes int i, View.OnClickListener onClickListener) {
        return I(m14205private().getText(i), onClickListener);
    }

    @NonNull
    public Snackbar I(@Nullable CharSequence charSequence, @Nullable View.OnClickListener onClickListener) {
        Button actionView = ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.f12763instanceof = false;
        } else {
            this.f12763instanceof = true;
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new Cdo(onClickListener));
        }
        return this;
    }

    @NonNull
    public Snackbar J(@ColorInt int i) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getActionView().setTextColor(i);
        return this;
    }

    @NonNull
    public Snackbar K(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getActionView().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar L(@ColorInt int i) {
        return M(ColorStateList.valueOf(i));
    }

    @NonNull
    public Snackbar M(@Nullable ColorStateList colorStateList) {
        this.f12712for.setBackgroundTintList(colorStateList);
        return this;
    }

    @NonNull
    public Snackbar N(@Nullable PorterDuff.Mode mode) {
        this.f12712for.setBackgroundTintMode(mode);
        return this;
    }

    @NonNull
    @Deprecated
    public Snackbar O(@Nullable Cif cif) {
        BaseTransientBottomBar.Cpublic<Snackbar> cpublic = this.f12764synchronized;
        if (cpublic != null) {
            h(cpublic);
        }
        if (cif != null) {
            m14203native(cif);
        }
        this.f12764synchronized = cif;
        return this;
    }

    @NonNull
    public Snackbar P(@Dimension int i) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).setMaxInlineActionWidth(i);
        return this;
    }

    @NonNull
    public Snackbar Q(@StringRes int i) {
        return R(m14205private().getText(i));
    }

    @NonNull
    public Snackbar R(@NonNull CharSequence charSequence) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @NonNull
    public Snackbar S(@ColorInt int i) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getMessageView().setTextColor(i);
        return this;
    }

    @NonNull
    public Snackbar T(ColorStateList colorStateList) {
        ((SnackbarContentLayout) this.f12712for.getChildAt(0)).getMessageView().setTextColor(colorStateList);
        return this;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: abstract */
    public int mo14197abstract() {
        int iMo14197abstract = super.mo14197abstract();
        if (iMo14197abstract == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f12762implements.getRecommendedTimeoutMillis(iMo14197abstract, (this.f12763instanceof ? 4 : 0) | 1 | 2);
        }
        if (this.f12763instanceof && this.f12762implements.isTouchExplorationEnabled()) {
            return -2;
        }
        return iMo14197abstract;
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public boolean c() {
        return super.c();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    public void s() {
        super.s();
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: switch */
    public void mo14207switch() {
        super.mo14207switch();
    }
}

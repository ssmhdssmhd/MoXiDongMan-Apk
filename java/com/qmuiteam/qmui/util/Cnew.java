package com.qmuiteam.qmui.util;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.ih1;
import android.support.v4.ph1;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.widget.INotchInsetConsumer;
import com.qmuiteam.qmui.widget.IWindowInsetLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.qmuiteam.qmui.util.new, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnew {

    /* renamed from: new, reason: not valid java name */
    private static final Object f19331new = new Object();

    /* renamed from: try, reason: not valid java name */
    private static ArrayList<Class<? extends ViewGroup>> f19332try = new ArrayList<>();

    /* renamed from: do, reason: not valid java name */
    private final int f19333do;

    /* renamed from: for, reason: not valid java name */
    private int f19334for = 0;

    /* renamed from: if, reason: not valid java name */
    private final WeakReference<IWindowInsetLayout> f19335if;

    /* renamed from: com.qmuiteam.qmui.util.new$do, reason: invalid class name */
    public class Cdo implements OnApplyWindowInsetsListener {
        public Cdo() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return (Build.VERSION.SDK_INT < 21 || Cnew.this.f19335if.get() == null || !((IWindowInsetLayout) Cnew.this.f19335if.get()).applySystemWindowInsets21(windowInsetsCompat)) ? windowInsetsCompat : windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.new$if, reason: invalid class name */
    public class Cif implements View.OnApplyWindowInsetsListener {
        public Cif() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (Cnew.this.f19335if.get() == null || !((IWindowInsetLayout) Cnew.this.f19335if.get()).applySystemWindowInsets21(windowInsets)) {
                return windowInsets;
            }
            WindowInsets windowInsetsConsumeSystemWindowInsets = windowInsets.consumeSystemWindowInsets();
            return windowInsetsConsumeSystemWindowInsets.getDisplayCutout() != null ? windowInsetsConsumeSystemWindowInsets.consumeDisplayCutout() : windowInsetsConsumeSystemWindowInsets;
        }
    }

    public Cnew(ViewGroup viewGroup, IWindowInsetLayout iWindowInsetLayout) {
        this.f19335if = new WeakReference<>(iWindowInsetLayout);
        this.f19333do = ih1.m3450new(viewGroup.getContext(), 100);
        if (ph1.m6059interface()) {
            m23690final(viewGroup);
        } else {
            ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new Cdo());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    private void m23685break(View view) {
        if (!((view instanceof INotchInsetConsumer) && ((INotchInsetConsumer) view).notifyInsetMaybeChanged()) && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m23685break(viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static View m23686catch(@NonNull View view) {
        while (view != null) {
            if (f19331new == view.getTag(R.id.qmui_window_inset_keyboard_area_consumer)) {
                return view;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m23687class(View view) {
        if ((view instanceof IWindowInsetLayout) || (view instanceof CoordinatorLayout) || (view instanceof DrawerLayout)) {
            return true;
        }
        Iterator<Class<? extends ViewGroup>> it = f19332try.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(19)
    /* renamed from: const, reason: not valid java name */
    public static boolean m23688const(View view) {
        return (view.getFitsSystemWindows() || m23687class(view)) ? false : true;
    }

    @TargetApi(28)
    /* renamed from: final, reason: not valid java name */
    private void m23690final(ViewGroup viewGroup) {
        viewGroup.setOnApplyWindowInsetsListener(new Cif());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23691if(Class<? extends ViewGroup> cls) {
        f19332try.add(cls);
    }

    @TargetApi(28)
    /* renamed from: case, reason: not valid java name */
    public boolean m23692case(ViewGroup viewGroup, WindowInsets windowInsets) {
        boolean z;
        this.f19334for++;
        if (ph1.m6059interface()) {
            if (this.f19334for == 1) {
                m23685break(viewGroup);
            }
            windowInsets = windowInsets.consumeDisplayCutout();
        }
        boolean z2 = false;
        if (windowInsets.hasSystemWindowInsets()) {
            if (windowInsets.getSystemWindowInsetBottom() >= this.f19333do) {
                Cfor.m23639finally(viewGroup, windowInsets.getSystemWindowInsetBottom());
                viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, f19331new);
                z = true;
            } else {
                Cfor.m23639finally(viewGroup, 0);
                viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, null);
                z = false;
            }
            boolean z3 = false;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (!m23688const(childAt)) {
                    Rect rect = new Rect(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), z ? 0 : windowInsets.getSystemWindowInsetBottom());
                    m23694for(childAt, rect);
                    z3 = z3 || childAt.dispatchApplyWindowInsets(windowInsets.replaceSystemWindowInsets(rect)).isConsumed();
                }
            }
            z2 = z3;
        }
        this.f19334for--;
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    @TargetApi(19)
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m23693else(ViewGroup viewGroup, Rect rect) {
        int i = rect.bottom;
        if (i >= this.f19333do) {
            Cfor.m23639finally(viewGroup, i);
            viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, f19331new);
            rect.bottom = 0;
        } else {
            viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, null);
            Cfor.m23639finally(viewGroup, 0);
        }
        boolean z = false;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (!m23688const(childAt)) {
                Rect rect2 = new Rect(rect);
                m23694for(childAt, rect2);
                if (!m23687class(childAt)) {
                    childAt.setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
                } else if (childAt instanceof IWindowInsetLayout) {
                    z = z || ((IWindowInsetLayout) childAt).applySystemWindowInsets19(rect2);
                } else {
                    boolean zM23693else = m23693else((ViewGroup) childAt, rect2);
                    if (z || zM23693else) {
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: for, reason: not valid java name */
    public void m23694for(View view, Rect rect) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            m23696new(view, rect, (ConstraintLayout.LayoutParams) layoutParams);
        } else {
            m23698try(view, rect, layoutParams);
        }
    }

    @TargetApi(21)
    /* renamed from: goto, reason: not valid java name */
    public boolean m23695goto(ViewGroup viewGroup, Object obj) {
        return ph1.m6059interface() ? m23692case(viewGroup, (WindowInsets) obj) : m23697this(viewGroup, (WindowInsetsCompat) obj);
    }

    /* renamed from: new, reason: not valid java name */
    public void m23696new(View view, Rect rect, ConstraintLayout.LayoutParams layoutParams) {
        if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
            if (layoutParams.leftToLeft == 0) {
                rect.right = 0;
            } else if (layoutParams.rightToRight == 0) {
                rect.left = 0;
            }
        }
        if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
            if (layoutParams.topToTop == 0) {
                rect.bottom = 0;
            } else if (layoutParams.bottomToBottom == 0) {
                rect.top = 0;
            }
        }
    }

    @TargetApi(21)
    /* renamed from: this, reason: not valid java name */
    public boolean m23697this(ViewGroup viewGroup, WindowInsetsCompat windowInsetsCompat) {
        boolean z;
        if (!windowInsetsCompat.hasSystemWindowInsets()) {
            return false;
        }
        if (windowInsetsCompat.getSystemWindowInsetBottom() >= this.f19333do) {
            Cfor.m23639finally(viewGroup, windowInsetsCompat.getSystemWindowInsetBottom());
            viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, f19331new);
            z = true;
        } else {
            Cfor.m23639finally(viewGroup, 0);
            viewGroup.setTag(R.id.qmui_window_inset_keyboard_area_consumer, null);
            z = false;
        }
        boolean z2 = false;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!m23688const(childAt)) {
                int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
                int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
                if (ph1.m6064protected(viewGroup) && viewGroup.getResources().getConfiguration().orientation == 2) {
                    systemWindowInsetLeft = Math.max(systemWindowInsetLeft, ph1.m6060native(viewGroup));
                    systemWindowInsetRight = Math.max(systemWindowInsetRight, ph1.m6070switch(viewGroup));
                }
                Rect rect = new Rect(systemWindowInsetLeft, windowInsetsCompat.getSystemWindowInsetTop(), systemWindowInsetRight, z ? 0 : windowInsetsCompat.getSystemWindowInsetBottom());
                m23694for(childAt, rect);
                WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(childAt, windowInsetsCompat.replaceSystemWindowInsets(rect));
                z2 = z2 || (windowInsetsCompatDispatchApplyWindowInsets != null && windowInsetsCompatDispatchApplyWindowInsets.isConsumed());
            }
        }
        return z2;
    }

    @SuppressLint({"RtlHardcoded"})
    /* renamed from: try, reason: not valid java name */
    public void m23698try(View view, Rect rect, ViewGroup.LayoutParams layoutParams) {
        int i = layoutParams instanceof FrameLayout.LayoutParams ? ((FrameLayout.LayoutParams) layoutParams).gravity : -1;
        if (i == -1) {
            i = 51;
        }
        if (layoutParams.width != -1) {
            int i2 = i & 7;
            if (i2 == 3) {
                rect.right = 0;
            } else if (i2 == 5) {
                rect.left = 0;
            }
        }
        if (layoutParams.height != -1) {
            int i3 = i & 112;
            if (i3 == 48) {
                rect.bottom = 0;
            } else {
                if (i3 != 80) {
                    return;
                }
                rect.top = 0;
            }
        }
    }
}

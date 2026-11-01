package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.qmuiteam.qmui.util.Cnew;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class QMUIAppBarLayout extends AppBarLayout implements IWindowInsetLayout {

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAppBarLayout$do, reason: invalid class name */
    public class Cdo extends WindowInsetsCompat {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Rect f19375do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(WindowInsetsCompat windowInsetsCompat, Rect rect) {
            super(windowInsetsCompat);
            this.f19375do = rect;
        }

        @Override // androidx.core.view.WindowInsetsCompat
        public int getSystemWindowInsetTop() {
            return this.f19375do.top;
        }
    }

    public QMUIAppBarLayout(Context context) {
        super(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets19(Rect rect) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Field declaredField;
        if (!ViewCompat.getFitsSystemWindows(this)) {
            return false;
        }
        try {
            try {
                declaredField = AppBarLayout.class.getDeclaredField("else");
            } catch (NoSuchFieldException unused) {
                declaredField = null;
            }
        } catch (NoSuchFieldException unused2) {
            declaredField = AppBarLayout.class.getDeclaredField("mLastInsets");
        }
        if (declaredField != null) {
            declaredField.setAccessible(true);
            try {
                declaredField.set(this, new Cdo(null, rect));
            } catch (IllegalAccessException unused3) {
            }
        }
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (!Cnew.m23688const(childAt)) {
                if (!Cnew.m23687class(childAt)) {
                    childAt.setPadding(rect.left, rect.top, rect.right, rect.bottom);
                } else if (childAt instanceof IWindowInsetLayout) {
                    ((IWindowInsetLayout) childAt).applySystemWindowInsets19(rect);
                }
            }
        }
        return true;
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets21(Object obj) {
        return true;
    }

    public QMUIAppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* renamed from: com.google.android.material.internal.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse implements ViewOverlayImpl {

    /* renamed from: do, reason: not valid java name */
    public Cdo f12183do;

    @SuppressLint({"ViewConstructor", "PrivateApi"})
    /* renamed from: com.google.android.material.internal.else$do, reason: invalid class name */
    public static class Cdo extends ViewGroup {

        /* renamed from: case, reason: not valid java name */
        public static Method f12184case;

        /* renamed from: do, reason: not valid java name */
        public ViewGroup f12185do;

        /* renamed from: for, reason: not valid java name */
        public ArrayList<Drawable> f12186for;

        /* renamed from: if, reason: not valid java name */
        public View f12187if;

        /* renamed from: new, reason: not valid java name */
        public Celse f12188new;

        /* renamed from: try, reason: not valid java name */
        private boolean f12189try;

        static {
            try {
                Class cls = Integer.TYPE;
                f12184case = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        public Cdo(Context context, ViewGroup viewGroup, View view, Celse celse) {
            super(context);
            this.f12186for = null;
            this.f12185do = viewGroup;
            this.f12187if = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f12188new = celse;
        }

        /* renamed from: for, reason: not valid java name */
        private void m13667for() {
            if (this.f12189try) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m13668new() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f12186for;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f12189try = true;
                    this.f12185do.removeView(this);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        private void m13669try(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f12185do.getLocationOnScreen(iArr2);
            this.f12187if.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* renamed from: case, reason: not valid java name */
        public ViewParent m13670case(int i, int i2, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f12185do == null || f12184case == null) {
                return null;
            }
            try {
                m13669try(new int[2]);
                f12184case.invoke(this.f12185do, Integer.valueOf(i), Integer.valueOf(i2), rect);
                return null;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            this.f12185do.getLocationOnScreen(new int[2]);
            this.f12187if.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f12187if.getWidth(), this.f12187if.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f12186for;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f12186for.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public void m13671do(Drawable drawable) {
            m13667for();
            if (this.f12186for == null) {
                this.f12186for = new ArrayList<>();
            }
            if (this.f12186for.contains(drawable)) {
                return;
            }
            this.f12186for.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        /* renamed from: else, reason: not valid java name */
        public void m13672else(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f12186for;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m13668new();
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public void m13673goto(View view) {
            super.removeView(view);
            m13668new();
        }

        /* renamed from: if, reason: not valid java name */
        public void m13674if(View view) {
            m13667for();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f12185do && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f12185do.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f12185do == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f12185do == null) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            m13669try(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        public boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f12186for) != null && arrayList.contains(drawable));
        }
    }

    public Celse(Context context, ViewGroup viewGroup, View view) {
        this.f12183do = new Cdo(context, viewGroup, view, this);
    }

    /* renamed from: do, reason: not valid java name */
    public static Celse m13666do(View view) {
        ViewGroup viewGroupM13611case = ViewUtils.m13611case(view);
        if (viewGroupM13611case == null) {
            return null;
        }
        int childCount = viewGroupM13611case.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroupM13611case.getChildAt(i);
            if (childAt instanceof Cdo) {
                return ((Cdo) childAt).f12188new;
            }
        }
        return new Ctry(viewGroupM13611case.getContext(), viewGroupM13611case, view);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f12183do.m13671do(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f12183do.m13672else(drawable);
    }
}

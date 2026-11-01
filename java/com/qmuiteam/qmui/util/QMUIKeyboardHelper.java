package com.qmuiteam.qmui.util;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.ah1;
import android.support.v4.ih1;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import java.util.Objects;

/* loaded from: classes2.dex */
public class QMUIKeyboardHelper {

    /* renamed from: do, reason: not valid java name */
    public static final int f19288do = 200;

    /* renamed from: for, reason: not valid java name */
    public static final int f19289for = 100;

    /* renamed from: if, reason: not valid java name */
    private static final String f19290if = "QMUIKeyboardHelper";

    public interface KeyboardVisibilityEventListener {
        boolean onVisibilityChanged(boolean z, int i);
    }

    /* renamed from: com.qmuiteam.qmui.util.QMUIKeyboardHelper$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ EditText f19291do;

        public Cdo(EditText editText) {
            this.f19291do = editText;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) this.f19291do.getContext().getApplicationContext().getSystemService("input_method")).showSoftInput(this.f19291do, 1);
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.QMUIKeyboardHelper$for, reason: invalid class name */
    public static class Cfor extends ah1 {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f19292for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f19293if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            super(activity);
            this.f19293if = view;
            this.f19292for = onGlobalLayoutListener;
        }

        @Override // android.support.v4.ah1
        /* renamed from: do */
        public void mo250do() {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f19293if.getViewTreeObserver().removeOnGlobalLayoutListener(this.f19292for);
            } else {
                this.f19293if.getViewTreeObserver().removeGlobalOnLayoutListener(this.f19292for);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.QMUIKeyboardHelper$if, reason: invalid class name */
    public static class Cif implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ KeyboardVisibilityEventListener f19294case;

        /* renamed from: do, reason: not valid java name */
        private final Rect f19295do = new Rect();

        /* renamed from: for, reason: not valid java name */
        private boolean f19296for = false;

        /* renamed from: if, reason: not valid java name */
        private final int f19297if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Activity f19298new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ View f19299try;

        public Cif(Activity activity, View view, KeyboardVisibilityEventListener keyboardVisibilityEventListener) {
            this.f19298new = activity;
            this.f19299try = view;
            this.f19294case = keyboardVisibilityEventListener;
            this.f19297if = Math.round(ih1.m3450new(activity, 100));
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f19299try.getWindowVisibleDisplayFrame(this.f19295do);
            int height = this.f19299try.getRootView().getHeight() - this.f19295do.height();
            boolean z = height > this.f19297if;
            if (z == this.f19296for) {
                return;
            }
            this.f19296for = z;
            if (this.f19294case.onVisibilityChanged(z, height)) {
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f19299try.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    this.f19299try.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m23622do(View view) {
        if (view == null) {
            return false;
        }
        return ((InputMethodManager) view.getContext().getApplicationContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 2);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m23623for(Activity activity, KeyboardVisibilityEventListener keyboardVisibilityEventListener) {
        Objects.requireNonNull(activity, "Parameter:activity must not be null");
        Objects.requireNonNull(keyboardVisibilityEventListener, "Parameter:listener must not be null");
        View viewM23628break = com.qmuiteam.qmui.util.Cfor.m23628break(activity);
        Cif cif = new Cif(activity, viewM23628break, keyboardVisibilityEventListener);
        viewM23628break.getViewTreeObserver().addOnGlobalLayoutListener(cif);
        activity.getApplication().registerActivityLifecycleCallbacks(new Cfor(activity, viewM23628break, cif));
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m23624if(Activity activity) {
        Rect rect = new Rect();
        View viewM23628break = com.qmuiteam.qmui.util.Cfor.m23628break(activity);
        int iRound = Math.round(ih1.m3450new(activity, 100));
        viewM23628break.getWindowVisibleDisplayFrame(rect);
        return viewM23628break.getRootView().getHeight() - rect.height() > iRound;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m23625new(EditText editText, int i) {
        if (editText != null && editText.requestFocus()) {
            if (i > 0) {
                editText.postDelayed(new Cdo(editText), i);
            } else {
                ((InputMethodManager) editText.getContext().getApplicationContext().getSystemService("input_method")).showSoftInput(editText, 1);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m23626try(EditText editText, boolean z) {
        m23625new(editText, z ? 200 : 0);
    }
}

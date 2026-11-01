package com.qmuiteam.qmui.widget.webview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.support.v4.ph1;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.core.view.WindowInsetsCompat;
import com.qmuiteam.qmui.widget.QMUIWindowInsetLayout;
import com.qmuiteam.qmui.widget.webview.QMUIWebView;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class QMUIWebViewContainer extends QMUIWindowInsetLayout {

    /* renamed from: new, reason: not valid java name */
    private QMUIWebView f20022new;

    /* renamed from: try, reason: not valid java name */
    private QMUIWebView.OnScrollChangeListener f20023try;

    /* renamed from: com.qmuiteam.qmui.widget.webview.QMUIWebViewContainer$do, reason: invalid class name */
    public class Cdo implements QMUIWebView.OnScrollChangeListener {
        public Cdo() {
        }

        @Override // com.qmuiteam.qmui.widget.webview.QMUIWebView.OnScrollChangeListener
        public void onScrollChange(WebView webView, int i, int i2, int i3, int i4) {
            if (QMUIWebViewContainer.this.f20023try != null) {
                QMUIWebViewContainer.this.f20023try.onScrollChange(webView, i, i2, i3, i4);
            }
        }
    }

    public QMUIWebViewContainer(Context context) {
        super(context);
    }

    @Override // com.qmuiteam.qmui.widget.QMUIWindowInsetLayout, com.qmuiteam.qmui.widget.IWindowInsetLayout
    @TargetApi(19)
    public boolean applySystemWindowInsets19(Rect rect) {
        if (!getFitsSystemWindows()) {
            return super.applySystemWindowInsets19(rect);
        }
        Rect rect2 = new Rect(rect);
        this.f19646for.m23694for(this, rect2);
        setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        return true;
    }

    @Override // com.qmuiteam.qmui.widget.QMUIWindowInsetLayout, com.qmuiteam.qmui.widget.IWindowInsetLayout
    @TargetApi(21)
    public boolean applySystemWindowInsets21(Object obj) {
        int systemWindowInsetBottom;
        int systemWindowInsetRight;
        int systemWindowInsetTop;
        if (!getFitsSystemWindows()) {
            return super.applySystemWindowInsets21(obj);
        }
        int systemWindowInsetLeft = 0;
        if (obj instanceof WindowInsetsCompat) {
            WindowInsetsCompat windowInsetsCompat = (WindowInsetsCompat) obj;
            systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
            systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
        } else if (obj instanceof WindowInsets) {
            WindowInsets windowInsets = (WindowInsets) obj;
            systemWindowInsetLeft = windowInsets.getSystemWindowInsetLeft();
            systemWindowInsetRight = windowInsets.getSystemWindowInsetRight();
            systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
            systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        } else {
            systemWindowInsetBottom = 0;
            systemWindowInsetRight = 0;
            systemWindowInsetTop = 0;
        }
        if (ph1.m6064protected(this) && getResources().getConfiguration().orientation == 2) {
            systemWindowInsetLeft = Math.max(systemWindowInsetLeft, ph1.m6060native(this));
            systemWindowInsetRight = Math.max(systemWindowInsetRight, ph1.m6070switch(this));
        }
        Rect rect = new Rect(systemWindowInsetLeft, systemWindowInsetTop, systemWindowInsetRight, systemWindowInsetBottom);
        this.f19646for.m23694for(this, rect);
        setPadding(rect.left, rect.top, rect.right, rect.bottom);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public void m24262for(@NonNull QMUIWebView qMUIWebView, boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        this.f20022new = qMUIWebView;
        qMUIWebView.setNeedDispatchSafeAreaInset(z);
        this.f20022new.addCustomOnScrollChangeListener(new Cdo());
        addView(this.f20022new, getWebViewLayoutParams());
    }

    public FrameLayout.LayoutParams getWebViewLayoutParams() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    /* renamed from: new, reason: not valid java name */
    public void m24263new() {
        removeView(this.f20022new);
        removeAllViews();
        this.f20022new.setWebChromeClient(null);
        this.f20022new.setWebViewClient(null);
        this.f20022new.destroy();
    }

    public void setCustomOnScrollChangeListener(QMUIWebView.OnScrollChangeListener onScrollChangeListener) {
        this.f20023try = onScrollChangeListener;
    }

    public void setNeedDispatchSafeAreaInset(boolean z) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException, InvocationTargetException {
        QMUIWebView qMUIWebView = this.f20022new;
        if (qMUIWebView != null) {
            qMUIWebView.setNeedDispatchSafeAreaInset(z);
        }
    }

    public QMUIWebViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.ih1;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;
import com.qmuiteam.qmui.widget.webview.QMUIWebView;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedTopWebView extends QMUIWebView implements IQMUIContinuousNestedTopView {

    /* renamed from: class, reason: not valid java name */
    public static final String f19197class = "@qmui_scroll_info_top_webview";

    /* renamed from: catch, reason: not valid java name */
    private IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19198catch;

    public QMUIContinuousNestedTopWebView(Context context) {
        super(context);
        m23552this();
    }

    /* renamed from: const, reason: not valid java name */
    private void m23551const(String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            evaluateJavascript(str, null);
        } else {
            loadUrl(str);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m23552this() {
        setVerticalScrollBarEnabled(false);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int consumeScroll(int i) {
        int scrollY = getScrollY();
        int scrollOffsetRange = getScrollOffsetRange();
        int iMax = Math.max(0, Math.min(scrollY, scrollOffsetRange));
        int iMax2 = i < 0 ? Math.max(i, -iMax) : i > 0 ? Math.min(i, scrollOffsetRange - iMax) : 0;
        scrollBy(0, iMax2);
        return i - iMax2;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getCurrentScroll() {
        return Math.max(0, Math.min(getScrollY(), getScrollOffsetRange()));
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getScrollOffsetRange() {
        return computeVerticalScrollRange() - getHeight();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
        this.f19198catch = onScrollNotifier;
    }

    @Override // com.qmuiteam.qmui.widget.webview.QMUIWebView, android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier = this.f19198catch;
        if (onScrollNotifier != null) {
            onScrollNotifier.notify(getCurrentScroll(), getScrollOffsetRange());
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
        m23551const("javascript:scrollTo(0, " + ih1.m3453protected(getContext(), bundle.getInt(f19197class, 0)) + ")");
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void saveScrollInfo(@NonNull Bundle bundle) {
        bundle.putInt(f19197class, getScrollY());
    }

    public QMUIContinuousNestedTopWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23552this();
    }

    public QMUIContinuousNestedTopWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23552this();
    }
}

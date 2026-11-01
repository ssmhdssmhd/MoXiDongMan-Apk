package com.qmuiteam.qmui.widget.pullRefreshLayout;

import com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout;

/* renamed from: com.qmuiteam.qmui.widget.pullRefreshLayout.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor implements QMUIPullRefreshLayout.RefreshOffsetCalculator {
    @Override // com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout.RefreshOffsetCalculator
    public int calculateRefreshOffset(int i, int i2, int i3, int i4, int i5, int i6) {
        return Math.min(i4 - i3, i4 - ((i6 / 2) + (i3 / 2)));
    }
}

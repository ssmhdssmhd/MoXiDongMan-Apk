package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedTopLinearLayout extends QMUILinearLayout implements IQMUIContinuousNestedTopView {
    public QMUIContinuousNestedTopLinearLayout(Context context) {
        super(context);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int consumeScroll(int i) {
        return i;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getCurrentScroll() {
        return 0;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getScrollOffsetRange() {
        return 0;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void saveScrollInfo(@NonNull Bundle bundle) {
    }

    public QMUIContinuousNestedTopLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIContinuousNestedTopLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}

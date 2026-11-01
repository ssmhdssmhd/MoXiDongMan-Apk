package com.qmuiteam.qmui.nestedScroll;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public interface IQMUIContinuousNestedScrollCommon {
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    public interface OnScrollNotifier {
        void notify(int i, int i2);

        void onScrollStateChange(View view, int i);
    }

    void injectScrollNotifier(OnScrollNotifier onScrollNotifier);

    void restoreScrollInfo(@NonNull Bundle bundle);

    void saveScrollInfo(@NonNull Bundle bundle);
}

package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIObservableScrollView extends ScrollView {

    /* renamed from: do, reason: not valid java name */
    private int f19437do;

    /* renamed from: if, reason: not valid java name */
    private List<OnScrollChangedListener> f19438if;

    public interface OnScrollChangedListener {
        void onScrollChanged(QMUIObservableScrollView qMUIObservableScrollView, int i, int i2, int i3, int i4);
    }

    public QMUIObservableScrollView(Context context) {
        super(context);
        this.f19437do = 0;
    }

    public void addOnScrollChangedListener(OnScrollChangedListener onScrollChangedListener) {
        if (this.f19438if == null) {
            this.f19438if = new ArrayList();
        }
        if (this.f19438if.contains(onScrollChangedListener)) {
            return;
        }
        this.f19438if.add(onScrollChangedListener);
    }

    public int getScrollOffset() {
        return this.f19437do;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.f19437do = i2;
        List<OnScrollChangedListener> list = this.f19438if;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<OnScrollChangedListener> it = this.f19438if.iterator();
        while (it.hasNext()) {
            it.next().onScrollChanged(this, i, i2, i3, i4);
        }
    }

    public void removeOnScrollChangedListener(OnScrollChangedListener onScrollChangedListener) {
        List<OnScrollChangedListener> list = this.f19438if;
        if (list == null) {
            return;
        }
        list.remove(onScrollChangedListener);
    }

    public QMUIObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19437do = 0;
    }

    public QMUIObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19437do = 0;
    }
}

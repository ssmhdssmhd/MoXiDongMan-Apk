package com.qmuiteam.qmui.widget;

import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;

/* loaded from: classes2.dex */
public abstract class QMUIPagerAdapter extends PagerAdapter {

    /* renamed from: do, reason: not valid java name */
    private SparseArray<Object> f19439do = new SparseArray<>();

    public interface Action {
        boolean call(Object obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        m23763do(viewGroup, i, obj);
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void m23763do(ViewGroup viewGroup, int i, Object obj);

    /* renamed from: for, reason: not valid java name */
    public abstract Object m23764for(ViewGroup viewGroup, int i);

    /* renamed from: if, reason: not valid java name */
    public void m23765if(@NonNull Action action) {
        int size = this.f19439do.size();
        for (int i = 0; i < size && !action.call(this.f19439do.valueAt(i)); i++) {
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        Object objM23764for = this.f19439do.get(i);
        if (objM23764for == null) {
            objM23764for = m23764for(viewGroup, i);
            this.f19439do.put(i, objM23764for);
        }
        m23766new(viewGroup, objM23764for, i);
        return objM23764for;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void m23766new(ViewGroup viewGroup, Object obj, int i);
}

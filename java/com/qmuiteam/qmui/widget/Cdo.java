package com.qmuiteam.qmui.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pools;
import com.qmuiteam.qmui.R;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.qmuiteam.qmui.widget.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo<T, V extends View> {

    /* renamed from: do, reason: not valid java name */
    private Pools.Pool<V> f19820do;

    /* renamed from: new, reason: not valid java name */
    private ViewGroup f19823new;

    /* renamed from: if, reason: not valid java name */
    private List<T> f19822if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private List<V> f19821for = new ArrayList();

    public Cdo(ViewGroup viewGroup) {
        this.f19823new = viewGroup;
    }

    /* renamed from: goto, reason: not valid java name */
    private V m24061goto() {
        Pools.Pool<V> pool = this.f19820do;
        V vAcquire = pool != null ? pool.acquire() : null;
        return vAcquire == null ? (V) mo23832new(this.f19823new) : vAcquire;
    }

    /* renamed from: break, reason: not valid java name */
    public void m24062break(int i, T t) throws IllegalAccessException {
        if (i >= this.f19822if.size() || i < 0) {
            throw new IllegalAccessException("替换数据不存在");
        }
        this.f19822if.set(i, t);
    }

    /* renamed from: case, reason: not valid java name */
    public T m24063case(int i) {
        List<T> list = this.f19822if;
        if (list != null && i >= 0 && i < list.size()) {
            return this.f19822if.get(i);
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m24064catch() {
        int size = this.f19822if.size();
        int size2 = this.f19821for.size();
        if (size2 > size) {
            m24069try(size2 - size);
        } else if (size2 < size) {
            for (int i = 0; i < size - size2; i++) {
                View viewM24061goto = m24061goto();
                this.f19823new.addView(viewM24061goto);
                this.f19821for.add(viewM24061goto);
            }
        }
        for (int i2 = 0; i2 < size; i2++) {
            mo23831if(this.f19822if.get(i2), this.f19821for.get(i2), i2);
        }
        this.f19823new.invalidate();
        this.f19823new.requestLayout();
    }

    /* renamed from: do, reason: not valid java name */
    public Cdo<T, V> m24065do(T t) {
        this.f19822if.add(t);
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public int m24066else() {
        List<T> list = this.f19822if;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: for, reason: not valid java name */
    public void m24067for() {
        this.f19822if.clear();
        m24069try(this.f19821for.size());
    }

    /* renamed from: if */
    public abstract void mo23831if(T t, V v, int i);

    /* renamed from: new */
    public abstract V mo23832new(ViewGroup viewGroup);

    /* renamed from: this, reason: not valid java name */
    public List<V> m24068this() {
        return this.f19821for;
    }

    /* renamed from: try, reason: not valid java name */
    public void m24069try(int i) {
        int size = this.f19821for.size();
        while (size > 0 && i > 0) {
            V vRemove = this.f19821for.remove(size - 1);
            if (this.f19820do == null) {
                this.f19820do = new Pools.SimplePool(12);
            }
            Object tag = vRemove.getTag(R.id.qmui_view_can_not_cache_tag);
            if (tag == null || !((Boolean) tag).booleanValue()) {
                try {
                    this.f19820do.release(vRemove);
                } catch (Exception unused) {
                }
            }
            this.f19823new.removeView(vRemove);
            size--;
            i--;
        }
    }
}

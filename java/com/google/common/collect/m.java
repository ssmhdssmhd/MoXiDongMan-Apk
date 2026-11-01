package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.k2;
import java.io.Serializable;
import java.util.List;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class m<T> extends k2<T> implements Serializable {
    private static final long serialVersionUID = 0;
    public final x0<T, Integer> rankMap;

    public m(List<T> list) {
        this(Maps.d(list));
    }

    /* renamed from: do, reason: not valid java name */
    private int m16031do(T t) {
        Integer num = this.rankMap.get(t);
        if (num != null) {
            return num.intValue();
        }
        throw new k2.Cfor(t);
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(T t, T t2) {
        return m16031do(t) - m16031do(t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@b51 Object obj) {
        if (obj instanceof m) {
            return this.rankMap.equals(((m) obj).rankMap);
        }
        return false;
    }

    public int hashCode() {
        return this.rankMap.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.rankMap.keySet() + ")";
    }

    public m(x0<T, Integer> x0Var) {
        this.rankMap = x0Var;
    }
}

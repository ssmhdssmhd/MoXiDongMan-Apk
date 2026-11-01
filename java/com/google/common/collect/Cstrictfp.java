package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.Comparator;

@ki0(serializable = true)
/* renamed from: com.google.common.collect.strictfp, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cstrictfp<T> extends k2<T> implements Serializable {
    private static final long serialVersionUID = 0;
    public final Comparator<T> comparator;

    public Cstrictfp(Comparator<T> comparator) {
        this.comparator = (Comparator) af1.m205continue(comparator);
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(T t, T t2) {
        return this.comparator.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cstrictfp) {
            return this.comparator.equals(((Cstrictfp) obj).comparator);
        }
        return false;
    }

    public int hashCode() {
        return this.comparator.hashCode();
    }

    public String toString() {
        return this.comparator.toString();
    }
}

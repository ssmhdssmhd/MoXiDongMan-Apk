package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.Iterator;

@ki0(serializable = true)
/* renamed from: com.google.common.base.import, reason: invalid class name */
/* loaded from: classes.dex */
final class Cimport<T> extends Cthis<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    public final Cthis<? super T> elementEquivalence;

    public Cimport(Cthis<? super T> cthis) {
        this.elementEquivalence = (Cthis) af1.m205continue(cthis);
    }

    public boolean equals(@b51 Object obj) {
        if (obj instanceof Cimport) {
            return this.elementEquivalence.equals(((Cimport) obj).elementEquivalence);
        }
        return false;
    }

    public int hashCode() {
        return this.elementEquivalence.hashCode() ^ 1185147655;
    }

    public String toString() {
        return this.elementEquivalence + ".pairwise()";
    }

    @Override // com.google.common.base.Cthis
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.elementEquivalence.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    @Override // com.google.common.base.Cthis
    public int doHash(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int iHash = 78721;
        while (it.hasNext()) {
            iHash = (iHash * 24943) + this.elementEquivalence.hash(it.next());
        }
        return iHash;
    }
}

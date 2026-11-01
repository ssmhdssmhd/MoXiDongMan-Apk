package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.o8;
import java.util.Comparator;
import java.util.Iterator;

@ki0
@o8
/* renamed from: com.google.common.collect.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cvolatile {
    private Cvolatile() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m16460do(Iterable<? extends T> iterable, Comparator<T> comparator) {
        af1.m205continue(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T, S extends T> Comparator<Iterable<S>> m16461for(Comparator<T> comparator) {
        return new t1((Comparator) af1.m205continue(comparator));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> boolean m16462if(Iterable<? extends T> iterable, Comparator<T> comparator) {
        af1.m205continue(comparator);
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (comparator.compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }
}

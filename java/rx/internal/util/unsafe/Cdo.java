package rx.internal.util.unsafe;

import android.support.v4.ht0;
import android.support.v4.j32;
import java.util.Iterator;

@j32
/* renamed from: rx.internal.util.unsafe.do, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cdo<E> extends Cif<E> {
    public long a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;

    /* renamed from: implements, reason: not valid java name */
    public long f35898implements;

    /* renamed from: instanceof, reason: not valid java name */
    public long f35899instanceof;
    public long j;
    public long k;
    public long l;
    public long m;

    /* renamed from: synchronized, reason: not valid java name */
    public long f35900synchronized;

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return m38983try() == m39002if();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0VarM38983try = m38983try();
        ht0<E> ht0VarM39002if = m39002if();
        int i = 0;
        while (ht0VarM38983try != ht0VarM39002if && i < Integer.MAX_VALUE) {
            do {
                ht0VarLvNext = ht0VarM38983try.lvNext();
            } while (ht0VarLvNext == null);
            i++;
            ht0VarM38983try = ht0VarLvNext;
        }
        return i;
    }
}

package rx.internal.util.unsafe;

import android.support.v4.j32;
import android.support.v4.ve1;
import java.util.Iterator;

@j32
/* renamed from: rx.internal.util.unsafe.case, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Ccase<E> extends Celse<E> {

    /* renamed from: native, reason: not valid java name */
    public static final int f35872native;

    /* renamed from: public, reason: not valid java name */
    public static final int f35873public = 32;

    /* renamed from: return, reason: not valid java name */
    private static final long f35874return;

    /* renamed from: static, reason: not valid java name */
    private static final int f35875static;

    /* renamed from: import, reason: not valid java name */
    public final E[] f35876import;

    /* renamed from: while, reason: not valid java name */
    public final long f35877while;

    static {
        int iIntValue = Integer.getInteger("sparse.shift", 0).intValue();
        f35872native = iIntValue;
        int iArrayIndexScale = Cimplements.f35953do.arrayIndexScale(Object[].class);
        if (4 == iArrayIndexScale) {
            f35875static = iIntValue + 2;
        } else {
            if (8 != iArrayIndexScale) {
                throw new IllegalStateException("Unknown pointer size");
            }
            f35875static = iIntValue + 3;
        }
        f35874return = r2.arrayBaseOffset(Object[].class) + (32 << (f35875static - iIntValue));
    }

    public Ccase(int i) {
        int iM8842if = ve1.m8842if(i);
        this.f35877while = iM8842if - 1;
        this.f35876import = (E[]) new Object[(iM8842if << f35872native) + 64];
    }

    /* renamed from: break, reason: not valid java name */
    public final void m38950break(E[] eArr, long j, E e) {
        Cimplements.f35953do.putObject(eArr, j, e);
    }

    /* renamed from: case, reason: not valid java name */
    public final E m38951case(E[] eArr, long j) {
        return (E) Cimplements.f35953do.getObjectVolatile(eArr, j);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final long m38952do(long j) {
        return m38956if(j, this.f35877while);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m38953else(long j, E e) {
        m38955goto(this.f35876import, j, e);
    }

    /* renamed from: for, reason: not valid java name */
    public final E m38954for(long j) {
        return m38957new(this.f35876import, j);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m38955goto(E[] eArr, long j, E e) {
        Cimplements.f35953do.putOrderedObject(eArr, j, e);
    }

    /* renamed from: if, reason: not valid java name */
    public final long m38956if(long j, long j2) {
        return f35874return + ((j & j2) << f35875static);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: new, reason: not valid java name */
    public final E m38957new(E[] eArr, long j) {
        return (E) Cimplements.f35953do.getObject(eArr, j);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m38958this(long j, E e) {
        m38950break(this.f35876import, j, e);
    }

    /* renamed from: try, reason: not valid java name */
    public final E m38959try(long j) {
        return m38951case(this.f35876import, j);
    }
}

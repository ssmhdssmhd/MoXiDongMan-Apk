package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.throw, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cthrow<E> extends Cimport<E> {
    public static final long q = Cimplements.m38985do(Cthrow.class, "consumerIndex");
    private volatile long p;

    public Cthrow(int i) {
        super(i);
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m38998const(long j, long j2) {
        return Cimplements.f35953do.compareAndSwapLong(this, q, j, j2);
    }

    /* renamed from: final, reason: not valid java name */
    public final long m38999final() {
        return this.p;
    }
}

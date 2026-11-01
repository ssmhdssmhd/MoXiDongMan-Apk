package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.break, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cbreak<E> extends Cclass<E> {
    private static final long t = Cimplements.m38985do(Cbreak.class, "consumerIndex");
    private volatile long s;

    public Cbreak(int i) {
        super(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public final boolean m38948throw(long j, long j2) {
        return Cimplements.f35953do.compareAndSwapLong(this, t, j, j2);
    }

    /* renamed from: while, reason: not valid java name */
    public final long m38949while() {
        return this.s;
    }
}

package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.const, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cconst<E> extends Ccatch<E> {
    private static final long c = Cimplements.m38985do(Cconst.class, "producerIndex");
    private volatile long b;

    public Cconst(int i) {
        super(i);
    }

    /* renamed from: final, reason: not valid java name */
    public final boolean m38960final(long j, long j2) {
        return Cimplements.f35953do.compareAndSwapLong(this, c, j, j2);
    }

    /* renamed from: super, reason: not valid java name */
    public final long m38961super() {
        return this.b;
    }
}

package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.return, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Creturn<E> extends Cwhile<E> {

    /* renamed from: synchronized, reason: not valid java name */
    public static final long f35988synchronized = Cimplements.m38985do(Creturn.class, "producerIndex");

    /* renamed from: instanceof, reason: not valid java name */
    private volatile long f35989instanceof;

    public Creturn(int i) {
        super(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public final long m38990catch() {
        return this.f35989instanceof;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m38991class(long j) {
        Cimplements.f35953do.putOrderedLong(this, f35988synchronized, j);
    }
}

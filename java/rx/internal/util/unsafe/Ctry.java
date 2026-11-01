package rx.internal.util.unsafe;

import android.support.v4.ht0;
import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.try, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Ctry<E> extends Cfor<E> {

    /* renamed from: import, reason: not valid java name */
    public static final long f35995import = Cimplements.m38985do(Ctry.class, "producerNode");

    /* renamed from: while, reason: not valid java name */
    public ht0<E> f35996while;

    /* renamed from: do, reason: not valid java name */
    public final ht0<E> m39000do() {
        return this.f35996while;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m39001for(ht0<E> ht0Var) {
        this.f35996while = ht0Var;
    }

    /* renamed from: if, reason: not valid java name */
    public final ht0<E> m39002if() {
        return (ht0) Cimplements.f35953do.getObjectVolatile(this, f35995import);
    }
}

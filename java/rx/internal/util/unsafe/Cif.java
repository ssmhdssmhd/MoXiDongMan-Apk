package rx.internal.util.unsafe;

import android.support.v4.ht0;
import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.if, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cif<E> extends Cnew<E> {

    /* renamed from: transient, reason: not valid java name */
    public static final long f35951transient = Cimplements.m38985do(Cif.class, "consumerNode");

    /* renamed from: protected, reason: not valid java name */
    public ht0<E> f35952protected;

    /* renamed from: case, reason: not valid java name */
    public final void m38981case(ht0<E> ht0Var) {
        this.f35952protected = ht0Var;
    }

    /* renamed from: new, reason: not valid java name */
    public final ht0<E> m38982new() {
        return this.f35952protected;
    }

    /* renamed from: try, reason: not valid java name */
    public final ht0<E> m38983try() {
        return (ht0) Cimplements.f35953do.getObjectVolatile(this, f35951transient);
    }
}

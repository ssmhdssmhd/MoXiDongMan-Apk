package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.static, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cstatic<E> extends Cpublic<E> {
    private volatile long G;

    public Cstatic(int i) {
        super(i);
    }

    /* renamed from: super, reason: not valid java name */
    public final long m38992super() {
        return this.G;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m38993throw(long j) {
        this.G = j;
    }
}

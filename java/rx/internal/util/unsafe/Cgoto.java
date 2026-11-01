package rx.internal.util.unsafe;

import android.support.v4.j32;

@j32
/* renamed from: rx.internal.util.unsafe.goto, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cgoto<E> extends Ccase<E> {

    /* renamed from: default, reason: not valid java name */
    private static final int f35948default;

    /* renamed from: throws, reason: not valid java name */
    private static final long f35949throws;

    /* renamed from: switch, reason: not valid java name */
    public final long[] f35950switch;

    static {
        if (8 != Cimplements.f35953do.arrayIndexScale(long[].class)) {
            throw new IllegalStateException("Unexpected long[] element size");
        }
        f35948default = Ccase.f35872native + 3;
        f35949throws = r1.arrayBaseOffset(long[].class) + (32 << (r3 - r2));
    }

    public Cgoto(int i) {
        super(i);
        int i2 = (int) (this.f35877while + 1);
        this.f35950switch = new long[(i2 << Ccase.f35872native) + 64];
        for (long j = 0; j < i2; j++) {
            m38980const(this.f35950switch, m38978catch(j), j);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final long m38978catch(long j) {
        return f35949throws + ((j & this.f35877while) << f35948default);
    }

    /* renamed from: class, reason: not valid java name */
    public final long m38979class(long[] jArr, long j) {
        return Cimplements.f35953do.getLongVolatile(jArr, j);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m38980const(long[] jArr, long j, long j2) {
        Cimplements.f35953do.putOrderedLong(jArr, j, j2);
    }
}

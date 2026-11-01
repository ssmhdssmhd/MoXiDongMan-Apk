package rx.internal.util.unsafe;

import android.support.v4.j32;
import java.util.Objects;

@j32
/* renamed from: rx.internal.util.unsafe.switch, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cswitch<E> extends Cpackage<E> {
    public Cswitch(int i) {
        super(i);
    }

    /* renamed from: catch, reason: not valid java name */
    private long m38994catch() {
        return Cimplements.f35953do.getLongVolatile(this, Cdefault.t);
    }

    /* renamed from: class, reason: not valid java name */
    private long m38995class() {
        return Cimplements.f35953do.getLongVolatile(this, Cprivate.c);
    }

    /* renamed from: const, reason: not valid java name */
    private void m38996const(long j) {
        Cimplements.f35953do.putOrderedLong(this, Cdefault.t, j);
    }

    /* renamed from: final, reason: not valid java name */
    private void m38997final(long j) {
        Cimplements.f35953do.putOrderedLong(this, Cprivate.c, j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public boolean isEmpty() {
        return m38995class() == m38994catch();
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "null elements not allowed");
        E[] eArr = this.f35876import;
        long j = this.a;
        long jM38952do = m38952do(j);
        if (m38951case(eArr, jM38952do) != null) {
            return false;
        }
        m38955goto(eArr, jM38952do, e);
        m38997final(j + 1);
        return true;
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E peek() {
        return m38959try(m38952do(this.s));
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long j = this.s;
        long jM38952do = m38952do(j);
        E[] eArr = this.f35876import;
        E eM38951case = m38951case(eArr, jM38952do);
        if (eM38951case == null) {
            return null;
        }
        m38955goto(eArr, jM38952do, null);
        m38996const(j + 1);
        return eM38951case;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public int size() {
        long jM38994catch = m38994catch();
        while (true) {
            long jM38995class = m38995class();
            long jM38994catch2 = m38994catch();
            if (jM38994catch == jM38994catch2) {
                return (int) (jM38995class - jM38994catch2);
            }
            jM38994catch = jM38994catch2;
        }
    }
}

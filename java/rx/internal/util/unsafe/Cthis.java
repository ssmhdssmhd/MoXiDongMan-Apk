package rx.internal.util.unsafe;

import android.support.v4.j32;
import java.util.Objects;

@j32
/* renamed from: rx.internal.util.unsafe.this, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cthis<E> extends Cbreak<E> {
    public long A;
    public long B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public long I;
    public long u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    public Cthis(int i) {
        super(Math.max(2, i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public boolean isEmpty() {
        return m38949while() == m38961super();
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        long j = this.f35877while + 1;
        long[] jArr = this.f35950switch;
        long jM38949while = Long.MAX_VALUE;
        while (true) {
            long jM38961super = m38961super();
            long jM38978catch = m38978catch(jM38961super);
            long jM38979class = m38979class(jArr, jM38978catch) - jM38961super;
            if (jM38979class == 0) {
                long j2 = jM38961super + 1;
                if (m38960final(jM38961super, j2)) {
                    m38958this(m38952do(jM38961super), e);
                    m38980const(jArr, jM38978catch, j2);
                    return true;
                }
            } else if (jM38979class < 0) {
                long j3 = jM38961super - j;
                if (j3 <= jM38949while) {
                    jM38949while = m38949while();
                    if (j3 <= jM38949while) {
                        return false;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E peek() {
        long jM38949while;
        E eM38954for;
        do {
            jM38949while = m38949while();
            eM38954for = m38954for(m38952do(jM38949while));
            if (eM38954for != null) {
                break;
            }
        } while (jM38949while != m38961super());
        return eM38954for;
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long[] jArr = this.f35950switch;
        long jM38961super = -1;
        while (true) {
            long jM38949while = m38949while();
            long jM38978catch = m38978catch(jM38949while);
            long j = jM38949while + 1;
            long jM38979class = m38979class(jArr, jM38978catch) - j;
            if (jM38979class == 0) {
                if (m38948throw(jM38949while, j)) {
                    long jM38952do = m38952do(jM38949while);
                    E eM38954for = m38954for(jM38952do);
                    m38958this(jM38952do, null);
                    m38980const(jArr, jM38978catch, jM38949while + this.f35877while + 1);
                    return eM38954for;
                }
            } else if (jM38979class < 0 && jM38949while >= jM38961super) {
                jM38961super = m38961super();
                if (jM38949while == jM38961super) {
                    return null;
                }
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public int size() {
        long jM38949while = m38949while();
        while (true) {
            long jM38961super = m38961super();
            long jM38949while2 = m38949while();
            if (jM38949while == jM38949while2) {
                return (int) (jM38961super - jM38949while2);
            }
            jM38949while = jM38949while2;
        }
    }
}

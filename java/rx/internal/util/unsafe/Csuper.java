package rx.internal.util.unsafe;

import android.support.v4.j32;
import java.util.Objects;

@j32
/* renamed from: rx.internal.util.unsafe.super, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Csuper<E> extends Cnative<E> {
    public Csuper(int i) {
        super(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public boolean isEmpty() {
        return m38999final() == m38990catch();
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        E[] eArr = this.f35876import;
        long j = this.f35877while;
        long jM38990catch = m38990catch();
        long jM38952do = m38952do(jM38990catch);
        if (m38951case(eArr, jM38952do) != null) {
            if (jM38990catch - m38999final() > j) {
                return false;
            }
            while (m38951case(eArr, jM38952do) != null) {
            }
        }
        m38950break(eArr, jM38952do, e);
        m38991class(jM38990catch + 1);
        return true;
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E peek() {
        E eM38959try;
        long jM38992super = m38992super();
        do {
            long jM38999final = m38999final();
            if (jM38999final >= jM38992super) {
                long jM38990catch = m38990catch();
                if (jM38999final >= jM38990catch) {
                    return null;
                }
                m38993throw(jM38990catch);
            }
            eM38959try = m38959try(m38952do(jM38999final));
        } while (eM38959try == null);
        return eM38959try;
    }

    @Override // java.util.Queue, rx.internal.util.unsafe.MessagePassingQueue
    public E poll() {
        long jM38999final;
        long jM38992super = m38992super();
        do {
            jM38999final = m38999final();
            if (jM38999final >= jM38992super) {
                long jM38990catch = m38990catch();
                if (jM38999final >= jM38990catch) {
                    return null;
                }
                m38993throw(jM38990catch);
            }
        } while (!m38998const(jM38999final, 1 + jM38999final));
        long jM38952do = m38952do(jM38999final);
        E[] eArr = this.f35876import;
        E eM38957new = m38957new(eArr, jM38952do);
        m38955goto(eArr, jM38952do, null);
        return eM38957new;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, rx.internal.util.unsafe.MessagePassingQueue
    public int size() {
        long jM38999final = m38999final();
        while (true) {
            long jM38990catch = m38990catch();
            long jM38999final2 = m38999final();
            if (jM38999final == jM38999final2) {
                return (int) (jM38990catch - jM38999final2);
            }
            jM38999final = jM38999final2;
        }
    }
}

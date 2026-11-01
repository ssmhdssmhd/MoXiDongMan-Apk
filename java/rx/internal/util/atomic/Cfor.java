package rx.internal.util.atomic;

import android.support.v4.ht0;
import java.util.Objects;

/* renamed from: rx.internal.util.atomic.for, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfor<E> extends Cif<E> {
    public Cfor() {
        ht0<E> ht0Var = new ht0<>();
        m38875try(ht0Var);
        m38871else(ht0Var);
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "null elements not allowed");
        ht0<E> ht0Var = new ht0<>(e);
        m38871else(ht0Var).soNext(ht0Var);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0VarM38870do = m38870do();
        ht0<E> ht0VarLvNext2 = ht0VarM38870do.lvNext();
        if (ht0VarLvNext2 != null) {
            return ht0VarLvNext2.lpValue();
        }
        if (ht0VarM38870do == m38874new()) {
            return null;
        }
        do {
            ht0VarLvNext = ht0VarM38870do.lvNext();
        } while (ht0VarLvNext == null);
        return ht0VarLvNext.lpValue();
    }

    @Override // java.util.Queue
    public E poll() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0VarM38870do = m38870do();
        ht0<E> ht0VarLvNext2 = ht0VarM38870do.lvNext();
        if (ht0VarLvNext2 != null) {
            E andNullValue = ht0VarLvNext2.getAndNullValue();
            m38875try(ht0VarLvNext2);
            return andNullValue;
        }
        if (ht0VarM38870do == m38874new()) {
            return null;
        }
        do {
            ht0VarLvNext = ht0VarM38870do.lvNext();
        } while (ht0VarLvNext == null);
        E andNullValue2 = ht0VarLvNext.getAndNullValue();
        m38875try(ht0VarLvNext);
        return andNullValue2;
    }
}

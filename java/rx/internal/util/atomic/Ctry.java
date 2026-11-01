package rx.internal.util.atomic;

import android.support.v4.ht0;
import java.util.Objects;

/* renamed from: rx.internal.util.atomic.try, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ctry<E> extends Cif<E> {
    public Ctry() {
        ht0<E> ht0Var = new ht0<>();
        m38869case(ht0Var);
        m38875try(ht0Var);
        ht0Var.soNext(null);
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "null elements not allowed");
        ht0<E> ht0Var = new ht0<>(e);
        m38873if().soNext(ht0Var);
        m38869case(ht0Var);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        ht0<E> ht0VarLvNext = m38870do().lvNext();
        if (ht0VarLvNext != null) {
            return ht0VarLvNext.lpValue();
        }
        return null;
    }

    @Override // java.util.Queue
    public E poll() {
        ht0<E> ht0VarLvNext = m38870do().lvNext();
        if (ht0VarLvNext == null) {
            return null;
        }
        E andNullValue = ht0VarLvNext.getAndNullValue();
        m38875try(ht0VarLvNext);
        return andNullValue;
    }
}

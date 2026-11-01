package rx.internal.util.unsafe;

import android.support.v4.ht0;
import android.support.v4.j32;
import java.util.Objects;

@j32
/* renamed from: rx.internal.util.unsafe.final, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfinal<E> extends Cdo<E> {
    public Cfinal() {
        ht0<E> ht0Var = new ht0<>();
        this.f35952protected = ht0Var;
        m38977else(ht0Var);
    }

    /* renamed from: else, reason: not valid java name */
    public ht0<E> m38977else(ht0<E> ht0Var) {
        ht0<E> ht0Var2;
        do {
            ht0Var2 = this.f35996while;
        } while (!Cimplements.f35953do.compareAndSwapObject(this, Ctry.f35995import, ht0Var2, ht0Var));
        return ht0Var2;
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "null elements not allowed");
        ht0<E> ht0Var = new ht0<>(e);
        m38977else(ht0Var).soNext(ht0Var);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0Var = this.f35952protected;
        ht0<E> ht0VarLvNext2 = ht0Var.lvNext();
        if (ht0VarLvNext2 != null) {
            return ht0VarLvNext2.lpValue();
        }
        if (ht0Var == m39002if()) {
            return null;
        }
        do {
            ht0VarLvNext = ht0Var.lvNext();
        } while (ht0VarLvNext == null);
        return ht0VarLvNext.lpValue();
    }

    @Override // java.util.Queue
    public E poll() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0VarM38982new = m38982new();
        ht0<E> ht0VarLvNext2 = ht0VarM38982new.lvNext();
        if (ht0VarLvNext2 != null) {
            E andNullValue = ht0VarLvNext2.getAndNullValue();
            m38981case(ht0VarLvNext2);
            return andNullValue;
        }
        if (ht0VarM38982new == m39002if()) {
            return null;
        }
        do {
            ht0VarLvNext = ht0VarM38982new.lvNext();
        } while (ht0VarLvNext == null);
        E andNullValue2 = ht0VarLvNext.getAndNullValue();
        this.f35952protected = ht0VarLvNext;
        return andNullValue2;
    }
}

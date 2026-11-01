package rx.internal.util.unsafe;

import android.support.v4.ht0;
import java.util.Objects;

/* renamed from: rx.internal.util.unsafe.abstract, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cabstract<E> extends Cdo<E> {
    public Cabstract() {
        m39001for(new ht0<>());
        m38981case(this.f35996while);
        this.f35952protected.soNext(null);
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "null elements not allowed");
        ht0<E> ht0Var = new ht0<>(e);
        this.f35996while.soNext(ht0Var);
        this.f35996while = ht0Var;
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        ht0<E> ht0VarLvNext = this.f35952protected.lvNext();
        if (ht0VarLvNext != null) {
            return ht0VarLvNext.lpValue();
        }
        return null;
    }

    @Override // java.util.Queue
    public E poll() {
        ht0<E> ht0VarLvNext = this.f35952protected.lvNext();
        if (ht0VarLvNext == null) {
            return null;
        }
        E andNullValue = ht0VarLvNext.getAndNullValue();
        this.f35952protected = ht0VarLvNext;
        return andNullValue;
    }
}

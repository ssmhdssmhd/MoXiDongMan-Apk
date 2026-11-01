package android.support.v4;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ht0<E> extends AtomicReference<ht0<E>> {
    private static final long serialVersionUID = 2404266111789071508L;
    private E value;

    public ht0() {
    }

    public E getAndNullValue() {
        E eLpValue = lpValue();
        spValue(null);
        return eLpValue;
    }

    public E lpValue() {
        return this.value;
    }

    public ht0<E> lvNext() {
        return get();
    }

    public void soNext(ht0<E> ht0Var) {
        lazySet(ht0Var);
    }

    public void spValue(E e) {
        this.value = e;
    }

    public ht0(E e) {
        spValue(e);
    }
}

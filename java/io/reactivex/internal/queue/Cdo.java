package io.reactivex.internal.queue;

import android.support.v4.a51;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.queue.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T> implements SimplePlainQueue<T> {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<C0341do<T>> f27275do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final AtomicReference<C0341do<T>> f27276if = new AtomicReference<>();

    /* renamed from: io.reactivex.internal.queue.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0341do<E> extends AtomicReference<C0341do<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E value;

        public C0341do() {
        }

        public E getAndNullValue() {
            E eLpValue = lpValue();
            spValue(null);
            return eLpValue;
        }

        public E lpValue() {
            return this.value;
        }

        public C0341do<E> lvNext() {
            return get();
        }

        public void soNext(C0341do<E> c0341do) {
            lazySet(c0341do);
        }

        public void spValue(E e) {
            this.value = e;
        }

        public C0341do(E e) {
            spValue(e);
        }
    }

    public Cdo() {
        C0341do<T> c0341do = new C0341do<>();
        m29663new(c0341do);
        m29664try(c0341do);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public C0341do<T> m29660do() {
        return this.f27276if.get();
    }

    /* renamed from: for, reason: not valid java name */
    public C0341do<T> m29661for() {
        return this.f27275do.get();
    }

    /* renamed from: if, reason: not valid java name */
    public C0341do<T> m29662if() {
        return this.f27276if.get();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return m29662if() == m29661for();
    }

    /* renamed from: new, reason: not valid java name */
    public void m29663new(C0341do<T> c0341do) {
        this.f27276if.lazySet(c0341do);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t) {
        Objects.requireNonNull(t, "Null is not a valid element");
        C0341do<T> c0341do = new C0341do<>(t);
        m29664try(c0341do).soNext(c0341do);
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @a51
    public T poll() {
        C0341do<T> c0341doLvNext;
        C0341do<T> c0341doM29660do = m29660do();
        C0341do<T> c0341doLvNext2 = c0341doM29660do.lvNext();
        if (c0341doLvNext2 != null) {
            T andNullValue = c0341doLvNext2.getAndNullValue();
            m29663new(c0341doLvNext2);
            return andNullValue;
        }
        if (c0341doM29660do == m29661for()) {
            return null;
        }
        do {
            c0341doLvNext = c0341doM29660do.lvNext();
        } while (c0341doLvNext == null);
        T andNullValue2 = c0341doLvNext.getAndNullValue();
        m29663new(c0341doLvNext);
        return andNullValue2;
    }

    /* renamed from: try, reason: not valid java name */
    public C0341do<T> m29664try(C0341do<T> c0341do) {
        return this.f27275do.getAndSet(c0341do);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t, T t2) {
        offer(t);
        offer(t2);
        return true;
    }
}

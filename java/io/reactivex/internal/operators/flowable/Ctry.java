package io.reactivex.internal.operators.flowable;

import android.support.v4.ja;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.t41;
import io.reactivex.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;

/* renamed from: io.reactivex.internal.operators.flowable.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends T> f25954do;

    /* renamed from: io.reactivex.internal.operators.flowable.try$do, reason: invalid class name */
    public static final class Cdo<T> implements Iterator<T> {

        /* renamed from: case, reason: not valid java name */
        private Throwable f25955case;

        /* renamed from: do, reason: not valid java name */
        private final Cif<T> f25956do;

        /* renamed from: else, reason: not valid java name */
        private boolean f25957else;

        /* renamed from: for, reason: not valid java name */
        private T f25958for;

        /* renamed from: if, reason: not valid java name */
        private final Publisher<? extends T> f25959if;

        /* renamed from: new, reason: not valid java name */
        private boolean f25960new = true;

        /* renamed from: try, reason: not valid java name */
        private boolean f25961try = true;

        public Cdo(Publisher<? extends T> publisher, Cif<T> cif) {
            this.f25959if = publisher;
            this.f25956do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m29515do() {
            try {
                if (!this.f25957else) {
                    this.f25957else = true;
                    this.f25956do.m29518try();
                    Cfor.g2(this.f25959if).T2().m5(this.f25956do);
                }
                t41<T> t41VarM29516case = this.f25956do.m29516case();
                if (t41VarM29516case.m7725goto()) {
                    this.f25961try = false;
                    this.f25958for = t41VarM29516case.m7727try();
                    return true;
                }
                this.f25960new = false;
                if (t41VarM29516case.m7723case()) {
                    return false;
                }
                if (!t41VarM29516case.m7724else()) {
                    throw new IllegalStateException("Should not reach here");
                }
                Throwable thM7726new = t41VarM29516case.m7726new();
                this.f25955case = thM7726new;
                throw Ccase.m29712case(thM7726new);
            } catch (InterruptedException e) {
                this.f25956do.dispose();
                this.f25955case = e;
                throw Ccase.m29712case(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f25955case;
            if (th != null) {
                throw Ccase.m29712case(th);
            }
            if (this.f25960new) {
                return !this.f25961try || m29515do();
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f25955case;
            if (th != null) {
                throw Ccase.m29712case(th);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f25961try = true;
            return this.f25958for;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.try$if, reason: invalid class name */
    public static final class Cif<T> extends p10<t41<T>> {

        /* renamed from: if, reason: not valid java name */
        private final BlockingQueue<t41<T>> f25963if = new ArrayBlockingQueue(1);

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f25962for = new AtomicInteger();

        /* renamed from: case, reason: not valid java name */
        public t41<T> m29516case() throws InterruptedException {
            m29518try();
            ja.m3755if();
            return this.f25963if.take();
        }

        @Override // org.reactivestreams.Subscriber
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(t41<T> t41Var) {
            if (this.f25962for.getAndSet(0) == 1 || !t41Var.m7725goto()) {
                while (!this.f25963if.offer(t41Var)) {
                    t41<T> t41VarPoll = this.f25963if.poll();
                    if (t41VarPoll != null && !t41VarPoll.m7725goto()) {
                        t41Var = t41VarPoll;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            jp1.l(th);
        }

        /* renamed from: try, reason: not valid java name */
        public void m29518try() {
            this.f25962for.set(1);
        }
    }

    public Ctry(Publisher<? extends T> publisher) {
        this.f25954do = publisher;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new Cdo(this.f25954do, new Cif());
    }
}

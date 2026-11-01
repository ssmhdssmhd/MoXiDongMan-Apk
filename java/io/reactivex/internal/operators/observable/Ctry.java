package io.reactivex.internal.operators.observable;

import android.support.v4.ja;
import android.support.v4.jp1;
import android.support.v4.n10;
import android.support.v4.t41;
import io.reactivex.ObservableSource;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.observable.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26946do;

    /* renamed from: io.reactivex.internal.operators.observable.try$do, reason: invalid class name */
    public static final class Cdo<T> implements Iterator<T> {

        /* renamed from: case, reason: not valid java name */
        private Throwable f26947case;

        /* renamed from: do, reason: not valid java name */
        private final Cif<T> f26948do;

        /* renamed from: else, reason: not valid java name */
        private boolean f26949else;

        /* renamed from: for, reason: not valid java name */
        private T f26950for;

        /* renamed from: if, reason: not valid java name */
        private final ObservableSource<T> f26951if;

        /* renamed from: new, reason: not valid java name */
        private boolean f26952new = true;

        /* renamed from: try, reason: not valid java name */
        private boolean f26953try = true;

        public Cdo(ObservableSource<T> observableSource, Cif<T> cif) {
            this.f26951if = observableSource;
            this.f26948do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m29649do() {
            if (!this.f26949else) {
                this.f26949else = true;
                this.f26948do.m29650for();
                new d0(this.f26951if).subscribe(this.f26948do);
            }
            try {
                t41<T> t41VarM29652new = this.f26948do.m29652new();
                if (t41VarM29652new.m7725goto()) {
                    this.f26953try = false;
                    this.f26950for = t41VarM29652new.m7727try();
                    return true;
                }
                this.f26952new = false;
                if (t41VarM29652new.m7723case()) {
                    return false;
                }
                Throwable thM7726new = t41VarM29652new.m7726new();
                this.f26947case = thM7726new;
                throw Ccase.m29712case(thM7726new);
            } catch (InterruptedException e) {
                this.f26948do.dispose();
                this.f26947case = e;
                throw Ccase.m29712case(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f26947case;
            if (th != null) {
                throw Ccase.m29712case(th);
            }
            if (this.f26952new) {
                return !this.f26953try || m29649do();
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f26947case;
            if (th != null) {
                throw Ccase.m29712case(th);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f26953try = true;
            return this.f26950for;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.try$if, reason: invalid class name */
    public static final class Cif<T> extends n10<t41<T>> {

        /* renamed from: if, reason: not valid java name */
        private final BlockingQueue<t41<T>> f26955if = new ArrayBlockingQueue(1);

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f26954for = new AtomicInteger();

        /* renamed from: for, reason: not valid java name */
        public void m29650for() {
            this.f26954for.set(1);
        }

        @Override // io.reactivex.Observer
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(t41<T> t41Var) {
            if (this.f26954for.getAndSet(0) == 1 || !t41Var.m7725goto()) {
                while (!this.f26955if.offer(t41Var)) {
                    t41<T> t41VarPoll = this.f26955if.poll();
                    if (t41VarPoll != null && !t41VarPoll.m7725goto()) {
                        t41Var = t41VarPoll;
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public t41<T> m29652new() throws InterruptedException {
            m29650for();
            ja.m3755if();
            return this.f26955if.take();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            jp1.l(th);
        }
    }

    public Ctry(ObservableSource<T> observableSource) {
        this.f26946do = observableSource;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new Cdo(this.f26946do, new Cif());
    }
}

package io.reactivex.internal.operators.observable;

import android.support.v4.ja;
import android.support.v4.jp1;
import android.support.v4.n10;
import android.support.v4.t41;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26550do;

    /* renamed from: io.reactivex.internal.operators.observable.for$do, reason: invalid class name */
    public static final class Cdo<T> extends n10<t41<T>> implements Iterator<T> {

        /* renamed from: if, reason: not valid java name */
        public t41<T> f26552if;

        /* renamed from: for, reason: not valid java name */
        public final Semaphore f26551for = new Semaphore(0);

        /* renamed from: new, reason: not valid java name */
        public final AtomicReference<t41<T>> f26553new = new AtomicReference<>();

        @Override // java.util.Iterator
        public boolean hasNext() throws InterruptedException {
            t41<T> t41Var = this.f26552if;
            if (t41Var != null && t41Var.m7724else()) {
                throw Ccase.m29712case(this.f26552if.m7726new());
            }
            if (this.f26552if == null) {
                try {
                    ja.m3755if();
                    this.f26551for.acquire();
                    t41<T> andSet = this.f26553new.getAndSet(null);
                    this.f26552if = andSet;
                    if (andSet.m7724else()) {
                        throw Ccase.m29712case(andSet.m7726new());
                    }
                } catch (InterruptedException e) {
                    dispose();
                    this.f26552if = t41.m7722if(e);
                    throw Ccase.m29712case(e);
                }
            }
            return this.f26552if.m7725goto();
        }

        @Override // io.reactivex.Observer
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(t41<T> t41Var) {
            if (this.f26553new.getAndSet(t41Var) == null) {
                this.f26551for.release();
            }
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tM7727try = this.f26552if.m7727try();
            this.f26552if = null;
            return tM7727try;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            jp1.l(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public Cfor(ObservableSource<T> observableSource) {
        this.f26550do = observableSource;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo();
        Cnew.wrap(this.f26550do).materialize().subscribe(cdo);
        return cdo;
    }
}

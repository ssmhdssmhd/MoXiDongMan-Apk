package io.reactivex.internal.operators.flowable;

import android.support.v4.ja;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.t41;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;

/* renamed from: io.reactivex.internal.operators.flowable.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends T> f25646do;

    /* renamed from: io.reactivex.internal.operators.flowable.for$do, reason: invalid class name */
    public static final class Cdo<T> extends p10<t41<T>> implements Iterator<T> {

        /* renamed from: new, reason: not valid java name */
        public t41<T> f25649new;

        /* renamed from: if, reason: not valid java name */
        public final Semaphore f25648if = new Semaphore(0);

        /* renamed from: for, reason: not valid java name */
        public final AtomicReference<t41<T>> f25647for = new AtomicReference<>();

        @Override // java.util.Iterator
        public boolean hasNext() throws InterruptedException {
            t41<T> t41Var = this.f25649new;
            if (t41Var != null && t41Var.m7724else()) {
                throw Ccase.m29712case(this.f25649new.m7726new());
            }
            t41<T> t41Var2 = this.f25649new;
            if ((t41Var2 == null || t41Var2.m7725goto()) && this.f25649new == null) {
                try {
                    ja.m3755if();
                    this.f25648if.acquire();
                    t41<T> andSet = this.f25647for.getAndSet(null);
                    this.f25649new = andSet;
                    if (andSet.m7724else()) {
                        throw Ccase.m29712case(andSet.m7726new());
                    }
                } catch (InterruptedException e) {
                    dispose();
                    this.f25649new = t41.m7722if(e);
                    throw Ccase.m29712case(e);
                }
            }
            return this.f25649new.m7725goto();
        }

        @Override // org.reactivestreams.Subscriber
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(t41<T> t41Var) {
            if (this.f25647for.getAndSet(t41Var) == null) {
                this.f25648if.release();
            }
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext() || !this.f25649new.m7725goto()) {
                throw new NoSuchElementException();
            }
            T tM7727try = this.f25649new.m7727try();
            this.f25649new = null;
            return tM7727try;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            jp1.l(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public Cfor(Publisher<? extends T> publisher) {
        this.f25646do = publisher;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo();
        io.reactivex.Cfor.g2(this.f25646do).T2().m5(cdo);
        return cdo;
    }
}

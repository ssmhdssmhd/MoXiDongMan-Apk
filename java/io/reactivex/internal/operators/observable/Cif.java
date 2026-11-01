package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.ja;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: io.reactivex.internal.operators.observable.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T> f26609do;

    /* renamed from: if, reason: not valid java name */
    public final int f26610if;

    /* renamed from: io.reactivex.internal.operators.observable.if$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, Iterator<T>, Disposable {
        private static final long serialVersionUID = 6695226475494099826L;
        public final Condition condition;
        public volatile boolean done;
        public volatile Throwable error;
        public final Lock lock;
        public final e12<T> queue;

        public Cdo(int i) {
            this.queue = new e12<>(i);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.lock = reentrantLock;
            this.condition = reentrantLock.newCondition();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            signalConsumer();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z = this.done;
                boolean zIsEmpty = this.queue.isEmpty();
                if (z) {
                    Throwable th = this.error;
                    if (th != null) {
                        throw Ccase.m29712case(th);
                    }
                    if (zIsEmpty) {
                        return false;
                    }
                }
                if (!zIsEmpty) {
                    return true;
                }
                try {
                    ja.m3755if();
                    this.lock.lock();
                    while (!this.done && this.queue.isEmpty() && !isDisposed()) {
                        try {
                            this.condition.await();
                        } finally {
                        }
                    }
                    this.lock.unlock();
                } catch (InterruptedException e) {
                    io.reactivex.internal.disposables.Cdo.dispose(this);
                    signalConsumer();
                    throw Ccase.m29712case(e);
                }
            }
            Throwable th2 = this.error;
            if (th2 == null) {
                return false;
            }
            throw Ccase.m29712case(th2);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.queue.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            signalConsumer();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            signalConsumer();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.queue.offer(t);
            signalConsumer();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        public void signalConsumer() {
            this.lock.lock();
            try {
                this.condition.signalAll();
            } finally {
                this.lock.unlock();
            }
        }
    }

    public Cif(ObservableSource<? extends T> observableSource, int i) {
        this.f26609do = observableSource;
        this.f26610if = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo(this.f26610if);
        this.f26609do.subscribe(cdo);
        return cdo;
    }
}

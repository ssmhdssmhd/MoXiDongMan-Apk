package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.b12;
import android.support.v4.ja;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25689do;

    /* renamed from: if, reason: not valid java name */
    public final int f25690if;

    /* renamed from: io.reactivex.internal.operators.flowable.if$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Iterator<T>, Runnable, Disposable {
        private static final long serialVersionUID = 6695226475494099826L;
        public final long batchSize;
        public final Condition condition;
        public volatile boolean done;
        public volatile Throwable error;
        public final long limit;
        public final Lock lock;
        public long produced;
        public final b12<T> queue;

        public Cdo(int i) {
            this.queue = new b12<>(i);
            this.batchSize = i;
            this.limit = i - (i >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.lock = reentrantLock;
            this.condition = reentrantLock.newCondition();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
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
                ja.m3755if();
                this.lock.lock();
                while (!this.done && this.queue.isEmpty() && !isDisposed()) {
                    try {
                        try {
                            this.condition.await();
                        } catch (InterruptedException e) {
                            run();
                            throw Ccase.m29712case(e);
                        }
                    } finally {
                        this.lock.unlock();
                    }
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
            return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tPoll = this.queue.poll();
            long j = this.produced + 1;
            if (j == this.limit) {
                this.produced = 0L;
                get().request(j);
            } else {
                this.produced = j;
            }
            return tPoll;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            signalConsumer();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            signalConsumer();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.queue.offer(t)) {
                signalConsumer();
            } else {
                io.reactivex.internal.subscriptions.Cfor.cancel(this);
                onError(new a01("Queue full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, this.batchSize);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
            signalConsumer();
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

    public Cif(Cfor<T> cfor, int i) {
        this.f25689do = cfor;
        this.f25690if = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo(this.f25690if);
        this.f25689do.m5(cdo);
        return cdo;
    }
}

package io.reactivex.internal.subscribers;

import android.support.v4.ja;
import android.support.v4.jp1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.subscribers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T> extends CountDownLatch implements FlowableSubscriber<T>, Future<T>, Subscription {

    /* renamed from: do, reason: not valid java name */
    public T f27393do;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Subscription> f27394for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f27395if;

    public Cdo() {
        super(1);
        this.f27394for = new AtomicReference<>();
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Subscription subscription;
        Cfor cfor;
        do {
            subscription = this.f27394for.get();
            if (subscription == this || subscription == (cfor = Cfor.CANCELLED)) {
                return false;
            }
        } while (!this.f27394for.compareAndSet(subscription, cfor));
        if (subscription != null) {
            subscription.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        if (getCount() != 0) {
            ja.m3755if();
            await();
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.f27395if;
        if (th == null) {
            return this.f27393do;
        }
        throw new ExecutionException(th);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f27394for.get() == Cfor.CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        Subscription subscription;
        if (this.f27393do == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            subscription = this.f27394for.get();
            if (subscription == this || subscription == Cfor.CANCELLED) {
                return;
            }
        } while (!this.f27394for.compareAndSet(subscription, this));
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Subscription subscription;
        do {
            subscription = this.f27394for.get();
            if (subscription == this || subscription == Cfor.CANCELLED) {
                jp1.l(th);
                return;
            }
            this.f27395if = th;
        } while (!this.f27394for.compareAndSet(subscription, this));
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f27393do == null) {
            this.f27393do = t;
        } else {
            this.f27394for.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        Cfor.setOnce(this.f27394for, subscription, Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (getCount() != 0) {
            ja.m3755if();
            if (!await(j, timeUnit)) {
                throw new TimeoutException(Ccase.m29717try(j, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f27395if;
            if (th == null) {
                return this.f27393do;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}

package io.reactivex.internal.subscribers;

import android.support.v4.a01;
import android.support.v4.r6;
import android.support.v4.ti1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.QueueDrain;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.subscribers.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif<T, U, V> extends Ccase implements FlowableSubscriber<T>, QueueDrain<U, V> {
    public final Subscriber<? super V> i;
    public final SimplePlainQueue<U> j;
    public volatile boolean k;
    public volatile boolean l;
    public Throwable m;

    public Cif(Subscriber<? super V> subscriber, SimplePlainQueue<U> simplePlainQueue) {
        this.i = subscriber;
        this.j = simplePlainQueue;
    }

    public boolean accept(Subscriber<? super V> subscriber, U u) {
        return false;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final boolean cancelled() {
        return this.k;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m29702do() {
        return this.f27396throw.get() == 0 && this.f27396throw.compareAndSet(0, 1);
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final boolean done() {
        return this.l;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final boolean enter() {
        return this.f27396throw.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final Throwable error() {
        return this.m;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m29703for(U u, boolean z, Disposable disposable) {
        Subscriber<? super V> subscriber = this.i;
        SimplePlainQueue<U> simplePlainQueue = this.j;
        if (m29702do()) {
            long j = this.f27427strictfp.get();
            if (j == 0) {
                this.k = true;
                disposable.dispose();
                subscriber.onError(new a01("Could not emit buffer due to lack of requests"));
                return;
            } else if (simplePlainQueue.isEmpty()) {
                if (accept(subscriber, u) && j != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                simplePlainQueue.offer(u);
            }
        } else {
            simplePlainQueue.offer(u);
            if (!enter()) {
                return;
            }
        }
        ti1.m7959try(simplePlainQueue, subscriber, z, disposable, this);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m29704if(U u, boolean z, Disposable disposable) {
        Subscriber<? super V> subscriber = this.i;
        SimplePlainQueue<U> simplePlainQueue = this.j;
        if (m29702do()) {
            long j = this.f27427strictfp.get();
            if (j == 0) {
                disposable.dispose();
                subscriber.onError(new a01("Could not emit buffer due to lack of requests"));
                return;
            } else {
                if (accept(subscriber, u) && j != Long.MAX_VALUE) {
                    produced(1L);
                }
                if (leave(-1) == 0) {
                    return;
                }
            }
        } else {
            simplePlainQueue.offer(u);
            if (!enter()) {
                return;
            }
        }
        ti1.m7959try(simplePlainQueue, subscriber, z, disposable, this);
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final int leave(int i) {
        return this.f27396throw.addAndGet(i);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m29705new(long j) {
        if (Cfor.validate(j)) {
            r6.m6775do(this.f27427strictfp, j);
        }
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final long produced(long j) {
        return this.f27427strictfp.addAndGet(-j);
    }

    @Override // io.reactivex.internal.util.QueueDrain
    public final long requested() {
        return this.f27427strictfp.get();
    }
}

package io.reactivex.internal.observers;

import android.support.v4.ti1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.ObservableQueueDrain;

/* renamed from: io.reactivex.internal.observers.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry<T, U, V> extends Celse implements Observer<T>, ObservableQueueDrain<U, V> {

    /* renamed from: interface, reason: not valid java name */
    public volatile boolean f25357interface;

    /* renamed from: protected, reason: not valid java name */
    public volatile boolean f25358protected;

    /* renamed from: strictfp, reason: not valid java name */
    public final Observer<? super V> f25359strictfp;

    /* renamed from: transient, reason: not valid java name */
    public Throwable f25360transient;

    /* renamed from: volatile, reason: not valid java name */
    public final SimplePlainQueue<U> f25361volatile;

    public Ctry(Observer<? super V> observer, SimplePlainQueue<U> simplePlainQueue) {
        this.f25359strictfp = observer;
        this.f25361volatile = simplePlainQueue;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public void accept(Observer<? super V> observer, U u) {
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public final boolean cancelled() {
        return this.f25357interface;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m29475do() {
        return this.f25353throw.get() == 0 && this.f25353throw.compareAndSet(0, 1);
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public final boolean done() {
        return this.f25358protected;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public final boolean enter() {
        return this.f25353throw.getAndIncrement() == 0;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public final Throwable error() {
        return this.f25360transient;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m29476for(U u, boolean z, Disposable disposable) {
        Observer<? super V> observer = this.f25359strictfp;
        SimplePlainQueue<U> simplePlainQueue = this.f25361volatile;
        if (this.f25353throw.get() != 0 || !this.f25353throw.compareAndSet(0, 1)) {
            simplePlainQueue.offer(u);
            if (!enter()) {
                return;
            }
        } else if (simplePlainQueue.isEmpty()) {
            accept(observer, u);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            simplePlainQueue.offer(u);
        }
        ti1.m7957new(simplePlainQueue, observer, z, disposable, this);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m29477if(U u, boolean z, Disposable disposable) {
        Observer<? super V> observer = this.f25359strictfp;
        SimplePlainQueue<U> simplePlainQueue = this.f25361volatile;
        if (this.f25353throw.get() == 0 && this.f25353throw.compareAndSet(0, 1)) {
            accept(observer, u);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            simplePlainQueue.offer(u);
            if (!enter()) {
                return;
            }
        }
        ti1.m7957new(simplePlainQueue, observer, z, disposable, this);
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    public final int leave(int i) {
        return this.f25353throw.addAndGet(i);
    }
}

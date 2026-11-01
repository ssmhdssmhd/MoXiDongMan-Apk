package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.Emitter;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class p<T, S> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<S, Emitter<T>, S> f25777for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<S> f25778if;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super S> f25779new;

    /* renamed from: io.reactivex.internal.operators.flowable.p$do, reason: invalid class name */
    public static final class Cdo<T, S> extends AtomicLong implements Emitter<T>, Subscription {
        private static final long serialVersionUID = 7565982551505011832L;
        public volatile boolean cancelled;
        public final Consumer<? super S> disposeState;
        public final Subscriber<? super T> downstream;
        public final BiFunction<S, ? super Emitter<T>, S> generator;
        public boolean hasNext;
        public S state;
        public boolean terminate;

        public Cdo(Subscriber<? super T> subscriber, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.downstream = subscriber;
            this.generator = biFunction;
            this.disposeState = consumer;
            this.state = s;
        }

        /* renamed from: do, reason: not valid java name */
        private void m29495do(S s) {
            try {
                this.disposeState.accept(s);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (r6.m6775do(this, 1L) == 0) {
                S s = this.state;
                this.state = null;
                m29495do(s);
            }
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (this.terminate) {
                return;
            }
            this.terminate = true;
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (this.terminate) {
                jp1.l(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.terminate = true;
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.terminate) {
                return;
            }
            if (this.hasNext) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.hasNext = true;
                this.downstream.onNext(t);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0055, code lost:
        
            r9.state = r0;
            r10 = addAndGet(-r4);
         */
        @Override // org.reactivestreams.Subscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j) && r6.m6775do(this, j) == 0) {
                S sApply = this.state;
                BiFunction<S, ? super Emitter<T>, S> biFunction = this.generator;
                do {
                    long j2 = 0;
                    while (true) {
                        if (j2 == j) {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        } else {
                            if (this.cancelled) {
                                this.state = null;
                                m29495do(sApply);
                                return;
                            }
                            this.hasNext = false;
                            try {
                                sApply = biFunction.apply(sApply, this);
                                if (this.terminate) {
                                    this.cancelled = true;
                                    this.state = null;
                                    m29495do(sApply);
                                    return;
                                }
                                j2++;
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                this.cancelled = true;
                                this.state = null;
                                onError(th);
                                m29495do(sApply);
                                return;
                            }
                        }
                    }
                } while (j != 0);
            }
        }
    }

    public p(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.f25778if = callable;
        this.f25777for = biFunction;
        this.f25779new = consumer;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            subscriber.onSubscribe(new Cdo(subscriber, this.f25777for, this.f25779new, this.f25778if.call()));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}

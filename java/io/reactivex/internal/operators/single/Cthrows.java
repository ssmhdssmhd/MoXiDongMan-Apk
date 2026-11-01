package io.reactivex.internal.operators.single;

import android.support.v4.a51;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.z7;
import io.reactivex.Cfor;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.single.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Iterable<? extends R>> f27250for;

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<T> f27251if;

    /* renamed from: io.reactivex.internal.operators.single.throws$do, reason: invalid class name */
    public static final class Cdo<T, R> extends z7<R> implements SingleObserver<T> {
        private static final long serialVersionUID = -8938804753851907758L;
        public volatile boolean cancelled;
        public final Subscriber<? super R> downstream;
        public volatile Iterator<? extends R> it;
        public final Function<? super T, ? extends Iterable<? extends R>> mapper;
        public boolean outputFused;
        public final AtomicLong requested = new AtomicLong();
        public Disposable upstream;

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.downstream = subscriber;
            this.mapper = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.dispose();
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.it = null;
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super R> subscriber = this.downstream;
            Iterator<? extends R> it = this.it;
            if (this.outputFused && it != null) {
                subscriber.onNext(null);
                subscriber.onComplete();
                return;
            }
            int iAddAndGet = 1;
            while (true) {
                if (it != null) {
                    long j = this.requested.get();
                    if (j == Long.MAX_VALUE) {
                        slowPath(subscriber, it);
                        return;
                    }
                    long j2 = 0;
                    while (j2 != j) {
                        if (this.cancelled) {
                            return;
                        }
                        try {
                            subscriber.onNext((Object) Cif.m29468else(it.next(), "The iterator returned a null value"));
                            if (this.cancelled) {
                                return;
                            }
                            j2++;
                            try {
                                if (!it.hasNext()) {
                                    subscriber.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                subscriber.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            subscriber.onError(th2);
                            return;
                        }
                    }
                    if (j2 != 0) {
                        r6.m6779try(this.requested, j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (it == null) {
                    it = this.it;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.it == null;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Iterator<? extends R> it = this.mapper.apply(t).iterator();
                if (!it.hasNext()) {
                    this.downstream.onComplete();
                } else {
                    this.it = it;
                    drain();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public R poll() throws Exception {
            Iterator<? extends R> it = this.it;
            if (it == null) {
                return null;
            }
            R r = (R) Cif.m29468else(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.it = null;
            }
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        public void slowPath(Subscriber<? super R> subscriber, Iterator<? extends R> it) {
            while (!this.cancelled) {
                try {
                    subscriber.onNext(it.next());
                    if (this.cancelled) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            subscriber.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        subscriber.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    subscriber.onError(th2);
                    return;
                }
            }
        }
    }

    public Cthrows(SingleSource<T> singleSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        this.f27251if = singleSource;
        this.f27250for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f27251if.subscribe(new Cdo(subscriber, this.f27250for));
    }
}

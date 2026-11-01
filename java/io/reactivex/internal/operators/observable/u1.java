package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class u1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final int f26961case;

    /* renamed from: else, reason: not valid java name */
    public final boolean f26962else;

    /* renamed from: for, reason: not valid java name */
    public final long f26963for;

    /* renamed from: if, reason: not valid java name */
    public final long f26964if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f26965new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f26966try;

    /* renamed from: io.reactivex.internal.operators.observable.u1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;
        public volatile boolean cancelled;
        public final long count;
        public final boolean delayError;
        public final Observer<? super T> downstream;
        public Throwable error;
        public final e12<Object> queue;
        public final Ctry scheduler;
        public final long time;
        public final TimeUnit unit;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer, long j, long j2, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
            this.downstream = observer;
            this.count = j;
            this.time = j2;
            this.unit = timeUnit;
            this.scheduler = ctry;
            this.queue = new e12<>(i);
            this.delayError = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.dispose();
            if (compareAndSet(false, true)) {
                this.queue.clear();
            }
        }

        public void drain() {
            Throwable th;
            if (compareAndSet(false, true)) {
                Observer<? super T> observer = this.downstream;
                e12<Object> e12Var = this.queue;
                boolean z = this.delayError;
                long jMo29783for = this.scheduler.mo29783for(this.unit) - this.time;
                while (!this.cancelled) {
                    if (!z && (th = this.error) != null) {
                        e12Var.clear();
                        observer.onError(th);
                        return;
                    }
                    Object objPoll = e12Var.poll();
                    if (objPoll == null) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            observer.onError(th2);
                            return;
                        } else {
                            observer.onComplete();
                            return;
                        }
                    }
                    Object objPoll2 = e12Var.poll();
                    if (((Long) objPoll).longValue() >= jMo29783for) {
                        observer.onNext(objPoll2);
                    }
                }
                e12Var.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.error = th;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            e12<Object> e12Var = this.queue;
            long jMo29783for = this.scheduler.mo29783for(this.unit);
            long j = this.time;
            long j2 = this.count;
            boolean z = j2 == Long.MAX_VALUE;
            e12Var.offer(Long.valueOf(jMo29783for), t);
            while (!e12Var.isEmpty()) {
                if (((Long) e12Var.peek()).longValue() > jMo29783for - j && (z || (e12Var.m1601const() >> 1) <= j2)) {
                    return;
                }
                e12Var.poll();
                e12Var.poll();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public u1(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
        super(observableSource);
        this.f26964if = j;
        this.f26963for = j2;
        this.f26965new = timeUnit;
        this.f26966try = ctry;
        this.f26961case = i;
        this.f26962else = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26964if, this.f26963for, this.f26965new, this.f26966try, this.f26961case, this.f26962else));
    }
}

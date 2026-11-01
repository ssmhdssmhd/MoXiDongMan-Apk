package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class l1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f26693case;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26694for;

    /* renamed from: if, reason: not valid java name */
    public final long f26695if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26696new;

    /* renamed from: try, reason: not valid java name */
    public final int f26697try;

    /* renamed from: io.reactivex.internal.operators.observable.l1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;
        public volatile boolean cancelled;
        public final boolean delayError;
        public volatile boolean done;
        public final Observer<? super T> downstream;
        public Throwable error;
        public final e12<Object> queue;
        public final Ctry scheduler;
        public final long time;
        public final TimeUnit unit;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer, long j, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
            this.downstream = observer;
            this.time = j;
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
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super T> observer = this.downstream;
            e12<Object> e12Var = this.queue;
            boolean z = this.delayError;
            TimeUnit timeUnit = this.unit;
            Ctry ctry = this.scheduler;
            long j = this.time;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z2 = this.done;
                Long l = (Long) e12Var.peek();
                boolean z3 = l == null;
                long jMo29783for = ctry.mo29783for(timeUnit);
                if (!z3 && l.longValue() > jMo29783for - j) {
                    z3 = true;
                }
                if (z2) {
                    if (!z) {
                        Throwable th = this.error;
                        if (th != null) {
                            this.queue.clear();
                            observer.onError(th);
                            return;
                        } else if (z3) {
                            observer.onComplete();
                            return;
                        }
                    } else if (z3) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            observer.onError(th2);
                            return;
                        } else {
                            observer.onComplete();
                            return;
                        }
                    }
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    e12Var.poll();
                    observer.onNext(e12Var.poll());
                }
            }
            this.queue.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.queue.offer(Long.valueOf(this.scheduler.mo29783for(this.unit)), t);
            drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public l1(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Ctry ctry, int i, boolean z) {
        super(observableSource);
        this.f26695if = j;
        this.f26694for = timeUnit;
        this.f26696new = ctry;
        this.f26697try = i;
        this.f26693case = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26695if, this.f26694for, this.f26696new, this.f26697try, this.f26693case));
    }
}

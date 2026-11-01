package io.reactivex.internal.operators.mixed;

import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<T> f26288do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26289for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f26290if;

    /* renamed from: new, reason: not valid java name */
    public final int f26291new;

    /* renamed from: io.reactivex.internal.operators.mixed.const$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        public static final int STATE_ACTIVE = 1;
        public static final int STATE_INACTIVE = 0;
        public static final int STATE_RESULT_VALUE = 2;
        private static final long serialVersionUID = -9140123220065488293L;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final Ctry errorMode;
        public final h4 errors = new h4();
        public final C0304do<R> inner = new C0304do<>(this);
        public R item;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;
        public final SimplePlainQueue<T> queue;
        public volatile int state;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.mixed.const$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0304do<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;
            public final Cdo<?, R> parent;

            public C0304do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.parent.innerSuccess(r);
            }
        }

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends SingleSource<? extends R>> function, int i, Ctry ctry) {
            this.downstream = observer;
            this.mapper = function;
            this.errorMode = ctry;
            this.queue = new e12(i);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.inner.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
                this.item = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        
            r2.clear();
            r10.item = null;
            r0.onError(r3.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            Ctry ctry = this.errorMode;
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            h4 h4Var = this.errors;
            int iAddAndGet = 1;
            while (true) {
                if (!this.cancelled) {
                    int i = this.state;
                    if (h4Var.get() != null && (ctry == Ctry.IMMEDIATE || (ctry == Ctry.BOUNDARY && i == 0))) {
                        break;
                    }
                    if (i == 0) {
                        boolean z = this.done;
                        T tPoll = simplePlainQueue.poll();
                        boolean z2 = tPoll == null;
                        if (z && z2) {
                            Throwable thTerminate = h4Var.terminate();
                            if (thTerminate == null) {
                                observer.onComplete();
                                return;
                            } else {
                                observer.onError(thTerminate);
                                return;
                            }
                        }
                        if (!z2) {
                            try {
                                SingleSource singleSource = (SingleSource) Cif.m29468else(this.mapper.apply(tPoll), "The mapper returned a null SingleSource");
                                this.state = 1;
                                singleSource.subscribe(this.inner);
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                this.upstream.dispose();
                                simplePlainQueue.clear();
                                h4Var.addThrowable(th);
                                observer.onError(h4Var.terminate());
                                return;
                            }
                        }
                    } else if (i == 2) {
                        R r = this.item;
                        this.item = null;
                        observer.onNext(r);
                        this.state = 0;
                    }
                } else {
                    simplePlainQueue.clear();
                    this.item = null;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void innerError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode != Ctry.END) {
                this.upstream.dispose();
            }
            this.state = 0;
            drain();
        }

        public void innerSuccess(R r) {
            this.item = r;
            this.state = 2;
            drain();
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
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (this.errorMode == Ctry.IMMEDIATE) {
                this.inner.dispose();
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.queue.offer(t);
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

    public Cconst(Cnew<T> cnew, Function<? super T, ? extends SingleSource<? extends R>> function, Ctry ctry, int i) {
        this.f26288do = cnew;
        this.f26290if = function;
        this.f26289for = ctry;
        this.f26291new = i;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        if (Cwhile.m29558for(this.f26288do, this.f26290if, observer)) {
            return;
        }
        this.f26288do.subscribe(new Cdo(observer, this.f26290if, this.f26291new, this.f26289for));
    }
}

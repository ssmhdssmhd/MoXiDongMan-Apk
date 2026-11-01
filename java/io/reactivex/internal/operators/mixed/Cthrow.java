package io.reactivex.internal.operators.mixed;

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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<T> f26328do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f26329for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f26330if;

    /* renamed from: io.reactivex.internal.operators.mixed.throw$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        public static final C0312do<Object> INNER_DISPOSED = new C0312do<>(null);
        private static final long serialVersionUID = -5402190102429853762L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final h4 errors = new h4();
        public final AtomicReference<C0312do<R>> inner = new AtomicReference<>();
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.mixed.throw$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0312do<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;
            public volatile R item;
            public final Cdo<?, R> parent;

            public C0312do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.parent.innerError(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.item = r;
                this.parent.drain();
            }
        }

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
            this.downstream = observer;
            this.mapper = function;
            this.delayErrors = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            disposeInner();
        }

        public void disposeInner() {
            AtomicReference<C0312do<R>> atomicReference = this.inner;
            C0312do<Object> c0312do = INNER_DISPOSED;
            C0312do<Object> c0312do2 = (C0312do) atomicReference.getAndSet(c0312do);
            if (c0312do2 == null || c0312do2 == c0312do) {
                return;
            }
            c0312do2.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            h4 h4Var = this.errors;
            AtomicReference<C0312do<R>> atomicReference = this.inner;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (h4Var.get() != null && !this.delayErrors) {
                    observer.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                C0312do<R> c0312do = atomicReference.get();
                boolean z2 = c0312do == null;
                if (z && z2) {
                    Throwable thTerminate = h4Var.terminate();
                    if (thTerminate != null) {
                        observer.onError(thTerminate);
                        return;
                    } else {
                        observer.onComplete();
                        return;
                    }
                }
                if (z2 || c0312do.item == null) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.compareAndSet(c0312do, null);
                    observer.onNext(c0312do.item);
                }
            }
        }

        public void innerError(C0312do<R> c0312do, Throwable th) {
            if (!this.inner.compareAndSet(c0312do, null) || !this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.dispose();
                disposeInner();
            }
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
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            C0312do<R> c0312do;
            C0312do<R> c0312do2 = this.inner.get();
            if (c0312do2 != null) {
                c0312do2.dispose();
            }
            try {
                SingleSource singleSource = (SingleSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null SingleSource");
                C0312do<R> c0312do3 = new C0312do<>(this);
                do {
                    c0312do = this.inner.get();
                    if (c0312do == INNER_DISPOSED) {
                        return;
                    }
                } while (!this.inner.compareAndSet(c0312do, c0312do3));
                singleSource.subscribe(c0312do3);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.dispose();
                this.inner.getAndSet(INNER_DISPOSED);
                onError(th);
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

    public Cthrow(Cnew<T> cnew, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        this.f26328do = cnew;
        this.f26330if = function;
        this.f26329for = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        if (Cwhile.m29558for(this.f26328do, this.f26330if, observer)) {
            return;
        }
        this.f26328do.subscribe(new Cdo(observer, this.f26330if, this.f26329for));
    }
}

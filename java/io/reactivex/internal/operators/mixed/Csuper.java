package io.reactivex.internal.operators.mixed;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final Cnew<T> f26323do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f26324for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26325if;

    /* renamed from: io.reactivex.internal.operators.mixed.super$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        public static final C0311do<Object> INNER_DISPOSED = new C0311do<>(null);
        private static final long serialVersionUID = -5402190102429853762L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final h4 errors = new h4();
        public final AtomicReference<C0311do<R>> inner = new AtomicReference<>();
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.mixed.super$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0311do<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;
            public volatile R item;
            public final Cdo<?, R> parent;

            public C0311do(Cdo<?, R> cdo) {
                this.parent = cdo;
            }

            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.parent.innerError(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.item = r;
                this.parent.drain();
            }
        }

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
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
            AtomicReference<C0311do<R>> atomicReference = this.inner;
            C0311do<Object> c0311do = INNER_DISPOSED;
            C0311do<Object> c0311do2 = (C0311do) atomicReference.getAndSet(c0311do);
            if (c0311do2 == null || c0311do2 == c0311do) {
                return;
            }
            c0311do2.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            h4 h4Var = this.errors;
            AtomicReference<C0311do<R>> atomicReference = this.inner;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (h4Var.get() != null && !this.delayErrors) {
                    observer.onError(h4Var.terminate());
                    return;
                }
                boolean z = this.done;
                C0311do<R> c0311do = atomicReference.get();
                boolean z2 = c0311do == null;
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
                if (z2 || c0311do.item == null) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    atomicReference.compareAndSet(c0311do, null);
                    observer.onNext(c0311do.item);
                }
            }
        }

        public void innerComplete(C0311do<R> c0311do) {
            if (this.inner.compareAndSet(c0311do, null)) {
                drain();
            }
        }

        public void innerError(C0311do<R> c0311do, Throwable th) {
            if (!this.inner.compareAndSet(c0311do, null) || !this.errors.addThrowable(th)) {
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
            C0311do<R> c0311do;
            C0311do<R> c0311do2 = this.inner.get();
            if (c0311do2 != null) {
                c0311do2.dispose();
            }
            try {
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                C0311do<R> c0311do3 = new C0311do<>(this);
                do {
                    c0311do = this.inner.get();
                    if (c0311do == INNER_DISPOSED) {
                        return;
                    }
                } while (!this.inner.compareAndSet(c0311do, c0311do3));
                maybeSource.subscribe(c0311do3);
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

    public Csuper(Cnew<T> cnew, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        this.f26323do = cnew;
        this.f26325if = function;
        this.f26324for = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        if (Cwhile.m29559if(this.f26323do, this.f26325if, observer)) {
            return;
        }
        this.f26323do.subscribe(new Cdo(observer, this.f26325if, this.f26324for));
    }
}

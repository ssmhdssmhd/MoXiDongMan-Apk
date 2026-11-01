package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class f2<T, D> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends D> f26539do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super D> f26540for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super D, ? extends ObservableSource<? extends T>> f26541if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26542new;

    /* renamed from: io.reactivex.internal.operators.observable.f2$do, reason: invalid class name */
    public static final class Cdo<T, D> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = 5904473792286235046L;
        public final Consumer<? super D> disposer;
        public final Observer<? super T> downstream;
        public final boolean eager;
        public final D resource;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer, D d, Consumer<? super D> consumer, boolean z) {
            this.downstream = observer;
            this.resource = d;
            this.disposer = consumer;
            this.eager = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            disposeAfter();
            this.upstream.dispose();
        }

        public void disposeAfter() {
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.eager) {
                this.downstream.onComplete();
                this.upstream.dispose();
                disposeAfter();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                    return;
                }
            }
            this.upstream.dispose();
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.eager) {
                this.downstream.onError(th);
                this.upstream.dispose();
                disposeAfter();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    th = new io.reactivex.exceptions.Cdo(th, th2);
                }
            }
            this.upstream.dispose();
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public f2(Callable<? extends D> callable, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        this.f26539do = callable;
        this.f26541if = function;
        this.f26540for = consumer;
        this.f26542new = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            D dCall = this.f26539do.call();
            try {
                ((ObservableSource) Cif.m29468else(this.f26541if.apply(dCall), "The sourceSupplier returned a null ObservableSource")).subscribe(new Cdo(observer, dCall, this.f26540for, this.f26542new));
            } catch (Throwable th) {
                t80.m7781if(th);
                try {
                    this.f26540for.accept(dCall);
                    io.reactivex.internal.disposables.Cif.error(th, observer);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    io.reactivex.internal.disposables.Cif.error(new io.reactivex.exceptions.Cdo(th, th2), observer);
                }
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            io.reactivex.internal.disposables.Cif.error(th3, observer);
        }
    }
}

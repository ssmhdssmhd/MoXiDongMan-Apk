package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.n10;
import android.support.v4.t80;
import android.support.v4.zw1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<U>> f26797if;

    /* renamed from: io.reactivex.internal.operators.observable.package$do, reason: invalid class name */
    public static final class Cdo<T, U> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public boolean f26798case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26799do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26800for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends ObservableSource<U>> f26801if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicReference<Disposable> f26802new = new AtomicReference<>();

        /* renamed from: try, reason: not valid java name */
        public volatile long f26803try;

        /* renamed from: io.reactivex.internal.operators.observable.package$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0327do<T, U> extends n10<U> {

            /* renamed from: case, reason: not valid java name */
            public final AtomicBoolean f26804case = new AtomicBoolean();

            /* renamed from: for, reason: not valid java name */
            public final long f26805for;

            /* renamed from: if, reason: not valid java name */
            public final Cdo<T, U> f26806if;

            /* renamed from: new, reason: not valid java name */
            public final T f26807new;

            /* renamed from: try, reason: not valid java name */
            public boolean f26808try;

            public C0327do(Cdo<T, U> cdo, long j, T t) {
                this.f26806if = cdo;
                this.f26805for = j;
                this.f26807new = t;
            }

            /* renamed from: if, reason: not valid java name */
            public void m29603if() {
                if (this.f26804case.compareAndSet(false, true)) {
                    this.f26806if.m29602do(this.f26805for, this.f26807new);
                }
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                if (this.f26808try) {
                    return;
                }
                this.f26808try = true;
                m29603if();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                if (this.f26808try) {
                    jp1.l(th);
                } else {
                    this.f26808try = true;
                    this.f26806if.onError(th);
                }
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                if (this.f26808try) {
                    return;
                }
                this.f26808try = true;
                dispose();
                m29603if();
            }
        }

        public Cdo(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<U>> function) {
            this.f26799do = observer;
            this.f26801if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26800for.dispose();
            io.reactivex.internal.disposables.Cdo.dispose(this.f26802new);
        }

        /* renamed from: do, reason: not valid java name */
        public void m29602do(long j, T t) {
            if (j == this.f26803try) {
                this.f26799do.onNext(t);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26800for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26798case) {
                return;
            }
            this.f26798case = true;
            Disposable disposable = this.f26802new.get();
            if (disposable != io.reactivex.internal.disposables.Cdo.DISPOSED) {
                C0327do c0327do = (C0327do) disposable;
                if (c0327do != null) {
                    c0327do.m29603if();
                }
                io.reactivex.internal.disposables.Cdo.dispose(this.f26802new);
                this.f26799do.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.f26802new);
            this.f26799do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26798case) {
                return;
            }
            long j = this.f26803try + 1;
            this.f26803try = j;
            Disposable disposable = this.f26802new.get();
            if (disposable != null) {
                disposable.dispose();
            }
            try {
                ObservableSource observableSource = (ObservableSource) Cif.m29468else(this.f26801if.apply(t), "The ObservableSource supplied is null");
                C0327do c0327do = new C0327do(this, j, t);
                if (this.f26802new.compareAndSet(disposable, c0327do)) {
                    observableSource.subscribe(c0327do);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                dispose();
                this.f26799do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26800for, disposable)) {
                this.f26800for = disposable;
                this.f26799do.onSubscribe(this);
            }
        }
    }

    public Cpackage(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<U>> function) {
        super(observableSource);
        this.f26797if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(new zw1(observer), this.f26797if));
    }
}

package io.reactivex.internal.operators.observable;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class p0<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26785do;

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<T, T, T> f26786if;

    /* renamed from: io.reactivex.internal.operators.observable.p0$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26787do;

        /* renamed from: for, reason: not valid java name */
        public boolean f26788for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<T, T, T> f26789if;

        /* renamed from: new, reason: not valid java name */
        public T f26790new;

        /* renamed from: try, reason: not valid java name */
        public Disposable f26791try;

        public Cdo(MaybeObserver<? super T> maybeObserver, BiFunction<T, T, T> biFunction) {
            this.f26787do = maybeObserver;
            this.f26789if = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26791try.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26791try.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26788for) {
                return;
            }
            this.f26788for = true;
            T t = this.f26790new;
            this.f26790new = null;
            if (t != null) {
                this.f26787do.onSuccess(t);
            } else {
                this.f26787do.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26788for) {
                jp1.l(th);
                return;
            }
            this.f26788for = true;
            this.f26790new = null;
            this.f26787do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26788for) {
                return;
            }
            T t2 = this.f26790new;
            if (t2 == null) {
                this.f26790new = t;
                return;
            }
            try {
                this.f26790new = (T) Cif.m29468else(this.f26789if.apply(t2, t), "The reducer returned a null value");
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26791try.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26791try, disposable)) {
                this.f26791try = disposable;
                this.f26787do.onSubscribe(this);
            }
        }
    }

    public p0(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        this.f26785do = observableSource;
        this.f26786if = biFunction;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26785do.subscribe(new Cdo(maybeObserver, this.f26786if));
    }
}

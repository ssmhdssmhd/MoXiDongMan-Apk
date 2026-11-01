package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.FuseToObservable;

/* renamed from: io.reactivex.internal.operators.observable.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<T> extends jz1<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26417do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26418if;

    /* renamed from: io.reactivex.internal.operators.observable.break$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f26419do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26420for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26421if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26422new;

        public Cdo(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f26419do = singleObserver;
            this.f26421if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26420for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26420for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26422new) {
                return;
            }
            this.f26422new = true;
            this.f26419do.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26422new) {
                jp1.l(th);
            } else {
                this.f26422new = true;
                this.f26419do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26422new) {
                return;
            }
            try {
                if (this.f26421if.test(t)) {
                    this.f26422new = true;
                    this.f26420for.dispose();
                    this.f26419do.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26420for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26420for, disposable)) {
                this.f26420for = disposable;
                this.f26419do.onSubscribe(this);
            }
        }
    }

    public Cbreak(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f26417do = observableSource;
        this.f26418if = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<Boolean> fuseToObservable() {
        return jp1.i(new Cthis(this.f26417do, this.f26418if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f26417do.subscribe(new Cdo(singleObserver, this.f26418if));
    }
}

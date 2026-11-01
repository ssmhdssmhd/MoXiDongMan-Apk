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

/* renamed from: io.reactivex.internal.operators.observable.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T> extends jz1<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26517do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26518if;

    /* renamed from: io.reactivex.internal.operators.observable.else$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f26519do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26520for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26521if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26522new;

        public Cdo(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.f26519do = singleObserver;
            this.f26521if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26520for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26520for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26522new) {
                return;
            }
            this.f26522new = true;
            this.f26519do.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26522new) {
                jp1.l(th);
            } else {
                this.f26522new = true;
                this.f26519do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26522new) {
                return;
            }
            try {
                if (this.f26521if.test(t)) {
                    return;
                }
                this.f26522new = true;
                this.f26520for.dispose();
                this.f26519do.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26520for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26520for, disposable)) {
                this.f26520for = disposable;
                this.f26519do.onSubscribe(this);
            }
        }
    }

    public Celse(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f26517do = observableSource;
        this.f26518if = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<Boolean> fuseToObservable() {
        return jp1.i(new Ccase(this.f26517do, this.f26518if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f26517do.subscribe(new Cdo(singleObserver, this.f26518if));
    }
}

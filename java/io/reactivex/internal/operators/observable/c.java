package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToObservable;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class c<T> extends jz1<T> implements FuseToObservable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26423do;

    /* renamed from: for, reason: not valid java name */
    public final T f26424for;

    /* renamed from: if, reason: not valid java name */
    public final long f26425if;

    /* renamed from: io.reactivex.internal.operators.observable.c$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public boolean f26426case;

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f26427do;

        /* renamed from: for, reason: not valid java name */
        public final T f26428for;

        /* renamed from: if, reason: not valid java name */
        public final long f26429if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26430new;

        /* renamed from: try, reason: not valid java name */
        public long f26431try;

        public Cdo(SingleObserver<? super T> singleObserver, long j, T t) {
            this.f26427do = singleObserver;
            this.f26429if = j;
            this.f26428for = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26430new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26430new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26426case) {
                return;
            }
            this.f26426case = true;
            T t = this.f26428for;
            if (t != null) {
                this.f26427do.onSuccess(t);
            } else {
                this.f26427do.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26426case) {
                jp1.l(th);
            } else {
                this.f26426case = true;
                this.f26427do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26426case) {
                return;
            }
            long j = this.f26431try;
            if (j != this.f26429if) {
                this.f26431try = j + 1;
                return;
            }
            this.f26426case = true;
            this.f26430new.dispose();
            this.f26427do.onSuccess(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26430new, disposable)) {
                this.f26430new = disposable;
                this.f26427do.onSubscribe(this);
            }
        }
    }

    public c(ObservableSource<T> observableSource, long j, T t) {
        this.f26423do = observableSource;
        this.f26425if = j;
        this.f26424for = t;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<T> fuseToObservable() {
        return jp1.i(new a(this.f26423do, this.f26425if, this.f26424for, true));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f26423do.subscribe(new Cdo(singleObserver, this.f26425if, this.f26424for));
    }
}

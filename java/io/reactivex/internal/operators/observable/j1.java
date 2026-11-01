package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class j1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final long f26643if;

    /* renamed from: io.reactivex.internal.operators.observable.j1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26644do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26645for;

        /* renamed from: if, reason: not valid java name */
        public long f26646if;

        public Cdo(Observer<? super T> observer, long j) {
            this.f26644do = observer;
            this.f26646if = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26645for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26645for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26644do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26644do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.f26646if;
            if (j != 0) {
                this.f26646if = j - 1;
            } else {
                this.f26644do.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26645for, disposable)) {
                this.f26645for = disposable;
                this.f26644do.onSubscribe(this);
            }
        }
    }

    public j1(ObservableSource<T> observableSource, long j) {
        super(observableSource);
        this.f26643if = j;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26643if));
    }
}

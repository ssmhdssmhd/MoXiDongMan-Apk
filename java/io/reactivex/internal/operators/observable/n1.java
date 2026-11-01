package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* loaded from: classes3.dex */
public final class n1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26732if;

    /* renamed from: io.reactivex.internal.operators.observable.n1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26733do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26734for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26735if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26736new;

        public Cdo(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f26733do = observer;
            this.f26735if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26734for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26734for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26733do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26733do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26736new) {
                this.f26733do.onNext(t);
                return;
            }
            try {
                if (this.f26735if.test(t)) {
                    return;
                }
                this.f26736new = true;
                this.f26733do.onNext(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26734for.dispose();
                this.f26733do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26734for, disposable)) {
                this.f26734for = disposable;
                this.f26733do.onSubscribe(this);
            }
        }
    }

    public n1(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26732if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26732if));
    }
}

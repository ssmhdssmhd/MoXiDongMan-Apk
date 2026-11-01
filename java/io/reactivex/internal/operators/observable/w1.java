package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* loaded from: classes3.dex */
public final class w1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26982if;

    /* renamed from: io.reactivex.internal.operators.observable.w1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26983do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26984for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26985if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26986new;

        public Cdo(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f26983do = observer;
            this.f26985if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26984for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26984for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26986new) {
                return;
            }
            this.f26986new = true;
            this.f26983do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26986new) {
                jp1.l(th);
            } else {
                this.f26986new = true;
                this.f26983do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26986new) {
                return;
            }
            this.f26983do.onNext(t);
            try {
                if (this.f26985if.test(t)) {
                    this.f26986new = true;
                    this.f26984for.dispose();
                    this.f26983do.onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26984for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26984for, disposable)) {
                this.f26984for = disposable;
                this.f26983do.onSubscribe(this);
            }
        }
    }

    public w1(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26982if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26982if));
    }
}

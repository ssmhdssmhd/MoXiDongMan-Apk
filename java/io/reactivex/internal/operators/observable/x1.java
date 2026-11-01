package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* loaded from: classes3.dex */
public final class x1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26997if;

    /* renamed from: io.reactivex.internal.operators.observable.x1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26998do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26999for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f27000if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27001new;

        public Cdo(Observer<? super T> observer, Predicate<? super T> predicate) {
            this.f26998do = observer;
            this.f27000if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26999for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26999for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f27001new) {
                return;
            }
            this.f27001new = true;
            this.f26998do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f27001new) {
                jp1.l(th);
            } else {
                this.f27001new = true;
                this.f26998do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f27001new) {
                return;
            }
            try {
                if (this.f27000if.test(t)) {
                    this.f26998do.onNext(t);
                    return;
                }
                this.f27001new = true;
                this.f26999for.dispose();
                this.f26998do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26999for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26999for, disposable)) {
                this.f26999for = disposable;
                this.f26998do.onSubscribe(this);
            }
        }
    }

    public x1(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26997if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26997if));
    }
}

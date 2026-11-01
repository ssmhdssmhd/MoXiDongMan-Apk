package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* renamed from: io.reactivex.internal.operators.observable.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends io.reactivex.internal.operators.observable.Cdo<T, Boolean> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26450if;

    /* renamed from: io.reactivex.internal.operators.observable.case$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super Boolean> f26451do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26452for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26453if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26454new;

        public Cdo(Observer<? super Boolean> observer, Predicate<? super T> predicate) {
            this.f26451do = observer;
            this.f26453if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26452for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26452for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26454new) {
                return;
            }
            this.f26454new = true;
            this.f26451do.onNext(Boolean.TRUE);
            this.f26451do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26454new) {
                jp1.l(th);
            } else {
                this.f26454new = true;
                this.f26451do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26454new) {
                return;
            }
            try {
                if (this.f26453if.test(t)) {
                    return;
                }
                this.f26454new = true;
                this.f26452for.dispose();
                this.f26451do.onNext(Boolean.FALSE);
                this.f26451do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26452for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26452for, disposable)) {
                this.f26452for = disposable;
                this.f26451do.onSubscribe(this);
            }
        }
    }

    public Ccase(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26450if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Boolean> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26450if));
    }
}

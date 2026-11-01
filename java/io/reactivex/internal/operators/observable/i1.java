package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class i1<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T> f26590do;

    /* renamed from: if, reason: not valid java name */
    public final T f26591if;

    /* renamed from: io.reactivex.internal.operators.observable.i1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f26592do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26593for;

        /* renamed from: if, reason: not valid java name */
        public final T f26594if;

        /* renamed from: new, reason: not valid java name */
        public T f26595new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26596try;

        public Cdo(SingleObserver<? super T> singleObserver, T t) {
            this.f26592do = singleObserver;
            this.f26594if = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26593for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26593for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26596try) {
                return;
            }
            this.f26596try = true;
            T t = this.f26595new;
            this.f26595new = null;
            if (t == null) {
                t = this.f26594if;
            }
            if (t != null) {
                this.f26592do.onSuccess(t);
            } else {
                this.f26592do.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26596try) {
                jp1.l(th);
            } else {
                this.f26596try = true;
                this.f26592do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26596try) {
                return;
            }
            if (this.f26595new == null) {
                this.f26595new = t;
                return;
            }
            this.f26596try = true;
            this.f26593for.dispose();
            this.f26592do.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26593for, disposable)) {
                this.f26593for = disposable;
                this.f26592do.onSubscribe(this);
            }
        }
    }

    public i1(ObservableSource<? extends T> observableSource, T t) {
        this.f26590do = observableSource;
        this.f26591if = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f26590do.subscribe(new Cdo(singleObserver, this.f26591if));
    }
}

package io.reactivex.internal.operators.observable;

import android.support.v4.fy0;
import android.support.v4.jp1;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class h1<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26571do;

    /* renamed from: io.reactivex.internal.operators.observable.h1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26572do;

        /* renamed from: for, reason: not valid java name */
        public T f26573for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26574if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26575new;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26572do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26574if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26574if.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26575new) {
                return;
            }
            this.f26575new = true;
            T t = this.f26573for;
            this.f26573for = null;
            if (t == null) {
                this.f26572do.onComplete();
            } else {
                this.f26572do.onSuccess(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26575new) {
                jp1.l(th);
            } else {
                this.f26575new = true;
                this.f26572do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26575new) {
                return;
            }
            if (this.f26573for == null) {
                this.f26573for = t;
                return;
            }
            this.f26575new = true;
            this.f26574if.dispose();
            this.f26572do.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26574if, disposable)) {
                this.f26574if = disposable;
                this.f26572do.onSubscribe(this);
            }
        }
    }

    public h1(ObservableSource<T> observableSource) {
        this.f26571do = observableSource;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26571do.subscribe(new Cdo(maybeObserver));
    }
}

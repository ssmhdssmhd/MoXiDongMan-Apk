package io.reactivex.internal.operators.observable;

import android.support.v4.fy0;
import android.support.v4.jp1;
import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToObservable;

/* loaded from: classes3.dex */
public final class b<T> extends fy0<T> implements FuseToObservable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26403do;

    /* renamed from: if, reason: not valid java name */
    public final long f26404if;

    /* renamed from: io.reactivex.internal.operators.observable.b$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26405do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26406for;

        /* renamed from: if, reason: not valid java name */
        public final long f26407if;

        /* renamed from: new, reason: not valid java name */
        public long f26408new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26409try;

        public Cdo(MaybeObserver<? super T> maybeObserver, long j) {
            this.f26405do = maybeObserver;
            this.f26407if = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26406for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26406for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26409try) {
                return;
            }
            this.f26409try = true;
            this.f26405do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26409try) {
                jp1.l(th);
            } else {
                this.f26409try = true;
                this.f26405do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26409try) {
                return;
            }
            long j = this.f26408new;
            if (j != this.f26407if) {
                this.f26408new = j + 1;
                return;
            }
            this.f26409try = true;
            this.f26406for.dispose();
            this.f26405do.onSuccess(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26406for, disposable)) {
                this.f26406for = disposable;
                this.f26405do.onSubscribe(this);
            }
        }
    }

    public b(ObservableSource<T> observableSource, long j) {
        this.f26403do = observableSource;
        this.f26404if = j;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    public Cnew<T> fuseToObservable() {
        return jp1.i(new a(this.f26403do, this.f26404if, null, false));
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26403do.subscribe(new Cdo(maybeObserver, this.f26404if));
    }
}

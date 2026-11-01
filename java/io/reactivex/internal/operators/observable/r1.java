package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class r1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final long f26846if;

    /* renamed from: io.reactivex.internal.operators.observable.r1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26847do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26848for;

        /* renamed from: if, reason: not valid java name */
        public boolean f26849if;

        /* renamed from: new, reason: not valid java name */
        public long f26850new;

        public Cdo(Observer<? super T> observer, long j) {
            this.f26847do = observer;
            this.f26850new = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26848for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26848for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26849if) {
                return;
            }
            this.f26849if = true;
            this.f26848for.dispose();
            this.f26847do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26849if) {
                jp1.l(th);
                return;
            }
            this.f26849if = true;
            this.f26848for.dispose();
            this.f26847do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26849if) {
                return;
            }
            long j = this.f26850new;
            long j2 = j - 1;
            this.f26850new = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.f26847do.onNext(t);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26848for, disposable)) {
                this.f26848for = disposable;
                if (this.f26850new != 0) {
                    this.f26847do.onSubscribe(this);
                    return;
                }
                this.f26849if = true;
                disposable.dispose();
                Cif.complete(this.f26847do);
            }
        }
    }

    public r1(ObservableSource<T> observableSource, long j) {
        super(observableSource);
        this.f26846if = j;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26846if));
    }
}

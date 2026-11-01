package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.zn1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T, U> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27167do;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<U> f27168if;

    /* renamed from: io.reactivex.internal.operators.single.else$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Disposable> implements Observer<U>, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;
        public boolean done;
        public final SingleObserver<? super T> downstream;
        public final SingleSource<T> source;

        public Cdo(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.downstream = singleObserver;
            this.source = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.source.subscribe(new zn1(this, this.downstream));
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            get().dispose();
            onComplete();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.set(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Celse(SingleSource<T> singleSource, ObservableSource<U> observableSource) {
        this.f27167do = singleSource;
        this.f27168if = observableSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27168if.subscribe(new Cdo(singleObserver, this.f27167do));
    }
}

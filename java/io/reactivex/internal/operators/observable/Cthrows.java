package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<? extends T> f26943if;

    /* renamed from: io.reactivex.internal.operators.observable.throws$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;
        public final Observer<? super T> downstream;
        public boolean inSingle;
        public SingleSource<? extends T> other;

        public Cdo(Observer<? super T> observer, SingleSource<? extends T> singleSource) {
            this.downstream = observer;
            this.other = singleSource;
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
            this.inSingle = true;
            io.reactivex.internal.disposables.Cdo.replace(this, null);
            SingleSource<? extends T> singleSource = this.other;
            this.other = null;
            singleSource.subscribe(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (!io.reactivex.internal.disposables.Cdo.setOnce(this, disposable) || this.inSingle) {
                return;
            }
            this.downstream.onSubscribe(this);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.downstream.onNext(t);
            this.downstream.onComplete();
        }
    }

    public Cthrows(Cnew<T> cnew, SingleSource<? extends T> singleSource) {
        super(cnew);
        this.f26943if = singleSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26943if));
    }
}

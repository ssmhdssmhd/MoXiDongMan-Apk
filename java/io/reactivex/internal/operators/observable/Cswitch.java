package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<? extends T> f26891if;

    /* renamed from: io.reactivex.internal.operators.observable.switch$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;
        public final Observer<? super T> downstream;
        public boolean inMaybe;
        public MaybeSource<? extends T> other;

        public Cdo(Observer<? super T> observer, MaybeSource<? extends T> maybeSource) {
            this.downstream = observer;
            this.other = maybeSource;
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
            if (this.inMaybe) {
                this.downstream.onComplete();
                return;
            }
            this.inMaybe = true;
            io.reactivex.internal.disposables.Cdo.replace(this, null);
            MaybeSource<? extends T> maybeSource = this.other;
            this.other = null;
            maybeSource.subscribe(this);
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
            if (!io.reactivex.internal.disposables.Cdo.setOnce(this, disposable) || this.inMaybe) {
                return;
            }
            this.downstream.onSubscribe(this);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onNext(t);
            this.downstream.onComplete();
        }
    }

    public Cswitch(Cnew<T> cnew, MaybeSource<? extends T> maybeSource) {
        super(cnew);
        this.f26891if = maybeSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26891if));
    }
}

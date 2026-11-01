package io.reactivex.internal.operators.mixed;

import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f26292do;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends R> f26293if;

    /* renamed from: io.reactivex.internal.operators.mixed.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0305do<R> extends AtomicReference<Disposable> implements Observer<R>, CompletableObserver, Disposable {
        private static final long serialVersionUID = -8948264376121066672L;
        public final Observer<? super R> downstream;
        public ObservableSource<? extends R> other;

        public C0305do(Observer<? super R> observer, ObservableSource<? extends R> observableSource) {
            this.other = observableSource;
            this.downstream = observer;
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
            ObservableSource<? extends R> observableSource = this.other;
            if (observableSource == null) {
                this.downstream.onComplete();
            } else {
                this.other = null;
                observableSource.subscribe(this);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    public Cdo(CompletableSource completableSource, ObservableSource<? extends R> observableSource) {
        this.f26292do = completableSource;
        this.f26293if = observableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        C0305do c0305do = new C0305do(observer, this.f26293if);
        observer.onSubscribe(c0305do);
        this.f26292do.subscribe(c0305do);
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f26865if;

    /* renamed from: io.reactivex.internal.operators.observable.static$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, CompletableObserver, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;
        public final Observer<? super T> downstream;
        public boolean inCompletable;
        public CompletableSource other;

        public Cdo(Observer<? super T> observer, CompletableSource completableSource) {
            this.downstream = observer;
            this.other = completableSource;
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
            if (this.inCompletable) {
                this.downstream.onComplete();
                return;
            }
            this.inCompletable = true;
            io.reactivex.internal.disposables.Cdo.replace(this, null);
            CompletableSource completableSource = this.other;
            this.other = null;
            completableSource.subscribe(this);
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
            if (!io.reactivex.internal.disposables.Cdo.setOnce(this, disposable) || this.inCompletable) {
                return;
            }
            this.downstream.onSubscribe(this);
        }
    }

    public Cstatic(Cnew<T> cnew, CompletableSource completableSource) {
        super(cnew);
        this.f26865if = completableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26865if));
    }
}

package io.reactivex.internal.operators.observable;

import android.support.v4.h4;
import android.support.v4.si0;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class e0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f26505if;

    /* renamed from: io.reactivex.internal.operators.observable.e0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;
        public final Observer<? super T> downstream;
        public volatile boolean mainDone;
        public volatile boolean otherDone;
        public final AtomicReference<Disposable> mainDisposable = new AtomicReference<>();
        public final C0317do otherObserver = new C0317do(this);
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.observable.e0$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0317do extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -2935427570954647017L;
            public final Cdo<?> parent;

            public C0317do(Cdo<?> cdo) {
                this.parent = cdo;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.otherComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(Observer<? super T> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.mainDisposable);
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.mainDisposable.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.mainDone = true;
            if (this.otherDone) {
                si0.m7411do(this.downstream, this, this.error);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            si0.m7412for(this.downstream, th, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            si0.m7415try(this.downstream, t, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.mainDisposable, disposable);
        }

        public void otherComplete() {
            this.otherDone = true;
            if (this.mainDone) {
                si0.m7411do(this.downstream, this, this.error);
            }
        }

        public void otherError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.mainDisposable);
            si0.m7412for(this.downstream, th, this, this.error);
        }
    }

    public e0(Cnew<T> cnew, CompletableSource completableSource) {
        super(cnew);
        this.f26505if = completableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        this.f26500do.subscribe(cdo);
        this.f26505if.subscribe(cdo.otherObserver);
    }
}

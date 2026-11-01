package io.reactivex.internal.operators.completable;

import android.support.v4.f8;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.completable.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cabstract<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25362do;

    /* renamed from: io.reactivex.internal.operators.completable.abstract$do, reason: invalid class name */
    public static final class Cdo extends f8<Void> implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        public final Observer<?> f25363do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f25364if;

        public Cdo(Observer<?> observer) {
            this.f25363do = observer;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25364if.dispose();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void poll() throws Exception {
            return null;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25364if.isDisposed();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f25363do.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f25363do.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f25364if, disposable)) {
                this.f25364if = disposable;
                this.f25363do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return i & 2;
        }
    }

    public Cabstract(CompletableSource completableSource) {
        this.f25362do = completableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f25362do.subscribe(new Cdo(observer));
    }
}

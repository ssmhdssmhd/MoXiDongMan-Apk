package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.single.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctransient<T, U> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27252do;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<U> f27253if;

    /* renamed from: io.reactivex.internal.operators.single.transient$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -622603812305745221L;
        public final SingleObserver<? super T> downstream;
        public final Cif other = new Cif(this);

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.downstream = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.other.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.other.dispose();
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || getAndSet(cdo) == cdo) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.other.dispose();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onSuccess(t);
            }
        }

        public void otherError(Throwable th) {
            Disposable andSet;
            Disposable disposable = get();
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo || (andSet = getAndSet(cdo)) == cdo) {
                jp1.l(th);
                return;
            }
            if (andSet != null) {
                andSet.dispose();
            }
            this.downstream.onError(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.transient$if, reason: invalid class name */
    public static final class Cif extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 5170026210238877381L;
        public final Cdo<?> parent;

        public Cif(Cdo<?> cdo) {
            this.parent = cdo;
        }

        public void dispose() {
            Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = get();
            Cfor cfor = Cfor.CANCELLED;
            if (subscription != cfor) {
                lazySet(cfor);
                this.parent.otherError(new CancellationException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (Cfor.cancel(this)) {
                this.parent.otherError(new CancellationException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    public Ctransient(SingleSource<T> singleSource, Publisher<U> publisher) {
        this.f27252do = singleSource;
        this.f27253if = publisher;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Cdo cdo = new Cdo(singleObserver);
        singleObserver.onSubscribe(cdo);
        this.f27253if.subscribe(cdo.other);
        this.f27252do.subscribe(cdo);
    }
}

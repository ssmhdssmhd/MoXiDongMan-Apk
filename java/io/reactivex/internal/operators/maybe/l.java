package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class l<T, U> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Publisher<U> f26191if;

    /* renamed from: io.reactivex.internal.operators.maybe.l$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2187421758664251153L;
        public final MaybeObserver<? super T> downstream;
        public final C0298do<U> other = new C0298do<>(this);

        /* renamed from: io.reactivex.internal.operators.maybe.l$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0298do<U> extends AtomicReference<Subscription> implements FlowableSubscriber<U> {
            private static final long serialVersionUID = -1266041316834525931L;
            public final Cdo<?, U> parent;

            public C0298do(Cdo<?, U> cdo) {
                this.parent = cdo;
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                this.parent.otherComplete();
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                this.parent.otherError(th);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                Cfor.cancel(this);
                this.parent.otherComplete();
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                Cfor.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            Cfor.cancel(this.other);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            Cfor.cancel(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            Cfor.cancel(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            Cfor.cancel(this.other);
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (getAndSet(cdo) != cdo) {
                this.downstream.onSuccess(t);
            }
        }

        public void otherComplete() {
            if (io.reactivex.internal.disposables.Cdo.dispose(this)) {
                this.downstream.onComplete();
            }
        }

        public void otherError(Throwable th) {
            if (io.reactivex.internal.disposables.Cdo.dispose(this)) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }
    }

    public l(MaybeSource<T> maybeSource, Publisher<U> publisher) {
        super(maybeSource);
        this.f26191if = publisher;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo cdo = new Cdo(maybeObserver);
        maybeObserver.onSubscribe(cdo);
        this.f26191if.subscribe(cdo.other);
        this.f26120do.subscribe(cdo);
    }
}

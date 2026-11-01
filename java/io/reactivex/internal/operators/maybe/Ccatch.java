package io.reactivex.internal.operators.maybe;

import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.maybe.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T, U> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Publisher<U> f26095if;

    /* renamed from: io.reactivex.internal.operators.maybe.catch$do, reason: invalid class name */
    public static final class Cdo<T, U> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T> f26096do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26097for;

        /* renamed from: if, reason: not valid java name */
        public final Publisher<U> f26098if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Publisher<U> publisher) {
            this.f26096do = new Cif<>(maybeObserver);
            this.f26098if = publisher;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26097for.dispose();
            this.f26097for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            Cfor.cancel(this.f26096do);
        }

        /* renamed from: do, reason: not valid java name */
        public void m29546do() {
            this.f26098if.subscribe(this.f26096do);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26096do.get() == Cfor.CANCELLED;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26097for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            m29546do();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26097for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26096do.error = th;
            m29546do();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26097for, disposable)) {
                this.f26097for = disposable;
                this.f26096do.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26097for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26096do.value = t;
            m29546do();
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.catch$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = -1215060610805418006L;
        public final MaybeObserver<? super T> downstream;
        public Throwable error;
        public T value;

        public Cif(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Throwable th = this.error;
            if (th != null) {
                this.downstream.onError(th);
                return;
            }
            T t = this.value;
            if (t != null) {
                this.downstream.onSuccess(t);
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Throwable th2 = this.error;
            if (th2 == null) {
                this.downstream.onError(th);
            } else {
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th2, th));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = get();
            Cfor cfor = Cfor.CANCELLED;
            if (subscription != cfor) {
                lazySet(cfor);
                subscription.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    public Ccatch(MaybeSource<T> maybeSource, Publisher<U> publisher) {
        super(maybeSource);
        this.f26095if = publisher;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26095if));
    }
}

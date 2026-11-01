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

/* renamed from: io.reactivex.internal.operators.maybe.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass<T, U> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Publisher<U> f26099if;

    /* renamed from: io.reactivex.internal.operators.maybe.class$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 706635022205076709L;
        public final MaybeObserver<? super T> downstream;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.class$if, reason: invalid class name */
    public static final class Cif<T> implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Cdo<T> f26100do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f26101for;

        /* renamed from: if, reason: not valid java name */
        public MaybeSource<T> f26102if;

        public Cif(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.f26100do = new Cdo<>(maybeObserver);
            this.f26102if = maybeSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26101for.cancel();
            this.f26101for = Cfor.CANCELLED;
            io.reactivex.internal.disposables.Cdo.dispose(this.f26100do);
        }

        /* renamed from: do, reason: not valid java name */
        public void m29547do() {
            MaybeSource<T> maybeSource = this.f26102if;
            this.f26102if = null;
            maybeSource.subscribe(this.f26100do);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.f26100do.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = this.f26101for;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription != cfor) {
                this.f26101for = cfor;
                m29547do();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = this.f26101for;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription == cfor) {
                jp1.l(th);
            } else {
                this.f26101for = cfor;
                this.f26100do.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = this.f26101for;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription != cfor) {
                subscription.cancel();
                this.f26101for = cfor;
                m29547do();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26101for, subscription)) {
                this.f26101for = subscription;
                this.f26100do.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cclass(MaybeSource<T> maybeSource, Publisher<U> publisher) {
        super(maybeSource);
        this.f26099if = publisher;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26099if.subscribe(new Cif(maybeObserver, this.f26120do));
    }
}

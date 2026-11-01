package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<T, U> extends jz1<U> implements FuseToFlowable<U> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25694do;

    /* renamed from: for, reason: not valid java name */
    public final BiConsumer<? super U, ? super T> f25695for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends U> f25696if;

    /* renamed from: io.reactivex.internal.operators.flowable.import$do, reason: invalid class name */
    public static final class Cdo<T, U> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super U> f25697do;

        /* renamed from: for, reason: not valid java name */
        public final U f25698for;

        /* renamed from: if, reason: not valid java name */
        public final BiConsumer<? super U, ? super T> f25699if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f25700new;

        /* renamed from: try, reason: not valid java name */
        public boolean f25701try;

        public Cdo(SingleObserver<? super U> singleObserver, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f25697do = singleObserver;
            this.f25699if = biConsumer;
            this.f25698for = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25700new.cancel();
            this.f25700new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25700new == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25701try) {
                return;
            }
            this.f25701try = true;
            this.f25700new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25697do.onSuccess(this.f25698for);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25701try) {
                jp1.l(th);
                return;
            }
            this.f25701try = true;
            this.f25700new = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25697do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25701try) {
                return;
            }
            try {
                this.f25699if.accept(this.f25698for, t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25700new.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25700new, subscription)) {
                this.f25700new = subscription;
                this.f25697do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cimport(Cfor<T> cfor, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        this.f25694do = cfor;
        this.f25696if = callable;
        this.f25695for = biConsumer;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<U> fuseToFlowable() {
        return jp1.h(new Cwhile(this.f25694do, this.f25696if, this.f25695for));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super U> singleObserver) {
        try {
            this.f25694do.m5(new Cdo(singleObserver, Cif.m29468else(this.f25696if.call(), "The initialSupplier returned a null value"), this.f25695for));
        } catch (Throwable th) {
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}

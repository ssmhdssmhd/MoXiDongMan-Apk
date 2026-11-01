package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class m2<T, U extends Collection<? super T>> extends jz1<U> implements FuseToFlowable<U> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25749do;

    /* renamed from: if, reason: not valid java name */
    public final Callable<U> f25750if;

    /* renamed from: io.reactivex.internal.operators.flowable.m2$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super U> f25751do;

        /* renamed from: for, reason: not valid java name */
        public U f25752for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25753if;

        public Cdo(SingleObserver<? super U> singleObserver, U u) {
            this.f25751do = singleObserver;
            this.f25752for = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f25753if.cancel();
            this.f25753if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25753if == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25753if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25751do.onSuccess(this.f25752for);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25752for = null;
            this.f25753if = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
            this.f25751do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25752for.add(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f25753if, subscription)) {
                this.f25753if = subscription;
                this.f25751do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public m2(Cfor<T> cfor) {
        this(cfor, io.reactivex.internal.util.Cdo.asCallable());
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Cfor<U> fuseToFlowable() {
        return jp1.h(new l2(this.f25749do, this.f25750if));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super U> singleObserver) {
        try {
            this.f25749do.m5(new Cdo(singleObserver, (Collection) Cif.m29468else(this.f25750if.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }

    public m2(Cfor<T> cfor, Callable<U> callable) {
        this.f25749do = cfor;
        this.f25750if = callable;
    }
}

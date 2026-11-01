package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t41;
import android.support.v4.xz1;
import io.reactivex.Cfor;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class f0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, t41<T>> {

    /* renamed from: io.reactivex.internal.operators.flowable.f0$do, reason: invalid class name */
    public static final class Cdo<T> extends xz1<T, t41<T>> {
        private static final long serialVersionUID = -3740826063558713822L;

        public Cdo(Subscriber<? super t41<T>> subscriber) {
            super(subscriber);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            complete(t41.m7720do());
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            complete(t41.m7722if(th));
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t41.m7721for(t));
        }

        @Override // android.support.v4.xz1
        public void onDrop(t41<T> t41Var) {
            if (t41Var.m7724else()) {
                jp1.l(t41Var.m7726new());
            }
        }
    }

    public f0(Cfor<T> cfor) {
        super(cfor);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super t41<T>> subscriber) {
        this.f25614if.m5(new Cdo(subscriber));
    }
}

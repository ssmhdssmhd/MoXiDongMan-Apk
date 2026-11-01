package com.uber.autodispose;

import android.support.v4.ub1;
import io.reactivex.CompletableSource;
import org.reactivestreams.Subscriber;

/* renamed from: com.uber.autodispose.catch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccatch<T> extends ub1<T> implements ParallelFlowableSubscribeProxy<T> {

    /* renamed from: do, reason: not valid java name */
    private final ub1<T> f20764do;

    /* renamed from: if, reason: not valid java name */
    private final CompletableSource f20765if;

    public Ccatch(ub1<T> ub1Var, CompletableSource completableSource) {
        this.f20764do = ub1Var;
        this.f20765if = completableSource;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f20764do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[subscriberArr.length];
            for (int i = 0; i < subscriberArr.length; i++) {
                subscriberArr2[i] = new Cimport(this.f20765if, subscriberArr[i]);
            }
            this.f20764do.subscribe(subscriberArr2);
        }
    }
}

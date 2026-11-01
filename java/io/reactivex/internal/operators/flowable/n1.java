package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import io.reactivex.Cfor;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class n1<T> extends Cdo<T, T> {
    public n1(Cfor<T> cfor) {
        super(cfor);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new bx1(subscriber));
    }
}

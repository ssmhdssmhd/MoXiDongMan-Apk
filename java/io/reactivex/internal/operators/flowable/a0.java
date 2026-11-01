package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableOperator;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class a0<R, T> extends Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final FlowableOperator<? extends R, ? super T> f25526for;

    public a0(Cfor<T> cfor, FlowableOperator<? extends R, ? super T> flowableOperator) {
        super(cfor);
        this.f25526for = flowableOperator;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        try {
            Subscriber<? super Object> subscriberApply = this.f25526for.apply(subscriber);
            if (subscriberApply != null) {
                this.f25614if.subscribe(subscriberApply);
                return;
            }
            throw new NullPointerException("Operator " + this.f25526for + " returned a null Subscriber");
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}

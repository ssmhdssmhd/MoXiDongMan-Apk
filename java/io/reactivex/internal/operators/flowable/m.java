package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class m<T> extends Cfor<T> implements Callable<T> {

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends T> f25743if;

    public m(Callable<? extends T> callable) {
        this.f25743if = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) Cif.m29468else(this.f25743if.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        ez ezVar = new ez(subscriber);
        subscriber.onSubscribe(ezVar);
        try {
            ezVar.complete(Cif.m29468else(this.f25743if.call(), "The callable returned a null value"));
        } catch (Throwable th) {
            t80.m7781if(th);
            if (ezVar.isCancelled()) {
                jp1.l(th);
            } else {
                subscriber.onError(th);
            }
        }
    }
}

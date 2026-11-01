package android.support.v4;

import io.reactivex.Cfor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class ad0<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final long f102for;

    /* renamed from: if, reason: not valid java name */
    public final Future<? extends T> f103if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f104new;

    public ad0(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f103if = future;
        this.f102for = j;
        this.f104new = timeUnit;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        ez ezVar = new ez(subscriber);
        subscriber.onSubscribe(ezVar);
        try {
            TimeUnit timeUnit = this.f104new;
            T t = timeUnit != null ? this.f103if.get(this.f102for, timeUnit) : this.f103if.get();
            if (t == null) {
                subscriber.onError(new NullPointerException("The future returned null"));
            } else {
                ezVar.complete(t);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            if (ezVar.isCancelled()) {
                return;
            }
            subscriber.onError(th);
        }
    }
}

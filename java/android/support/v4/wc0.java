package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cdo;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class wc0<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends Publisher<? extends T>> f7461if;

    public wc0(Callable<? extends Publisher<? extends T>> callable) {
        this.f7461if = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            ((Publisher) Cif.m29468else(this.f7461if.call(), "The publisher supplied is null")).subscribe(subscriber);
        } catch (Throwable th) {
            t80.m7781if(th);
            Cdo.error(th, subscriber);
        }
    }
}

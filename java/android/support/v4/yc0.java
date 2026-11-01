package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cdo;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class yc0<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends Throwable> f8184if;

    public yc0(Callable<? extends Throwable> callable) {
        this.f8184if = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            th = (Throwable) Cif.m29468else(this.f8184if.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            t80.m7781if(th);
        }
        Cdo.error(th, subscriber);
    }
}

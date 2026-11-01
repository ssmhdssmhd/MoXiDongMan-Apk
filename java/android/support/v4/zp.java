package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.CompletableSource;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class zp<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f8629if;

    public zp(CompletableSource completableSource) {
        this.f8629if = completableSource;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f8629if.subscribe(new z22(subscriber));
    }
}

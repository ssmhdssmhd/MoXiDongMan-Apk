package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.internal.subscriptions.Cdo;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class dd0 extends Cfor<Object> {

    /* renamed from: if, reason: not valid java name */
    public static final Cfor<Object> f996if = new dd0();

    private dd0() {
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Object> subscriber) {
        subscriber.onSubscribe(Cdo.INSTANCE);
    }
}

package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.subscriptions.Cdo;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class xc0 extends Cfor<Object> implements ScalarCallable<Object> {

    /* renamed from: if, reason: not valid java name */
    public static final Cfor<Object> f7866if = new xc0();

    private xc0() {
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Object> subscriber) {
        Cdo.complete(subscriber);
    }
}

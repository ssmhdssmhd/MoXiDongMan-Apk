package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.internal.fuseable.ScalarCallable;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class cd0<T> extends Cfor<T> implements ScalarCallable<T> {

    /* renamed from: if, reason: not valid java name */
    private final T f738if;

    public cd0(T t) {
        this.f738if = t;
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f738if;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        subscriber.onSubscribe(new wr1(subscriber, this.f738if));
    }
}

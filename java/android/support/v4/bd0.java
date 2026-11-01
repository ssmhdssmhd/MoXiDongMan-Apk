package android.support.v4;

import io.reactivex.Cfor;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class bd0<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T> f414if;

    public bd0(Publisher<? extends T> publisher) {
        this.f414if = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f414if.subscribe(subscriber);
    }
}

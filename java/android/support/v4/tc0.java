package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class tc0<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final int f6473for;

    /* renamed from: if, reason: not valid java name */
    public final oq<? extends T> f6474if;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super Disposable> f6475new;

    /* renamed from: try, reason: not valid java name */
    public final AtomicInteger f6476try = new AtomicInteger();

    public tc0(oq<? extends T> oqVar, int i, Consumer<? super Disposable> consumer) {
        this.f6474if = oqVar;
        this.f6473for = i;
        this.f6475new = consumer;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f6474if.subscribe((Subscriber<? super Object>) subscriber);
        if (this.f6476try.incrementAndGet() == this.f6473for) {
            this.f6474if.P7(this.f6475new);
        }
    }
}

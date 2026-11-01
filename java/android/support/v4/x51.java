package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class x51<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final pq<? extends T> f7779do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super Disposable> f7780for;

    /* renamed from: if, reason: not valid java name */
    public final int f7781if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicInteger f7782new = new AtomicInteger();

    public x51(pq<? extends T> pqVar, int i, Consumer<? super Disposable> consumer) {
        this.f7779do = pqVar;
        this.f7781if = i;
        this.f7780for = consumer;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f7779do.subscribe((Observer<? super Object>) observer);
        if (this.f7782new.incrementAndGet() == this.f7781if) {
            this.f7779do.mo6179try(this.f7780for);
        }
    }
}

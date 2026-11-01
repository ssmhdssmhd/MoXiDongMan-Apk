package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.observers.Cif;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class c61<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Future<? extends T> f610do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f611for;

    /* renamed from: if, reason: not valid java name */
    public final long f612if;

    public c61(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f610do = future;
        this.f612if = j;
        this.f611for = timeUnit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cif cif = new Cif(observer);
        observer.onSubscribe(cif);
        if (cif.isDisposed()) {
            return;
        }
        try {
            TimeUnit timeUnit = this.f611for;
            cif.complete(io.reactivex.internal.functions.Cif.m29468else(timeUnit != null ? this.f610do.get(this.f612if, timeUnit) : this.f610do.get(), "Future returned null"));
        } catch (Throwable th) {
            t80.m7781if(th);
            if (cif.isDisposed()) {
                return;
            }
            observer.onError(th);
        }
    }
}

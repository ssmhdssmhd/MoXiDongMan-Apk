package android.support.v4;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zn1<T> implements SingleObserver<T> {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Disposable> f8620do;

    /* renamed from: if, reason: not valid java name */
    public final SingleObserver<? super T> f8621if;

    public zn1(AtomicReference<Disposable> atomicReference, SingleObserver<? super T> singleObserver) {
        this.f8620do = atomicReference;
        this.f8621if = singleObserver;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f8621if.onError(th);
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        Cdo.replace(this.f8620do, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f8621if.onSuccess(t);
    }
}

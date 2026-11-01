package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;

/* loaded from: classes3.dex */
public final class d61<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f943do;

    public d61(ObservableSource<T> observableSource) {
        this.f943do = observableSource;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f943do.subscribe(observer);
    }
}

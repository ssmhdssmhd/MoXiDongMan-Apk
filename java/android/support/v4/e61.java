package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class e61 extends Cnew<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final Cnew<Object> f1268do = new e61();

    private e61() {
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Object> observer) {
        observer.onSubscribe(Cif.NEVER);
    }
}

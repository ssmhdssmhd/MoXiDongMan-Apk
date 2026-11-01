package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.disposables.Cif;
import io.reactivex.internal.fuseable.ScalarCallable;

/* loaded from: classes3.dex */
public final class a61 extends Cnew<Object> implements ScalarCallable<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final Cnew<Object> f47do = new a61();

    private a61() {
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Object> observer) {
        Cif.complete(observer);
    }
}

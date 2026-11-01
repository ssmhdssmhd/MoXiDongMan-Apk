package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.internal.disposables.Cif;
import io.reactivex.internal.fuseable.ScalarCallable;

/* loaded from: classes3.dex */
public final class iy0 extends fy0<Object> implements ScalarCallable<Object> {

    /* renamed from: do, reason: not valid java name */
    public static final iy0 f2934do = new iy0();

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super Object> maybeObserver) {
        Cif.complete(maybeObserver);
    }
}

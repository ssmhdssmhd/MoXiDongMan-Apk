package android.support.v4;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class hy0<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends MaybeSource<? extends T>> f2560do;

    public hy0(Callable<? extends MaybeSource<? extends T>> callable) {
        this.f2560do = callable;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        try {
            ((MaybeSource) Cif.m29468else(this.f2560do.call(), "The maybeSupplier returned a null MaybeSource")).subscribe(maybeObserver);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, maybeObserver);
        }
    }
}

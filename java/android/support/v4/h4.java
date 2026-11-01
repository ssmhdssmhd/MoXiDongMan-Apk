package android.support.v4;

import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class h4 extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    public boolean addThrowable(Throwable th) {
        return Ccase.m29713do(this, th);
    }

    public boolean isTerminated() {
        return get() == Ccase.f27435do;
    }

    public Throwable terminate() {
        return Ccase.m29714for(this);
    }
}

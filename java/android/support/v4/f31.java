package android.support.v4;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class f31 {

    /* renamed from: do, reason: not valid java name */
    private final Executor f1680do;

    public f31(Executor executor) {
        if (executor == null) {
            throw new IllegalStateException("Executor must not be null");
        }
        this.f1680do = executor;
    }

    /* renamed from: do, reason: not valid java name */
    public Executor mo2130do() {
        return this.f1680do;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void mo2131if(int i, long j, int i2);
}

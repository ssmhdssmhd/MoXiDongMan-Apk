package android.support.v4;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class e31 {

    /* renamed from: do, reason: not valid java name */
    private final Executor f1242do;

    public e31(Executor executor) {
        if (executor == null) {
            throw new IllegalStateException("Executor must not be null");
        }
        this.f1242do = executor;
    }

    /* renamed from: do, reason: not valid java name */
    public Executor mo1641do() {
        return this.f1242do;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void mo1642if(int i, long j, int i2);
}

package android.support.v4;

import java.util.concurrent.ThreadFactory;
import rx.Cif;
import rx.internal.schedulers.Celse;

/* loaded from: classes4.dex */
public final class i31 extends Cif {

    /* renamed from: do, reason: not valid java name */
    private final ThreadFactory f2620do;

    public i31(ThreadFactory threadFactory) {
        this.f2620do = threadFactory;
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Celse(this.f2620do);
    }
}

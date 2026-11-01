package android.support.v4;

import io.reactivex.Ctry;
import io.reactivex.internal.schedulers.Cgoto;
import io.reactivex.internal.schedulers.Cthis;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final class k31 extends Ctry {

    /* renamed from: if, reason: not valid java name */
    public final ThreadFactory f3266if;

    /* renamed from: for, reason: not valid java name */
    private static final String f3263for = "RxNewThreadScheduler";

    /* renamed from: try, reason: not valid java name */
    private static final String f3265try = "rx2.newthread-priority";

    /* renamed from: new, reason: not valid java name */
    private static final Cthis f3264new = new Cthis(f3263for, Math.max(1, Math.min(10, Integer.getInteger(f3265try, 5).intValue())));

    public k31() {
        this(f3264new);
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if, reason: not valid java name */
    public Ctry.Cfor mo4229if() {
        return new Cgoto(this.f3266if);
    }

    public k31(ThreadFactory threadFactory) {
        this.f3266if = threadFactory;
    }
}

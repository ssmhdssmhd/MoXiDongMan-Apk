package android.support.v4;

/* loaded from: classes2.dex */
public final class ld0 extends kl1 {

    /* renamed from: do, reason: not valid java name */
    private static final ld0 f3631do;

    static {
        ld0 ld0Var = new ld0();
        f3631do = ld0Var;
        ld0Var.setStackTrace(kl1.NO_TRACE);
    }

    private ld0() {
    }

    public static ld0 getFormatInstance() {
        return kl1.isStackTrace ? new ld0() : f3631do;
    }

    private ld0(Throwable th) {
        super(th);
    }

    public static ld0 getFormatInstance(Throwable th) {
        return kl1.isStackTrace ? new ld0(th) : f3631do;
    }
}

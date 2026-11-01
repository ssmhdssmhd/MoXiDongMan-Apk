package android.support.v4;

/* loaded from: classes2.dex */
public final class ll extends kl1 {

    /* renamed from: do, reason: not valid java name */
    private static final ll f3691do;

    static {
        ll llVar = new ll();
        f3691do = llVar;
        llVar.setStackTrace(kl1.NO_TRACE);
    }

    private ll() {
    }

    public static ll getChecksumInstance() {
        return kl1.isStackTrace ? new ll() : f3691do;
    }

    private ll(Throwable th) {
        super(th);
    }

    public static ll getChecksumInstance(Throwable th) {
        return kl1.isStackTrace ? new ll(th) : f3691do;
    }
}

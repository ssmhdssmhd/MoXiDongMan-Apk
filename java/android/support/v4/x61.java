package android.support.v4;

/* loaded from: classes4.dex */
public class x61 extends RuntimeException {
    private static final long serialVersionUID = -419289748403337611L;

    public x61(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public x61(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}

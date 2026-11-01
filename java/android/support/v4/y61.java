package android.support.v4;

/* loaded from: classes4.dex */
public class y61 extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public y61(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public y61(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}

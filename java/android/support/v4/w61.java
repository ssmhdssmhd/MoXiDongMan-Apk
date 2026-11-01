package android.support.v4;

/* loaded from: classes4.dex */
public final class w61 extends RuntimeException {
    private static final long serialVersionUID = 8622579378868820554L;

    public w61(Throwable th) {
        super(th == null ? new NullPointerException() : th);
    }

    public w61(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }
}

package android.support.v4;

/* loaded from: classes4.dex */
public final class qc2 extends RuntimeException {
    private static final long serialVersionUID = 4594672310593167598L;

    public qc2(Throwable th) {
        super(th == null ? new NullPointerException() : th);
    }

    public qc2(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }
}

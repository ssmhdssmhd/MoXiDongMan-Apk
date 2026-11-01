package android.support.v4;

/* loaded from: classes3.dex */
public class lx extends IllegalStateException {
    private Throwable cause;

    public lx(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

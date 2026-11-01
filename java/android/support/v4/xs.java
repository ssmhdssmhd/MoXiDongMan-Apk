package android.support.v4;

/* loaded from: classes3.dex */
public class xs extends Exception {
    private Throwable cause;

    public xs() {
    }

    public xs(String str) {
        super(str);
    }

    public xs(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

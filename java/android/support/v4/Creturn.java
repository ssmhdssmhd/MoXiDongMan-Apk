package android.support.v4;

/* renamed from: android.support.v4.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn extends IllegalStateException {
    private Throwable cause;

    public Creturn(String str) {
        super(str);
    }

    public Creturn(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

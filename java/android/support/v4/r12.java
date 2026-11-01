package android.support.v4;

/* loaded from: classes3.dex */
public class r12 extends RuntimeException {
    private Throwable _e;

    public r12(String str, Throwable th) {
        super(str);
        this._e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this._e;
    }
}

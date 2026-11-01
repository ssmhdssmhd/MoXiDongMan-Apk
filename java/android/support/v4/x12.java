package android.support.v4;

/* loaded from: classes3.dex */
public class x12 extends Exception {
    public Throwable _e;

    public x12(String str, Throwable th) {
        super(str);
        this._e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this._e;
    }
}

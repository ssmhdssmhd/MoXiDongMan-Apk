package android.support.v4;

/* loaded from: classes3.dex */
public class y12 extends Exception {
    public Throwable _e;

    public y12(String str, Throwable th) {
        super(str);
        this._e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this._e;
    }
}

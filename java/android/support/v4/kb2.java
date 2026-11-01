package android.support.v4;

/* loaded from: classes3.dex */
public class kb2 extends RuntimeException {
    public kb2(Throwable th) {
        super(th);
    }

    public Throwable getUndeclaredThrowable() {
        return getCause();
    }

    public kb2(String str, Throwable th) {
        super(str, th);
    }
}

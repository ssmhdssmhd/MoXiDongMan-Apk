package android.support.v4;

/* loaded from: classes2.dex */
public class g91 extends RuntimeException {
    public g91(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        if (!i5.f2625if) {
            return this;
        }
        return super.fillInStackTrace();
    }
}

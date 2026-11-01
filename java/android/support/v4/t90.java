package android.support.v4;

import java.security.spec.InvalidKeySpecException;

/* loaded from: classes3.dex */
public class t90 extends InvalidKeySpecException {
    private Throwable cause;

    public t90(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

package android.support.v4;

import java.io.IOException;

/* loaded from: classes3.dex */
public class zc1 extends IOException {
    private Throwable cause;

    public zc1(String str) {
        super(str);
    }

    public zc1(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

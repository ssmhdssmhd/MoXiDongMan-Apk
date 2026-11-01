package android.support.v4;

import java.io.IOException;

/* loaded from: classes3.dex */
public class pl extends IOException {
    private static final long serialVersionUID = 1;
    private final Throwable cause;

    public pl(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

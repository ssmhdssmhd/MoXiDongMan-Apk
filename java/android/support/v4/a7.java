package android.support.v4;

import javax.crypto.BadPaddingException;

/* loaded from: classes3.dex */
public class a7 extends BadPaddingException {
    private final Throwable cause;

    public a7(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

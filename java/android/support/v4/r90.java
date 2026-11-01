package android.support.v4;

import java.io.IOException;
import org.bouncycastle.jce.exception.ExtException;

/* loaded from: classes3.dex */
public class r90 extends IOException implements ExtException {
    private Throwable cause;

    public r90(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.bouncycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}

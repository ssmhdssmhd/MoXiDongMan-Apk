package android.support.v4;

import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import org.bouncycastle.jce.exception.ExtException;

/* loaded from: classes3.dex */
public class o90 extends CertPathBuilderException implements ExtException {
    private Throwable cause;

    public o90(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public o90(String str, Throwable th, CertPath certPath, int i) {
        super(str, th);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.bouncycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}

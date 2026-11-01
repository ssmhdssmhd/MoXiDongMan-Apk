package android.support.v4;

import org.bouncycastle.jce.exception.ExtException;

/* loaded from: classes3.dex */
public class a2 extends Exception implements ExtException {
    private Throwable _underlyingException;

    public a2(String str) {
        this(str, null);
    }

    public a2(String str, Throwable th) {
        super(str);
        this._underlyingException = th;
    }

    @Override // java.lang.Throwable, org.bouncycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this._underlyingException;
    }

    public Throwable getUnderlyingException() {
        return this._underlyingException;
    }
}

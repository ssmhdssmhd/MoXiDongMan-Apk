package android.support.v4;

import org.apache.commons.lang3.concurrent.Ccase;

/* loaded from: classes3.dex */
public class nq extends RuntimeException {
    private static final long serialVersionUID = -6582182735562919670L;

    public nq() {
    }

    public nq(Throwable th) {
        super(Ccase.m32295do(th));
    }

    public nq(String str, Throwable th) {
        super(str, Ccase.m32295do(th));
    }
}

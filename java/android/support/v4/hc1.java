package android.support.v4;

import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public class hc1 extends CancellationException {
    public hc1() {
    }

    public hc1(String str) {
        super(str);
    }

    public hc1(Throwable th) {
        initCause(th);
    }

    public hc1(String str, Throwable th) {
        super(str);
        initCause(th);
    }
}

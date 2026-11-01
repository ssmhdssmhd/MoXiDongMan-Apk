package android.support.v4;

import java.util.HashSet;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class u3 extends RuntimeException {
    private static final long serialVersionUID = 2038859767182585852L;

    public u3(String str) {
        super(str);
    }

    public static u3 find(Throwable th) {
        HashSet hashSet = new HashSet();
        while (!(th instanceof u3)) {
            if (th != null && th.getCause() != null) {
                th = th.getCause();
                if (!hashSet.add(th)) {
                }
            }
            return null;
        }
        return (u3) th;
    }

    public void attachTo(Throwable th) {
        HashSet hashSet = new HashSet();
        while (th.getCause() != null) {
            th = th.getCause();
            if (!hashSet.add(th)) {
                Cif.m39151protected(this);
                return;
            }
        }
        try {
            th.initCause(this);
        } catch (IllegalStateException unused) {
            Cif.m39151protected(new RuntimeException("Received an exception with a cause set to null, instead of being unset. To fix this, look down the chain of causes. The last exception had a cause explicitly set to null. It should be unset instead.", th));
        }
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }
}

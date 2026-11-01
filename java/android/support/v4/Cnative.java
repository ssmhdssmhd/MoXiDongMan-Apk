package android.support.v4;

import java.io.IOException;

/* renamed from: android.support.v4.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative extends IOException {
    private Throwable cause;

    public Cnative(String str) {
        super(str);
    }

    public Cnative(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}

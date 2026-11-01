package android.support.v4;

import android.os.Trace;

/* loaded from: classes3.dex */
public class gs1 implements AutoCloseable {
    private gs1(String str) {
        Trace.beginSection(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static gs1 m2780do(String str) {
        return new gs1(str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        Trace.endSection();
    }
}

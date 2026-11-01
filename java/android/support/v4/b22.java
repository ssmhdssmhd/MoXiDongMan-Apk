package android.support.v4;

import android.os.StrictMode;
import java.io.Closeable;

/* loaded from: classes3.dex */
public final class b22 implements Closeable {

    /* renamed from: do, reason: not valid java name */
    private final StrictMode.ThreadPolicy f314do;

    /* renamed from: if, reason: not valid java name */
    private final StrictMode.VmPolicy f315if;

    private b22(StrictMode.ThreadPolicy threadPolicy, StrictMode.VmPolicy vmPolicy) {
        this.f314do = threadPolicy;
        this.f315if = vmPolicy;
    }

    /* renamed from: do, reason: not valid java name */
    public static b22 m427do() {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
        return new b22(threadPolicy);
    }

    /* renamed from: for, reason: not valid java name */
    public static b22 m428for() {
        return new b22(StrictMode.allowThreadDiskReads());
    }

    /* renamed from: if, reason: not valid java name */
    public static b22 m429if() {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
        return new b22(vmPolicy);
    }

    /* renamed from: new, reason: not valid java name */
    public static b22 m430new() {
        return new b22(StrictMode.allowThreadDiskWrites());
    }

    /* renamed from: try, reason: not valid java name */
    public static b22 m431try() {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitCustomSlowCalls().build());
        return new b22(threadPolicy);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        StrictMode.ThreadPolicy threadPolicy = this.f314do;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        StrictMode.VmPolicy vmPolicy = this.f315if;
        if (vmPolicy != null) {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    private b22(StrictMode.ThreadPolicy threadPolicy) {
        this(threadPolicy, null);
    }

    private b22(StrictMode.VmPolicy vmPolicy) {
        this(null, vmPolicy);
    }
}

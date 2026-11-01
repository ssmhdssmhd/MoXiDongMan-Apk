package android.support.v4;

import io.reactivex.internal.util.Ccase;

/* loaded from: classes3.dex */
public final class t80 {
    private t80() {
        throw new IllegalStateException("No instances!");
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public static RuntimeException m7780do(@b41 Throwable th) {
        throw Ccase.m29712case(th);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7781if(@b41 Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}

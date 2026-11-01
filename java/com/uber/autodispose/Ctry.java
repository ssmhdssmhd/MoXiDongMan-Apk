package com.uber.autodispose;

import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.uber.autodispose.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry {
    private Ctry() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static long m24677do(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, m24678if(j2, j)));
        return j2;
    }

    /* renamed from: if, reason: not valid java name */
    private static long m24678if(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }
}

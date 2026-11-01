package android.support.v4;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

@li0
/* loaded from: classes2.dex */
public final class i4 {
    private i4() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <V> AtomicReference<V> m3260do() {
        return new AtomicReference<>();
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> AtomicReferenceArray<E> m3261for(int i) {
        return new AtomicReferenceArray<>(i);
    }

    /* renamed from: if, reason: not valid java name */
    public static <V> AtomicReference<V> m3262if(@b51 V v) {
        return new AtomicReference<>(v);
    }

    /* renamed from: new, reason: not valid java name */
    public static <E> AtomicReferenceArray<E> m3263new(E[] eArr) {
        return new AtomicReferenceArray<>(eArr);
    }
}

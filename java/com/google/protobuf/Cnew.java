package com.google.protobuf;

/* renamed from: com.google.protobuf.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final Class<?> f17115do = m20908do("libcore.io.Memory");

    /* renamed from: if, reason: not valid java name */
    private static final boolean f17116if;

    static {
        f17116if = m20908do("org.robolectric.Robolectric") != null;
    }

    /* renamed from: do, reason: not valid java name */
    private static <T> Class<T> m20908do(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m20909for() {
        return (f17115do == null || f17116if) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    public static Class<?> m20910if() {
        return f17115do;
    }
}

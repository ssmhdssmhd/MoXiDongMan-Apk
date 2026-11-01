package com.google.protobuf;

/* loaded from: classes2.dex */
final class b {

    /* renamed from: do, reason: not valid java name */
    private static final Cinstanceof<?> f16615do = new a();

    /* renamed from: if, reason: not valid java name */
    private static final Cinstanceof<?> f16616if = m19799for();

    /* renamed from: do, reason: not valid java name */
    public static Cinstanceof<?> m19798do() {
        Cinstanceof<?> cinstanceof = f16616if;
        if (cinstanceof != null) {
            return cinstanceof;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: for, reason: not valid java name */
    private static Cinstanceof<?> m19799for() {
        try {
            return (Cinstanceof) Class.forName("com.google.protobuf.synchronized").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cinstanceof<?> m19800if() {
        return f16615do;
    }
}

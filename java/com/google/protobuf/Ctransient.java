package com.google.protobuf;

/* renamed from: com.google.protobuf.transient, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctransient {

    /* renamed from: do, reason: not valid java name */
    public static final String f17252do = "com.google.protobuf.ExtensionRegistry";

    /* renamed from: if, reason: not valid java name */
    public static final Class<?> f17253if = m21332try();

    /* renamed from: do, reason: not valid java name */
    public static Cimplements m21328do() {
        Cimplements cimplementsM21329for = m21329for("newInstance");
        return cimplementsM21329for != null ? cimplementsM21329for : new Cimplements();
    }

    /* renamed from: for, reason: not valid java name */
    private static final Cimplements m21329for(String str) {
        Class<?> cls = f17253if;
        if (cls == null) {
            return null;
        }
        try {
            return (Cimplements) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cimplements m21330if() {
        Cimplements cimplementsM21329for = m21329for("getEmptyRegistry");
        return cimplementsM21329for != null ? cimplementsM21329for : Cimplements.f16982case;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m21331new(Cimplements cimplements) {
        Class<?> cls = f17253if;
        return cls != null && cls.isAssignableFrom(cimplements.getClass());
    }

    /* renamed from: try, reason: not valid java name */
    public static Class<?> m21332try() {
        try {
            return Class.forName("com.google.protobuf.protected");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}

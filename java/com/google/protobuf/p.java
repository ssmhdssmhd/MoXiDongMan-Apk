package com.google.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class p {
    public static final p BOOLEAN;
    public static final p BYTE_STRING;
    public static final p DOUBLE;
    public static final p ENUM;
    public static final p FLOAT;
    public static final p INT;
    public static final p LONG;
    public static final p MESSAGE;
    public static final p STRING;
    public static final p VOID;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ p[] f17142do;
    private final Class<?> boxedType;
    private final Object defaultDefault;
    private final Class<?> type;

    static {
        p pVar = new p("VOID", 0, Void.class, Void.class, null);
        VOID = pVar;
        Class cls = Integer.TYPE;
        p pVar2 = new p("INT", 1, cls, Integer.class, 0);
        INT = pVar2;
        p pVar3 = new p("LONG", 2, Long.TYPE, Long.class, 0L);
        LONG = pVar3;
        p pVar4 = new p("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        FLOAT = pVar4;
        p pVar5 = new p("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        DOUBLE = pVar5;
        p pVar6 = new p("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        BOOLEAN = pVar6;
        p pVar7 = new p("STRING", 6, String.class, String.class, "");
        STRING = pVar7;
        p pVar8 = new p("BYTE_STRING", 7, ByteString.class, ByteString.class, ByteString.EMPTY);
        BYTE_STRING = pVar8;
        p pVar9 = new p("ENUM", 8, cls, Integer.class, null);
        ENUM = pVar9;
        p pVar10 = new p("MESSAGE", 9, Object.class, Object.class, null);
        MESSAGE = pVar10;
        f17142do = new p[]{pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8, pVar9, pVar10};
    }

    private p(String str, int i, Class cls, Class cls2, Object obj) {
        this.type = cls;
        this.boxedType = cls2;
        this.defaultDefault = obj;
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) f17142do.clone();
    }

    public Class<?> getBoxedType() {
        return this.boxedType;
    }

    public Object getDefaultDefault() {
        return this.defaultDefault;
    }

    public Class<?> getType() {
        return this.type;
    }

    public boolean isValidType(Class<?> cls) {
        return this.type.isAssignableFrom(cls);
    }
}

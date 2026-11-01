package com.google.protobuf;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class c2 {

    /* renamed from: break, reason: not valid java name */
    public static final int f16681break = 4;

    /* renamed from: case, reason: not valid java name */
    public static final int f16682case = 0;

    /* renamed from: catch, reason: not valid java name */
    public static final int f16683catch = 5;

    /* renamed from: class, reason: not valid java name */
    public static final int f16684class = 3;

    /* renamed from: const, reason: not valid java name */
    public static final int f16685const = 7;

    /* renamed from: do, reason: not valid java name */
    public static final int f16686do = 4;

    /* renamed from: else, reason: not valid java name */
    public static final int f16687else = 1;

    /* renamed from: final, reason: not valid java name */
    public static final int f16688final = 1;

    /* renamed from: for, reason: not valid java name */
    public static final int f16689for = 5;

    /* renamed from: goto, reason: not valid java name */
    public static final int f16690goto = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f16691if = 8;

    /* renamed from: new, reason: not valid java name */
    public static final int f16694new = 10;

    /* renamed from: super, reason: not valid java name */
    public static final int f16696super = 2;

    /* renamed from: this, reason: not valid java name */
    public static final int f16697this = 3;

    /* renamed from: throw, reason: not valid java name */
    public static final int f16698throw = 3;

    /* renamed from: try, reason: not valid java name */
    public static final int f16699try = 10;

    /* renamed from: while, reason: not valid java name */
    public static final int f16700while = m19963for(1, 3);

    /* renamed from: import, reason: not valid java name */
    public static final int f16692import = m19963for(1, 4);

    /* renamed from: native, reason: not valid java name */
    public static final int f16693native = m19963for(2, 0);

    /* renamed from: public, reason: not valid java name */
    public static final int f16695public = m19963for(3, 2);

    /* renamed from: com.google.protobuf.c2$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16701do;

        static {
            int[] iArr = new int[Cif.values().length];
            f16701do = iArr;
            try {
                iArr[Cif.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16701do[Cif.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16701do[Cif.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16701do[Cif.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16701do[Cif.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16701do[Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16701do[Cif.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16701do[Cif.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16701do[Cif.BYTES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16701do[Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16701do[Cif.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16701do[Cif.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16701do[Cif.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16701do[Cif.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16701do[Cif.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16701do[Cif.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16701do[Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16701do[Cif.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: com.google.protobuf.c2$for, reason: invalid class name */
    public enum Cfor {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);

        private final Object defaultDefault;

        Cfor(Object obj) {
            this.defaultDefault = obj;
        }

        public Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INT64' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.google.protobuf.c2$if, reason: invalid class name */
    public static class Cif {
        public static final Cif BOOL;
        public static final Cif BYTES;
        public static final Cif DOUBLE;
        public static final Cif ENUM;
        public static final Cif FIXED32;
        public static final Cif FIXED64;
        public static final Cif FLOAT;
        public static final Cif GROUP;
        public static final Cif INT32;
        public static final Cif INT64;
        public static final Cif MESSAGE;
        public static final Cif SFIXED32;
        public static final Cif SFIXED64;
        public static final Cif SINT32;
        public static final Cif SINT64;
        public static final Cif STRING;
        public static final Cif UINT32;
        public static final Cif UINT64;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cif[] f16703do;
        private final Cfor javaType;
        private final int wireType;

        /* renamed from: com.google.protobuf.c2$if$do, reason: invalid class name */
        public enum Cdo extends Cif {
            public Cdo(String str, int i, Cfor cfor, int i2) {
                super(str, i, cfor, i2, null);
            }

            @Override // com.google.protobuf.c2.Cif
            public boolean isPackable() {
                return false;
            }
        }

        /* renamed from: com.google.protobuf.c2$if$for, reason: invalid class name */
        public enum Cfor extends Cif {
            public Cfor(String str, int i, Cfor cfor, int i2) {
                super(str, i, cfor, i2, null);
            }

            @Override // com.google.protobuf.c2.Cif
            public boolean isPackable() {
                return false;
            }
        }

        /* renamed from: com.google.protobuf.c2$if$if, reason: invalid class name and collision with other inner class name */
        public enum C0161if extends Cif {
            public C0161if(String str, int i, Cfor cfor, int i2) {
                super(str, i, cfor, i2, null);
            }

            @Override // com.google.protobuf.c2.Cif
            public boolean isPackable() {
                return false;
            }
        }

        /* renamed from: com.google.protobuf.c2$if$new, reason: invalid class name */
        public enum Cnew extends Cif {
            public Cnew(String str, int i, Cfor cfor, int i2) {
                super(str, i, cfor, i2, null);
            }

            @Override // com.google.protobuf.c2.Cif
            public boolean isPackable() {
                return false;
            }
        }

        static {
            Cif cif = new Cif("DOUBLE", 0, Cfor.DOUBLE, 1);
            DOUBLE = cif;
            Cif cif2 = new Cif("FLOAT", 1, Cfor.FLOAT, 5);
            FLOAT = cif2;
            Cfor cfor = Cfor.LONG;
            Cif cif3 = new Cif("INT64", 2, cfor, 0);
            INT64 = cif3;
            Cif cif4 = new Cif("UINT64", 3, cfor, 0);
            UINT64 = cif4;
            Cfor cfor2 = Cfor.INT;
            Cif cif5 = new Cif("INT32", 4, cfor2, 0);
            INT32 = cif5;
            Cif cif6 = new Cif("FIXED64", 5, cfor, 1);
            FIXED64 = cif6;
            Cif cif7 = new Cif("FIXED32", 6, cfor2, 5);
            FIXED32 = cif7;
            Cif cif8 = new Cif("BOOL", 7, Cfor.BOOLEAN, 0);
            BOOL = cif8;
            Cdo cdo = new Cdo("STRING", 8, Cfor.STRING, 2);
            STRING = cdo;
            Cfor cfor3 = Cfor.MESSAGE;
            C0161if c0161if = new C0161if("GROUP", 9, cfor3, 3);
            GROUP = c0161if;
            Cfor cfor4 = new Cfor("MESSAGE", 10, cfor3, 2);
            MESSAGE = cfor4;
            Cnew cnew = new Cnew("BYTES", 11, Cfor.BYTE_STRING, 2);
            BYTES = cnew;
            Cif cif9 = new Cif("UINT32", 12, cfor2, 0);
            UINT32 = cif9;
            Cif cif10 = new Cif("ENUM", 13, Cfor.ENUM, 0);
            ENUM = cif10;
            Cif cif11 = new Cif("SFIXED32", 14, cfor2, 5);
            SFIXED32 = cif11;
            Cif cif12 = new Cif("SFIXED64", 15, cfor, 1);
            SFIXED64 = cif12;
            Cif cif13 = new Cif("SINT32", 16, cfor2, 0);
            SINT32 = cif13;
            Cif cif14 = new Cif("SINT64", 17, cfor, 0);
            SINT64 = cif14;
            f16703do = new Cif[]{cif, cif2, cif3, cif4, cif5, cif6, cif7, cif8, cdo, c0161if, cfor4, cnew, cif9, cif10, cif11, cif12, cif13, cif14};
        }

        public /* synthetic */ Cif(String str, int i, Cfor cfor, int i2, Cdo cdo) {
            this(str, i, cfor, i2);
        }

        public static Cif valueOf(String str) {
            return (Cif) Enum.valueOf(Cif.class, str);
        }

        public static Cif[] values() {
            return (Cif[]) f16703do.clone();
        }

        public Cfor getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }

        private Cif(String str, int i, Cfor cfor, int i2) {
            this.javaType = cfor;
            this.wireType = i2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.protobuf.c2$new, reason: invalid class name */
    public static abstract class Cnew {
        public static final Cnew LAZY;
        public static final Cnew LOOSE;
        public static final Cnew STRICT;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cnew[] f16704do;

        /* renamed from: com.google.protobuf.c2$new$do, reason: invalid class name */
        public enum Cdo extends Cnew {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.protobuf.c2.Cnew
            public Object readString(CodedInputStream codedInputStream) throws IOException {
                return codedInputStream.j();
            }
        }

        /* renamed from: com.google.protobuf.c2$new$for, reason: invalid class name */
        public enum Cfor extends Cnew {
            public Cfor(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.protobuf.c2.Cnew
            public Object readString(CodedInputStream codedInputStream) throws IOException {
                return codedInputStream.mo18443throws();
            }
        }

        /* renamed from: com.google.protobuf.c2$new$if, reason: invalid class name */
        public enum Cif extends Cnew {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.protobuf.c2.Cnew
            public Object readString(CodedInputStream codedInputStream) throws IOException {
                return codedInputStream.k();
            }
        }

        static {
            Cdo cdo = new Cdo("LOOSE", 0);
            LOOSE = cdo;
            Cif cif = new Cif("STRICT", 1);
            STRICT = cif;
            Cfor cfor = new Cfor("LAZY", 2);
            LAZY = cfor;
            f16704do = new Cnew[]{cdo, cif, cfor};
        }

        private Cnew(String str, int i) {
        }

        public static Cnew valueOf(String str) {
            return (Cnew) Enum.valueOf(Cnew.class, str);
        }

        public static Cnew[] values() {
            return (Cnew[]) f16704do.clone();
        }

        public abstract Object readString(CodedInputStream codedInputStream) throws IOException;

        public /* synthetic */ Cnew(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    private c2() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m19962do(int i) {
        return i >>> 3;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m19963for(int i, int i2) {
        return (i << 3) | i2;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m19964if(int i) {
        return i & 7;
    }

    /* renamed from: new, reason: not valid java name */
    public static Object m19965new(CodedInputStream codedInputStream, Cif cif, Cnew cnew) throws IOException {
        switch (Cdo.f16701do[cif.ordinal()]) {
            case 1:
                return Double.valueOf(codedInputStream.mo18422default());
            case 2:
                return Float.valueOf(codedInputStream.mo18434private());
            case 3:
                return Long.valueOf(codedInputStream.mo18446volatile());
            case 4:
                return Long.valueOf(codedInputStream.n());
            case 5:
                return Integer.valueOf(codedInputStream.mo18439strictfp());
            case 6:
                return Long.valueOf(codedInputStream.mo18433package());
            case 7:
                return Integer.valueOf(codedInputStream.mo18426finally());
            case 8:
                return Boolean.valueOf(codedInputStream.mo18437return());
            case 9:
                return codedInputStream.mo18443throws();
            case 10:
                return Integer.valueOf(codedInputStream.m());
            case 11:
                return Integer.valueOf(codedInputStream.f());
            case 12:
                return Long.valueOf(codedInputStream.g());
            case 13:
                return Integer.valueOf(codedInputStream.h());
            case 14:
                return Long.valueOf(codedInputStream.i());
            case 15:
                return cnew.readString(codedInputStream);
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}

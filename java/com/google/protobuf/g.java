package com.google.protobuf;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DOUBLE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class g {
    public static final g BOOL;
    public static final g BOOL_LIST;
    public static final g BOOL_LIST_PACKED;
    public static final g BYTES;
    public static final g BYTES_LIST;
    public static final g DOUBLE;
    public static final g DOUBLE_LIST;
    public static final g DOUBLE_LIST_PACKED;
    public static final g ENUM;
    public static final g ENUM_LIST;
    public static final g ENUM_LIST_PACKED;
    public static final g FIXED32;
    public static final g FIXED32_LIST;
    public static final g FIXED32_LIST_PACKED;
    public static final g FIXED64;
    public static final g FIXED64_LIST;
    public static final g FIXED64_LIST_PACKED;
    public static final g FLOAT;
    public static final g FLOAT_LIST;
    public static final g FLOAT_LIST_PACKED;
    public static final g GROUP;
    public static final g GROUP_LIST;
    public static final g INT32;
    public static final g INT32_LIST;
    public static final g INT32_LIST_PACKED;
    public static final g INT64;
    public static final g INT64_LIST;
    public static final g INT64_LIST_PACKED;
    public static final g MAP;
    public static final g MESSAGE;
    public static final g MESSAGE_LIST;
    public static final g SFIXED32;
    public static final g SFIXED32_LIST;
    public static final g SFIXED32_LIST_PACKED;
    public static final g SFIXED64;
    public static final g SFIXED64_LIST;
    public static final g SFIXED64_LIST_PACKED;
    public static final g SINT32;
    public static final g SINT32_LIST;
    public static final g SINT32_LIST_PACKED;
    public static final g SINT64;
    public static final g SINT64_LIST;
    public static final g SINT64_LIST_PACKED;
    public static final g STRING;
    public static final g STRING_LIST;
    public static final g UINT32;
    public static final g UINT32_LIST;
    public static final g UINT32_LIST_PACKED;
    public static final g UINT64;
    public static final g UINT64_LIST;
    public static final g UINT64_LIST_PACKED;

    /* renamed from: do, reason: not valid java name */
    private static final g[] f16923do;

    /* renamed from: for, reason: not valid java name */
    private static final /* synthetic */ g[] f16924for;

    /* renamed from: if, reason: not valid java name */
    private static final Type[] f16925if;
    private final Cif collection;
    private final Class<?> elementType;
    private final int id;
    private final p javaType;
    private final boolean primitiveScalar;

    /* renamed from: com.google.protobuf.g$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16926do;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f16927if;

        static {
            int[] iArr = new int[p.values().length];
            f16927if = iArr;
            try {
                iArr[p.BYTE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16927if[p.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16927if[p.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Cif.values().length];
            f16926do = iArr2;
            try {
                iArr2[Cif.MAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16926do[Cif.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16926do[Cif.SCALAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.google.protobuf.g$if, reason: invalid class name */
    public enum Cif {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        private final boolean isList;

        Cif(boolean z) {
            this.isList = z;
        }

        public boolean isList() {
            return this.isList;
        }
    }

    static {
        Cif cif = Cif.SCALAR;
        p pVar = p.DOUBLE;
        g gVar = new g("DOUBLE", 0, 0, cif, pVar);
        DOUBLE = gVar;
        p pVar2 = p.FLOAT;
        g gVar2 = new g("FLOAT", 1, 1, cif, pVar2);
        FLOAT = gVar2;
        p pVar3 = p.LONG;
        g gVar3 = new g("INT64", 2, 2, cif, pVar3);
        INT64 = gVar3;
        g gVar4 = new g("UINT64", 3, 3, cif, pVar3);
        UINT64 = gVar4;
        p pVar4 = p.INT;
        g gVar5 = new g("INT32", 4, 4, cif, pVar4);
        INT32 = gVar5;
        g gVar6 = new g("FIXED64", 5, 5, cif, pVar3);
        FIXED64 = gVar6;
        g gVar7 = new g("FIXED32", 6, 6, cif, pVar4);
        FIXED32 = gVar7;
        p pVar5 = p.BOOLEAN;
        g gVar8 = new g("BOOL", 7, 7, cif, pVar5);
        BOOL = gVar8;
        p pVar6 = p.STRING;
        g gVar9 = new g("STRING", 8, 8, cif, pVar6);
        STRING = gVar9;
        p pVar7 = p.MESSAGE;
        g gVar10 = new g("MESSAGE", 9, 9, cif, pVar7);
        MESSAGE = gVar10;
        p pVar8 = p.BYTE_STRING;
        g gVar11 = new g("BYTES", 10, 10, cif, pVar8);
        BYTES = gVar11;
        g gVar12 = new g("UINT32", 11, 11, cif, pVar4);
        UINT32 = gVar12;
        p pVar9 = p.ENUM;
        g gVar13 = new g("ENUM", 12, 12, cif, pVar9);
        ENUM = gVar13;
        g gVar14 = new g("SFIXED32", 13, 13, cif, pVar4);
        SFIXED32 = gVar14;
        g gVar15 = new g("SFIXED64", 14, 14, cif, pVar3);
        SFIXED64 = gVar15;
        g gVar16 = new g("SINT32", 15, 15, cif, pVar4);
        SINT32 = gVar16;
        g gVar17 = new g("SINT64", 16, 16, cif, pVar3);
        SINT64 = gVar17;
        g gVar18 = new g("GROUP", 17, 17, cif, pVar7);
        GROUP = gVar18;
        Cif cif2 = Cif.VECTOR;
        g gVar19 = new g("DOUBLE_LIST", 18, 18, cif2, pVar);
        DOUBLE_LIST = gVar19;
        g gVar20 = new g("FLOAT_LIST", 19, 19, cif2, pVar2);
        FLOAT_LIST = gVar20;
        g gVar21 = new g("INT64_LIST", 20, 20, cif2, pVar3);
        INT64_LIST = gVar21;
        g gVar22 = new g("UINT64_LIST", 21, 21, cif2, pVar3);
        UINT64_LIST = gVar22;
        g gVar23 = new g("INT32_LIST", 22, 22, cif2, pVar4);
        INT32_LIST = gVar23;
        g gVar24 = new g("FIXED64_LIST", 23, 23, cif2, pVar3);
        FIXED64_LIST = gVar24;
        g gVar25 = new g("FIXED32_LIST", 24, 24, cif2, pVar4);
        FIXED32_LIST = gVar25;
        g gVar26 = new g("BOOL_LIST", 25, 25, cif2, pVar5);
        BOOL_LIST = gVar26;
        g gVar27 = new g("STRING_LIST", 26, 26, cif2, pVar6);
        STRING_LIST = gVar27;
        g gVar28 = new g("MESSAGE_LIST", 27, 27, cif2, pVar7);
        MESSAGE_LIST = gVar28;
        g gVar29 = new g("BYTES_LIST", 28, 28, cif2, pVar8);
        BYTES_LIST = gVar29;
        g gVar30 = new g("UINT32_LIST", 29, 29, cif2, pVar4);
        UINT32_LIST = gVar30;
        g gVar31 = new g("ENUM_LIST", 30, 30, cif2, pVar9);
        ENUM_LIST = gVar31;
        g gVar32 = new g("SFIXED32_LIST", 31, 31, cif2, pVar4);
        SFIXED32_LIST = gVar32;
        g gVar33 = new g("SFIXED64_LIST", 32, 32, cif2, pVar3);
        SFIXED64_LIST = gVar33;
        g gVar34 = new g("SINT32_LIST", 33, 33, cif2, pVar4);
        SINT32_LIST = gVar34;
        g gVar35 = new g("SINT64_LIST", 34, 34, cif2, pVar3);
        SINT64_LIST = gVar35;
        Cif cif3 = Cif.PACKED_VECTOR;
        g gVar36 = new g("DOUBLE_LIST_PACKED", 35, 35, cif3, pVar);
        DOUBLE_LIST_PACKED = gVar36;
        g gVar37 = new g("FLOAT_LIST_PACKED", 36, 36, cif3, pVar2);
        FLOAT_LIST_PACKED = gVar37;
        g gVar38 = new g("INT64_LIST_PACKED", 37, 37, cif3, pVar3);
        INT64_LIST_PACKED = gVar38;
        g gVar39 = new g("UINT64_LIST_PACKED", 38, 38, cif3, pVar3);
        UINT64_LIST_PACKED = gVar39;
        g gVar40 = new g("INT32_LIST_PACKED", 39, 39, cif3, pVar4);
        INT32_LIST_PACKED = gVar40;
        g gVar41 = new g("FIXED64_LIST_PACKED", 40, 40, cif3, pVar3);
        FIXED64_LIST_PACKED = gVar41;
        g gVar42 = new g("FIXED32_LIST_PACKED", 41, 41, cif3, pVar4);
        FIXED32_LIST_PACKED = gVar42;
        g gVar43 = new g("BOOL_LIST_PACKED", 42, 42, cif3, pVar5);
        BOOL_LIST_PACKED = gVar43;
        g gVar44 = new g("UINT32_LIST_PACKED", 43, 43, cif3, pVar4);
        UINT32_LIST_PACKED = gVar44;
        g gVar45 = new g("ENUM_LIST_PACKED", 44, 44, cif3, pVar9);
        ENUM_LIST_PACKED = gVar45;
        g gVar46 = new g("SFIXED32_LIST_PACKED", 45, 45, cif3, pVar4);
        SFIXED32_LIST_PACKED = gVar46;
        g gVar47 = new g("SFIXED64_LIST_PACKED", 46, 46, cif3, pVar3);
        SFIXED64_LIST_PACKED = gVar47;
        g gVar48 = new g("SINT32_LIST_PACKED", 47, 47, cif3, pVar4);
        SINT32_LIST_PACKED = gVar48;
        g gVar49 = new g("SINT64_LIST_PACKED", 48, 48, cif3, pVar3);
        SINT64_LIST_PACKED = gVar49;
        g gVar50 = new g("GROUP_LIST", 49, 49, cif2, pVar7);
        GROUP_LIST = gVar50;
        g gVar51 = new g("MAP", 50, 50, Cif.MAP, p.VOID);
        MAP = gVar51;
        f16924for = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, gVar12, gVar13, gVar14, gVar15, gVar16, gVar17, gVar18, gVar19, gVar20, gVar21, gVar22, gVar23, gVar24, gVar25, gVar26, gVar27, gVar28, gVar29, gVar30, gVar31, gVar32, gVar33, gVar34, gVar35, gVar36, gVar37, gVar38, gVar39, gVar40, gVar41, gVar42, gVar43, gVar44, gVar45, gVar46, gVar47, gVar48, gVar49, gVar50, gVar51};
        f16925if = new Type[0];
        g[] gVarArrValues = values();
        f16923do = new g[gVarArrValues.length];
        for (g gVar52 : gVarArrValues) {
            f16923do[gVar52.id] = gVar52;
        }
    }

    private g(String str, int i, int i2, Cif cif, p pVar) {
        int i3;
        this.id = i2;
        this.collection = cif;
        this.javaType = pVar;
        int i4 = Cdo.f16926do[cif.ordinal()];
        if (i4 == 1 || i4 == 2) {
            this.elementType = pVar.getBoxedType();
        } else {
            this.elementType = null;
        }
        this.primitiveScalar = (cif != Cif.SCALAR || (i3 = Cdo.f16927if[pVar.ordinal()]) == 1 || i3 == 2 || i3 == 3) ? false : true;
    }

    /* renamed from: do, reason: not valid java name */
    private static Type m20494do(Class<?> cls) {
        for (Type type : cls.getGenericInterfaces()) {
            if ((type instanceof ParameterizedType) && List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
                return type;
            }
        }
        Type genericSuperclass = cls.getGenericSuperclass();
        if ((genericSuperclass instanceof ParameterizedType) && List.class.isAssignableFrom((Class) ((ParameterizedType) genericSuperclass).getRawType())) {
            return genericSuperclass;
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m20495for(Field field) {
        Class<?> type = field.getType();
        if (!this.javaType.getType().isAssignableFrom(type)) {
            return false;
        }
        Type[] actualTypeArguments = f16925if;
        if (field.getGenericType() instanceof ParameterizedType) {
            actualTypeArguments = ((ParameterizedType) field.getGenericType()).getActualTypeArguments();
        }
        Type typeM20496if = m20496if(type, actualTypeArguments);
        if (typeM20496if instanceof Class) {
            return this.elementType.isAssignableFrom((Class) typeM20496if);
        }
        return true;
    }

    public static g forId(int i) {
        if (i < 0) {
            return null;
        }
        g[] gVarArr = f16923do;
        if (i >= gVarArr.length) {
            return null;
        }
        return gVarArr[i];
    }

    /* renamed from: if, reason: not valid java name */
    private static Type m20496if(Class<?> cls, Type[] typeArr) {
        boolean z;
        while (true) {
            int i = 0;
            if (cls == List.class) {
                if (typeArr.length == 1) {
                    return typeArr[0];
                }
                throw new RuntimeException("Unable to identify parameter type for List<T>");
            }
            Type typeM20494do = m20494do(cls);
            if (!(typeM20494do instanceof ParameterizedType)) {
                typeArr = f16925if;
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                while (true) {
                    if (i >= length) {
                        cls = cls.getSuperclass();
                        break;
                    }
                    Class<?> cls2 = interfaces[i];
                    if (List.class.isAssignableFrom(cls2)) {
                        cls = cls2;
                        break;
                    }
                    i++;
                }
            } else {
                ParameterizedType parameterizedType = (ParameterizedType) typeM20494do;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
                    Type type = actualTypeArguments[i2];
                    if (type instanceof TypeVariable) {
                        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
                        if (typeArr.length != typeParameters.length) {
                            throw new RuntimeException("Type array mismatch");
                        }
                        int i3 = 0;
                        while (true) {
                            if (i3 >= typeParameters.length) {
                                z = false;
                                break;
                            }
                            if (type == typeParameters[i3]) {
                                actualTypeArguments[i2] = typeArr[i3];
                                z = true;
                                break;
                            }
                            i3++;
                        }
                        if (!z) {
                            String strValueOf = String.valueOf(type);
                            StringBuilder sb = new StringBuilder(strValueOf.length() + 31);
                            sb.append("Unable to find replacement for ");
                            sb.append(strValueOf);
                            throw new RuntimeException(sb.toString());
                        }
                    }
                }
                cls = (Class) parameterizedType.getRawType();
                typeArr = actualTypeArguments;
            }
        }
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f16924for.clone();
    }

    public p getJavaType() {
        return this.javaType;
    }

    public int id() {
        return this.id;
    }

    public boolean isList() {
        return this.collection.isList();
    }

    public boolean isMap() {
        return this.collection == Cif.MAP;
    }

    public boolean isPacked() {
        return Cif.PACKED_VECTOR.equals(this.collection);
    }

    public boolean isPrimitiveScalar() {
        return this.primitiveScalar;
    }

    public boolean isScalar() {
        return this.collection == Cif.SCALAR;
    }

    public boolean isValidForField(Field field) {
        return Cif.VECTOR.equals(this.collection) ? m20495for(field) : this.javaType.getType().isAssignableFrom(field.getType());
    }
}

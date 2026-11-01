package com.google.protobuf;

import com.google.protobuf.Internal;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
final class d implements Comparable<d> {

    /* renamed from: break, reason: not valid java name */
    private final Field f16787break;

    /* renamed from: case, reason: not valid java name */
    private final int f16788case;

    /* renamed from: catch, reason: not valid java name */
    private final Class<?> f16789catch;

    /* renamed from: class, reason: not valid java name */
    private final Object f16790class;

    /* renamed from: const, reason: not valid java name */
    private final Internal.EnumVerifier f16791const;

    /* renamed from: do, reason: not valid java name */
    private final Field f16792do;

    /* renamed from: else, reason: not valid java name */
    private final boolean f16793else;

    /* renamed from: for, reason: not valid java name */
    private final Class<?> f16794for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f16795goto;

    /* renamed from: if, reason: not valid java name */
    private final g f16796if;

    /* renamed from: new, reason: not valid java name */
    private final int f16797new;

    /* renamed from: this, reason: not valid java name */
    private final n0 f16798this;

    /* renamed from: try, reason: not valid java name */
    private final Field f16799try;

    /* renamed from: com.google.protobuf.d$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16800do;

        static {
            int[] iArr = new int[g.values().length];
            f16800do = iArr;
            try {
                iArr[g.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16800do[g.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16800do[g.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16800do[g.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.google.protobuf.d$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: break, reason: not valid java name */
        private Object f16801break;

        /* renamed from: case, reason: not valid java name */
        private boolean f16802case;

        /* renamed from: catch, reason: not valid java name */
        private Internal.EnumVerifier f16803catch;

        /* renamed from: class, reason: not valid java name */
        private Field f16804class;

        /* renamed from: do, reason: not valid java name */
        private Field f16805do;

        /* renamed from: else, reason: not valid java name */
        private boolean f16806else;

        /* renamed from: for, reason: not valid java name */
        private int f16807for;

        /* renamed from: goto, reason: not valid java name */
        private n0 f16808goto;

        /* renamed from: if, reason: not valid java name */
        private g f16809if;

        /* renamed from: new, reason: not valid java name */
        private Field f16810new;

        /* renamed from: this, reason: not valid java name */
        private Class<?> f16811this;

        /* renamed from: try, reason: not valid java name */
        private int f16812try;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m20236break(boolean z) {
            this.f16802case = z;
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m20237case(int i) {
            this.f16807for = i;
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m20238catch(g gVar) {
            this.f16809if = gVar;
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public d m20239do() {
            n0 n0Var = this.f16808goto;
            if (n0Var != null) {
                return d.m20210case(this.f16807for, this.f16809if, n0Var, this.f16811this, this.f16806else, this.f16803catch);
            }
            Object obj = this.f16801break;
            if (obj != null) {
                return d.m20220try(this.f16805do, this.f16807for, obj, this.f16803catch);
            }
            Field field = this.f16810new;
            if (field != null) {
                return this.f16802case ? d.m20209break(this.f16805do, this.f16807for, this.f16809if, field, this.f16812try, this.f16806else, this.f16803catch) : d.m20219this(this.f16805do, this.f16807for, this.f16809if, field, this.f16812try, this.f16806else, this.f16803catch);
            }
            Internal.EnumVerifier enumVerifier = this.f16803catch;
            if (enumVerifier != null) {
                Field field2 = this.f16804class;
                return field2 == null ? d.m20218new(this.f16805do, this.f16807for, this.f16809if, enumVerifier) : d.m20217goto(this.f16805do, this.f16807for, this.f16809if, enumVerifier, field2);
            }
            Field field3 = this.f16804class;
            return field3 == null ? d.m20216for(this.f16805do, this.f16807for, this.f16809if, this.f16806else) : d.m20214else(this.f16805do, this.f16807for, this.f16809if, field3);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m20240else(Object obj) {
            this.f16801break = obj;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m20241for(boolean z) {
            this.f16806else = z;
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m20242goto(n0 n0Var, Class<?> cls) {
            if (this.f16805do != null || this.f16810new != null) {
                throw new IllegalStateException("Cannot set oneof when field or presenceField have been provided");
            }
            this.f16808goto = n0Var;
            this.f16811this = cls;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m20243if(Field field) {
            this.f16804class = field;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m20244new(Internal.EnumVerifier enumVerifier) {
            this.f16803catch = enumVerifier;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m20245this(Field field, int i) {
            this.f16810new = (Field) Internal.m19632try(field, "presenceField");
            this.f16812try = i;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m20246try(Field field) {
            if (this.f16808goto != null) {
                throw new IllegalStateException("Cannot set field when building a oneof.");
            }
            this.f16805do = field;
            return this;
        }

        private Cif() {
        }
    }

    private d(Field field, int i, g gVar, Class<?> cls, Field field2, int i2, boolean z, boolean z2, n0 n0Var, Class<?> cls2, Object obj, Internal.EnumVerifier enumVerifier, Field field3) {
        this.f16792do = field;
        this.f16796if = gVar;
        this.f16794for = cls;
        this.f16797new = i;
        this.f16799try = field2;
        this.f16788case = i2;
        this.f16793else = z;
        this.f16795goto = z2;
        this.f16798this = n0Var;
        this.f16789catch = cls2;
        this.f16790class = obj;
        this.f16791const = enumVerifier;
        this.f16787break = field3;
    }

    /* renamed from: break, reason: not valid java name */
    public static d m20209break(Field field, int i, g gVar, Field field2, int i2, boolean z, Internal.EnumVerifier enumVerifier) {
        m20213do(i);
        Internal.m19632try(field, "field");
        Internal.m19632try(gVar, "fieldType");
        Internal.m19632try(field2, "presenceField");
        if (field2 == null || m20212default(i2)) {
            return new d(field, i, gVar, null, field2, i2, true, z, null, null, null, enumVerifier, null);
        }
        StringBuilder sb = new StringBuilder(55);
        sb.append("presenceMask must have exactly one bit set: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: case, reason: not valid java name */
    public static d m20210case(int i, g gVar, n0 n0Var, Class<?> cls, boolean z, Internal.EnumVerifier enumVerifier) {
        m20213do(i);
        Internal.m19632try(gVar, "fieldType");
        Internal.m19632try(n0Var, "oneof");
        Internal.m19632try(cls, "oneofStoredType");
        if (gVar.isScalar()) {
            return new d(null, i, gVar, null, null, 0, false, z, n0Var, cls, null, enumVerifier, null);
        }
        String strValueOf = String.valueOf(gVar);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 72);
        sb.append("Oneof is only supported for scalar fields. Field ");
        sb.append(i);
        sb.append(" is of type ");
        sb.append(strValueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: catch, reason: not valid java name */
    public static d m20211catch(Field field, int i, g gVar, Class<?> cls) {
        m20213do(i);
        Internal.m19632try(field, "field");
        Internal.m19632try(gVar, "fieldType");
        Internal.m19632try(cls, "messageClass");
        return new d(field, i, gVar, cls, null, 0, false, false, null, null, null, null, null);
    }

    /* renamed from: default, reason: not valid java name */
    private static boolean m20212default(int i) {
        return i != 0 && (i & (i + (-1))) == 0;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m20213do(int i) {
        if (i > 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append("fieldNumber must be positive: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: else, reason: not valid java name */
    public static d m20214else(Field field, int i, g gVar, Field field2) {
        m20213do(i);
        Internal.m19632try(field, "field");
        Internal.m19632try(gVar, "fieldType");
        if (gVar == g.MESSAGE_LIST || gVar == g.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new d(field, i, gVar, null, null, 0, false, false, null, null, null, null, field2);
    }

    /* renamed from: finally, reason: not valid java name */
    public static Cif m20215finally() {
        return new Cif(null);
    }

    /* renamed from: for, reason: not valid java name */
    public static d m20216for(Field field, int i, g gVar, boolean z) {
        m20213do(i);
        Internal.m19632try(field, "field");
        Internal.m19632try(gVar, "fieldType");
        if (gVar == g.MESSAGE_LIST || gVar == g.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new d(field, i, gVar, null, null, 0, false, z, null, null, null, null, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public static d m20217goto(Field field, int i, g gVar, Internal.EnumVerifier enumVerifier, Field field2) {
        m20213do(i);
        Internal.m19632try(field, "field");
        return new d(field, i, gVar, null, null, 0, false, false, null, null, null, enumVerifier, field2);
    }

    /* renamed from: new, reason: not valid java name */
    public static d m20218new(Field field, int i, g gVar, Internal.EnumVerifier enumVerifier) {
        m20213do(i);
        Internal.m19632try(field, "field");
        return new d(field, i, gVar, null, null, 0, false, false, null, null, null, enumVerifier, null);
    }

    /* renamed from: this, reason: not valid java name */
    public static d m20219this(Field field, int i, g gVar, Field field2, int i2, boolean z, Internal.EnumVerifier enumVerifier) {
        m20213do(i);
        Internal.m19632try(field, "field");
        Internal.m19632try(gVar, "fieldType");
        Internal.m19632try(field2, "presenceField");
        if (field2 == null || m20212default(i2)) {
            return new d(field, i, gVar, null, field2, i2, false, z, null, null, null, enumVerifier, null);
        }
        StringBuilder sb = new StringBuilder(55);
        sb.append("presenceMask must have exactly one bit set: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: try, reason: not valid java name */
    public static d m20220try(Field field, int i, Object obj, Internal.EnumVerifier enumVerifier) {
        Internal.m19632try(obj, "mapDefaultEntry");
        m20213do(i);
        Internal.m19632try(field, "field");
        return new d(field, i, g.MAP, null, null, 0, false, true, null, null, obj, enumVerifier, null);
    }

    /* renamed from: class, reason: not valid java name */
    public Field m20221class() {
        return this.f16787break;
    }

    /* renamed from: const, reason: not valid java name */
    public Internal.EnumVerifier m20222const() {
        return this.f16791const;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m20223extends() {
        return this.f16793else;
    }

    /* renamed from: final, reason: not valid java name */
    public Field m20224final() {
        return this.f16792do;
    }

    @Override // java.lang.Comparable
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        return this.f16797new - dVar.f16797new;
    }

    /* renamed from: import, reason: not valid java name */
    public Class<?> m20226import() {
        int i = Cdo.f16800do[this.f16796if.ordinal()];
        if (i == 1 || i == 2) {
            Field field = this.f16792do;
            return field != null ? field.getType() : this.f16789catch;
        }
        if (i == 3 || i == 4) {
            return this.f16794for;
        }
        return null;
    }

    /* renamed from: native, reason: not valid java name */
    public n0 m20227native() {
        return this.f16798this;
    }

    /* renamed from: public, reason: not valid java name */
    public Class<?> m20228public() {
        return this.f16789catch;
    }

    /* renamed from: return, reason: not valid java name */
    public Field m20229return() {
        return this.f16799try;
    }

    /* renamed from: static, reason: not valid java name */
    public int m20230static() {
        return this.f16788case;
    }

    /* renamed from: super, reason: not valid java name */
    public int m20231super() {
        return this.f16797new;
    }

    /* renamed from: switch, reason: not valid java name */
    public g m20232switch() {
        return this.f16796if;
    }

    /* renamed from: throw, reason: not valid java name */
    public Class<?> m20233throw() {
        return this.f16794for;
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m20234throws() {
        return this.f16795goto;
    }

    /* renamed from: while, reason: not valid java name */
    public Object m20235while() {
        return this.f16790class;
    }
}

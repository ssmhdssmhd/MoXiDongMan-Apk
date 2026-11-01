package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class z1 {

    /* renamed from: break, reason: not valid java name */
    private static final long f17360break;

    /* renamed from: catch, reason: not valid java name */
    private static final long f17362catch;

    /* renamed from: class, reason: not valid java name */
    private static final long f17363class;

    /* renamed from: const, reason: not valid java name */
    private static final long f17364const;

    /* renamed from: default, reason: not valid java name */
    private static final int f17365default;

    /* renamed from: extends, reason: not valid java name */
    public static final boolean f17368extends;

    /* renamed from: final, reason: not valid java name */
    private static final long f17369final;

    /* renamed from: import, reason: not valid java name */
    private static final long f17373import;

    /* renamed from: native, reason: not valid java name */
    private static final long f17374native;

    /* renamed from: public, reason: not valid java name */
    private static final long f17376public;

    /* renamed from: return, reason: not valid java name */
    private static final long f17377return;

    /* renamed from: static, reason: not valid java name */
    private static final long f17378static;

    /* renamed from: super, reason: not valid java name */
    private static final long f17379super;

    /* renamed from: switch, reason: not valid java name */
    private static final int f17380switch = 8;

    /* renamed from: this, reason: not valid java name */
    public static final long f17381this;

    /* renamed from: throw, reason: not valid java name */
    private static final long f17382throw;

    /* renamed from: throws, reason: not valid java name */
    private static final int f17383throws = 7;

    /* renamed from: while, reason: not valid java name */
    private static final long f17385while;

    /* renamed from: do, reason: not valid java name */
    private static final Logger f17366do = Logger.getLogger(z1.class.getName());

    /* renamed from: if, reason: not valid java name */
    private static final Unsafe f17372if = e();

    /* renamed from: for, reason: not valid java name */
    private static final Class<?> f17370for = com.google.protobuf.Cnew.m20910if();

    /* renamed from: new, reason: not valid java name */
    private static final boolean f17375new = m21694while(Long.TYPE);

    /* renamed from: try, reason: not valid java name */
    private static final boolean f17384try = m21694while(Integer.TYPE);

    /* renamed from: case, reason: not valid java name */
    private static final Ctry f17361case = a();

    /* renamed from: else, reason: not valid java name */
    private static final boolean f17367else = G();

    /* renamed from: goto, reason: not valid java name */
    private static final boolean f17371goto = F();

    /* renamed from: com.google.protobuf.z1$do, reason: invalid class name */
    public class Cdo implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* renamed from: com.google.protobuf.z1$for, reason: invalid class name */
    public static final class Cfor extends Ctry {
        public Cfor(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: break, reason: not valid java name */
        public int mo21696break(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: case, reason: not valid java name */
        public byte mo21697case(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: class, reason: not valid java name */
        public long mo21698class(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: else, reason: not valid java name */
        public byte mo21699else(Object obj, long j) {
            return z1.f17368extends ? z1.m21678package(obj, j) : z1.m21679private(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: for, reason: not valid java name */
        public void mo21700for(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: goto, reason: not valid java name */
        public double mo21701goto(Object obj, long j) {
            return Double.longBitsToDouble(m21715const(obj, j));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: import, reason: not valid java name */
        public void mo21702import(long j, byte b) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: native, reason: not valid java name */
        public void mo21703native(Object obj, long j, byte b) {
            if (z1.f17368extends) {
                z1.r(obj, j, b);
            } else {
                z1.s(obj, j, b);
            }
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: new, reason: not valid java name */
        public void mo21704new(byte[] bArr, long j, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: public, reason: not valid java name */
        public void mo21705public(Object obj, long j, double d) {
            m21716default(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: return, reason: not valid java name */
        public void mo21706return(Object obj, long j, float f) {
            m21721switch(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: static, reason: not valid java name */
        public void mo21707static(long j, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: super, reason: not valid java name */
        public Object mo21708super(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: this, reason: not valid java name */
        public float mo21709this(Object obj, long j) {
            return Float.intBitsToFloat(m21714catch(obj, j));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: throws, reason: not valid java name */
        public void mo21710throws(long j, long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: try, reason: not valid java name */
        public boolean mo21711try(Object obj, long j) {
            return z1.f17368extends ? z1.m21686switch(obj, j) : z1.m21690throws(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: while, reason: not valid java name */
        public void mo21712while(Object obj, long j, boolean z) {
            if (z1.f17368extends) {
                z1.m(obj, j, z);
            } else {
                z1.n(obj, j, z);
            }
        }
    }

    /* renamed from: com.google.protobuf.z1$if, reason: invalid class name */
    public static final class Cif extends Ctry {

        /* renamed from: if, reason: not valid java name */
        private static final long f17386if = -1;

        public Cif(Unsafe unsafe) {
            super(unsafe);
        }

        /* renamed from: finally, reason: not valid java name */
        private static int m21713finally(long j) {
            return (int) (j & (-1));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: break */
        public int mo21696break(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: case */
        public byte mo21697case(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: class */
        public long mo21698class(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: else */
        public byte mo21699else(Object obj, long j) {
            return z1.f17368extends ? z1.m21678package(obj, j) : z1.m21679private(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: for */
        public void mo21700for(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: goto */
        public double mo21701goto(Object obj, long j) {
            return Double.longBitsToDouble(m21715const(obj, j));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: import */
        public void mo21702import(long j, byte b) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: native */
        public void mo21703native(Object obj, long j, byte b) {
            if (z1.f17368extends) {
                z1.r(obj, j, b);
            } else {
                z1.s(obj, j, b);
            }
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: new */
        public void mo21704new(byte[] bArr, long j, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: public */
        public void mo21705public(Object obj, long j, double d) {
            m21716default(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: return */
        public void mo21706return(Object obj, long j, float f) {
            m21721switch(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: static */
        public void mo21707static(long j, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: super */
        public Object mo21708super(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: this */
        public float mo21709this(Object obj, long j) {
            return Float.intBitsToFloat(m21714catch(obj, j));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: throws */
        public void mo21710throws(long j, long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: try */
        public boolean mo21711try(Object obj, long j) {
            return z1.f17368extends ? z1.m21686switch(obj, j) : z1.m21690throws(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: while */
        public void mo21712while(Object obj, long j, boolean z) {
            if (z1.f17368extends) {
                z1.m(obj, j, z);
            } else {
                z1.n(obj, j, z);
            }
        }
    }

    /* renamed from: com.google.protobuf.z1$new, reason: invalid class name */
    public static final class Cnew extends Ctry {
        public Cnew(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: break */
        public int mo21696break(long j) {
            return this.f17387do.getInt(j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: case */
        public byte mo21697case(long j) {
            return this.f17387do.getByte(j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: class */
        public long mo21698class(long j) {
            return this.f17387do.getLong(j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: else */
        public byte mo21699else(Object obj, long j) {
            return this.f17387do.getByte(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: for */
        public void mo21700for(long j, byte[] bArr, long j2, long j3) {
            this.f17387do.copyMemory((Object) null, j, bArr, z1.f17381this + j2, j3);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: goto */
        public double mo21701goto(Object obj, long j) {
            return this.f17387do.getDouble(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: import */
        public void mo21702import(long j, byte b) {
            this.f17387do.putByte(j, b);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: native */
        public void mo21703native(Object obj, long j, byte b) {
            this.f17387do.putByte(obj, j, b);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: new */
        public void mo21704new(byte[] bArr, long j, long j2, long j3) {
            this.f17387do.copyMemory(bArr, z1.f17381this + j, (Object) null, j2, j3);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: public */
        public void mo21705public(Object obj, long j, double d) {
            this.f17387do.putDouble(obj, j, d);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: return */
        public void mo21706return(Object obj, long j, float f) {
            this.f17387do.putFloat(obj, j, f);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: static */
        public void mo21707static(long j, int i) {
            this.f17387do.putInt(j, i);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: super */
        public Object mo21708super(Field field) {
            return m21719final(this.f17387do.staticFieldBase(field), this.f17387do.staticFieldOffset(field));
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: this */
        public float mo21709this(Object obj, long j) {
            return this.f17387do.getFloat(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: throws */
        public void mo21710throws(long j, long j2) {
            this.f17387do.putLong(j, j2);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: try */
        public boolean mo21711try(Object obj, long j) {
            return this.f17387do.getBoolean(obj, j);
        }

        @Override // com.google.protobuf.z1.Ctry
        /* renamed from: while */
        public void mo21712while(Object obj, long j, boolean z) {
            this.f17387do.putBoolean(obj, j, z);
        }
    }

    /* renamed from: com.google.protobuf.z1$try, reason: invalid class name */
    public static abstract class Ctry {

        /* renamed from: do, reason: not valid java name */
        public Unsafe f17387do;

        public Ctry(Unsafe unsafe) {
            this.f17387do = unsafe;
        }

        /* renamed from: break */
        public abstract int mo21696break(long j);

        /* renamed from: case */
        public abstract byte mo21697case(long j);

        /* renamed from: catch, reason: not valid java name */
        public final int m21714catch(Object obj, long j) {
            return this.f17387do.getInt(obj, j);
        }

        /* renamed from: class */
        public abstract long mo21698class(long j);

        /* renamed from: const, reason: not valid java name */
        public final long m21715const(Object obj, long j) {
            return this.f17387do.getLong(obj, j);
        }

        /* renamed from: default, reason: not valid java name */
        public final void m21716default(Object obj, long j, long j2) {
            this.f17387do.putLong(obj, j, j2);
        }

        /* renamed from: do, reason: not valid java name */
        public final int m21717do(Class<?> cls) {
            return this.f17387do.arrayBaseOffset(cls);
        }

        /* renamed from: else */
        public abstract byte mo21699else(Object obj, long j);

        /* renamed from: extends, reason: not valid java name */
        public final void m21718extends(Object obj, long j, Object obj2) {
            this.f17387do.putObject(obj, j, obj2);
        }

        /* renamed from: final, reason: not valid java name */
        public final Object m21719final(Object obj, long j) {
            return this.f17387do.getObject(obj, j);
        }

        /* renamed from: for */
        public abstract void mo21700for(long j, byte[] bArr, long j2, long j3);

        /* renamed from: goto */
        public abstract double mo21701goto(Object obj, long j);

        /* renamed from: if, reason: not valid java name */
        public final int m21720if(Class<?> cls) {
            return this.f17387do.arrayIndexScale(cls);
        }

        /* renamed from: import */
        public abstract void mo21702import(long j, byte b);

        /* renamed from: native */
        public abstract void mo21703native(Object obj, long j, byte b);

        /* renamed from: new */
        public abstract void mo21704new(byte[] bArr, long j, long j2, long j3);

        /* renamed from: public */
        public abstract void mo21705public(Object obj, long j, double d);

        /* renamed from: return */
        public abstract void mo21706return(Object obj, long j, float f);

        /* renamed from: static */
        public abstract void mo21707static(long j, int i);

        /* renamed from: super */
        public abstract Object mo21708super(Field field);

        /* renamed from: switch, reason: not valid java name */
        public final void m21721switch(Object obj, long j, int i) {
            this.f17387do.putInt(obj, j, i);
        }

        /* renamed from: this */
        public abstract float mo21709this(Object obj, long j);

        /* renamed from: throw, reason: not valid java name */
        public final long m21722throw(Field field) {
            return this.f17387do.objectFieldOffset(field);
        }

        /* renamed from: throws */
        public abstract void mo21710throws(long j, long j2);

        /* renamed from: try */
        public abstract boolean mo21711try(Object obj, long j);

        /* renamed from: while */
        public abstract void mo21712while(Object obj, long j, boolean z);
    }

    static {
        long jM21659catch = m21659catch(byte[].class);
        f17381this = jM21659catch;
        f17360break = m21659catch(boolean[].class);
        f17362catch = m21660class(boolean[].class);
        f17363class = m21659catch(int[].class);
        f17364const = m21660class(int[].class);
        f17369final = m21659catch(long[].class);
        f17379super = m21660class(long[].class);
        f17382throw = m21659catch(float[].class);
        f17385while = m21660class(float[].class);
        f17373import = m21659catch(double[].class);
        f17374native = m21660class(double[].class);
        f17376public = m21659catch(Object[].class);
        f17377return = m21660class(Object[].class);
        f17378static = m21676native(m21661const());
        f17365default = (int) (7 & jM21659catch);
        f17368extends = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private z1() {
    }

    public static void A(long j, long j2) {
        f17361case.mo21710throws(j, j2);
    }

    public static void B(Object obj, long j, long j2) {
        f17361case.m21716default(obj, j, j2);
    }

    public static void C(long[] jArr, long j, long j2) {
        f17361case.m21716default(jArr, (j * f17379super) + f17369final, j2);
    }

    public static void D(Object obj, long j, Object obj2) {
        f17361case.m21718extends(obj, j, obj2);
    }

    public static void E(Object[] objArr, long j, Object obj) {
        f17361case.m21718extends(objArr, f17376public + (j * f17377return), obj);
    }

    private static boolean F() {
        Unsafe unsafe = f17372if;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (com.google.protobuf.Cnew.m20909for()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f17366do;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.log(level, sb.toString());
            return false;
        }
    }

    private static boolean G() {
        Unsafe unsafe = f17372if;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (m21661const() == null) {
                return false;
            }
            if (com.google.protobuf.Cnew.m20909for()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger = f17366do;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger.log(level, sb.toString());
            return false;
        }
    }

    private static Ctry a() {
        Unsafe unsafe = f17372if;
        if (unsafe == null) {
            return null;
        }
        if (!com.google.protobuf.Cnew.m20909for()) {
            return new Cnew(unsafe);
        }
        if (f17375new) {
            return new Cfor(unsafe);
        }
        if (f17384try) {
            return new Cif(unsafe);
        }
        return null;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static double m21656abstract(Object obj, long j) {
        return f17361case.mo21701goto(obj, j);
    }

    public static Object b(Object obj, long j) {
        return f17361case.m21719final(obj, j);
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> T m21657break(Class<T> cls) {
        try {
            return (T) f17372if.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object c(Object[] objArr, long j) {
        return f17361case.m21719final(objArr, f17376public + (j * f17377return));
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m21659catch(Class<?> cls) {
        if (f17371goto) {
            return f17361case.m21717do(cls);
        }
        return -1;
    }

    /* renamed from: class, reason: not valid java name */
    private static int m21660class(Class<?> cls) {
        if (f17371goto) {
            return f17361case.m21720if(cls);
        }
        return -1;
    }

    /* renamed from: const, reason: not valid java name */
    private static Field m21661const() {
        Field fieldM21673import;
        if (com.google.protobuf.Cnew.m20909for() && (fieldM21673import = m21673import(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldM21673import;
        }
        Field fieldM21673import2 = m21673import(Buffer.class, "address");
        if (fieldM21673import2 == null || fieldM21673import2.getType() != Long.TYPE) {
            return null;
        }
        return fieldM21673import2;
    }

    /* renamed from: continue, reason: not valid java name */
    public static double m21662continue(double[] dArr, long j) {
        return f17361case.mo21701goto(dArr, f17373import + (j * f17374native));
    }

    public static Object d(Field field) {
        return f17361case.mo21708super(field);
    }

    /* renamed from: default, reason: not valid java name */
    public static byte m21663default(long j) {
        return f17361case.mo21697case(j);
    }

    public static Unsafe e() {
        try {
            return (Unsafe) AccessController.doPrivileged(new Cdo());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static byte m21666extends(Object obj, long j) {
        return f17361case.mo21699else(obj, j);
    }

    public static boolean f() {
        return f17371goto;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m21667final(long j, byte[] bArr, long j2, long j3) {
        f17361case.mo21700for(j, bArr, j2, j3);
    }

    /* renamed from: finally, reason: not valid java name */
    public static byte m21668finally(byte[] bArr, long j) {
        return f17361case.mo21699else(bArr, f17381this + j);
    }

    public static boolean g() {
        return f17367else;
    }

    public static boolean h() {
        return f17375new;
    }

    public static int i(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (i < 0 || i2 < 0 || i3 < 0 || i + i3 > bArr.length || i2 + i3 > bArr2.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        if (f17371goto) {
            for (int i5 = (f17365default + i) & 7; i4 < i3 && (i5 & 7) != 0; i5++) {
                if (bArr[i + i4] != bArr2[i2 + i4]) {
                    return i4;
                }
                i4++;
            }
            int i6 = ((i3 - i4) & (-8)) + i4;
            while (i4 < i6) {
                long j = f17381this;
                long j2 = i4;
                long jM21674instanceof = m21674instanceof(bArr, i + j + j2);
                long jM21674instanceof2 = m21674instanceof(bArr2, j + i2 + j2);
                if (jM21674instanceof != jM21674instanceof2) {
                    return i4 + m21681public(jM21674instanceof, jM21674instanceof2);
                }
                i4 += 8;
            }
        }
        while (i4 < i3) {
            if (bArr[i + i4] != bArr2[i2 + i4]) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    /* renamed from: implements, reason: not valid java name */
    public static long m21672implements(long j) {
        return f17361case.mo21698class(j);
    }

    /* renamed from: import, reason: not valid java name */
    private static Field m21673import(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static long m21674instanceof(Object obj, long j) {
        return f17361case.m21715const(obj, j);
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m21675interface(long j) {
        return f17361case.mo21696break(j);
    }

    public static long j(Field field) {
        return f17361case.m21722throw(field);
    }

    public static void k(Object obj, long j, boolean z) {
        f17361case.mo21712while(obj, j, z);
    }

    public static void l(boolean[] zArr, long j, boolean z) {
        f17361case.mo21712while(zArr, f17360break + (j * f17362catch), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m(Object obj, long j, boolean z) {
        r(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(Object obj, long j, boolean z) {
        s(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: native, reason: not valid java name */
    private static long m21676native(Field field) {
        Ctry ctry;
        if (field == null || (ctry = f17361case) == null) {
            return -1L;
        }
        return ctry.m21722throw(field);
    }

    public static void o(long j, byte b) {
        f17361case.mo21702import(j, b);
    }

    public static void p(Object obj, long j, byte b) {
        f17361case.mo21703native(obj, j, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public static byte m21678package(Object obj, long j) {
        return (byte) ((m21680protected(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public static byte m21679private(Object obj, long j) {
        return (byte) ((m21680protected(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m21680protected(Object obj, long j) {
        return f17361case.m21714catch(obj, j);
    }

    /* renamed from: public, reason: not valid java name */
    private static int m21681public(long j, long j2) {
        return (f17368extends ? Long.numberOfLeadingZeros(j ^ j2) : Long.numberOfTrailingZeros(j ^ j2)) >> 3;
    }

    public static void q(byte[] bArr, long j, byte b) {
        f17361case.mo21703native(bArr, f17381this + j, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        y(obj, j2, ((255 & b) << i) | (m21680protected(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m21682return(Object obj, long j) {
        return f17361case.mo21711try(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        y(obj, j2, ((255 & b) << i) | (m21680protected(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m21683static(boolean[] zArr, long j) {
        return f17361case.mo21711try(zArr, f17360break + (j * f17362catch));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static float m21684strictfp(Object obj, long j) {
        return f17361case.mo21709this(obj, j);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m21685super(byte[] bArr, long j, long j2, long j3) {
        f17361case.mo21704new(bArr, j, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public static boolean m21686switch(Object obj, long j) {
        return m21678package(obj, j) != 0;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static long m21687synchronized(long[] jArr, long j) {
        return f17361case.m21715const(jArr, f17369final + (j * f17379super));
    }

    public static void t(Object obj, long j, double d) {
        f17361case.mo21705public(obj, j, d);
    }

    /* renamed from: this, reason: not valid java name */
    public static long m21688this(ByteBuffer byteBuffer) {
        return f17361case.m21715const(byteBuffer, f17378static);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m21689throw(byte[] bArr, long j, byte[] bArr2, long j2, long j3) {
        System.arraycopy(bArr, (int) j, bArr2, (int) j2, (int) j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public static boolean m21690throws(Object obj, long j) {
        return m21679private(obj, j) != 0;
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m21691transient(int[] iArr, long j) {
        return f17361case.m21714catch(iArr, f17363class + (j * f17364const));
    }

    public static void u(double[] dArr, long j, double d) {
        f17361case.mo21705public(dArr, (j * f17374native) + f17373import, d);
    }

    public static void v(Object obj, long j, float f) {
        f17361case.mo21706return(obj, j, f);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static float m21693volatile(float[] fArr, long j) {
        return f17361case.mo21709this(fArr, f17382throw + (j * f17385while));
    }

    public static void w(float[] fArr, long j, float f) {
        f17361case.mo21706return(fArr, f17382throw + (j * f17385while), f);
    }

    /* renamed from: while, reason: not valid java name */
    private static boolean m21694while(Class<?> cls) {
        if (!com.google.protobuf.Cnew.m20909for()) {
            return false;
        }
        try {
            Class<?> cls2 = f17370for;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void x(long j, int i) {
        f17361case.mo21707static(j, i);
    }

    public static void y(Object obj, long j, int i) {
        f17361case.m21721switch(obj, j, i);
    }

    public static void z(int[] iArr, long j, int i) {
        f17361case.m21721switch(iArr, f17363class + (j * f17364const), i);
    }
}

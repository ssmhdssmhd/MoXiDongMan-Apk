package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.Cif;

/* renamed from: org.apache.commons.lang3.builder.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements Builder<Integer> {

    /* renamed from: for, reason: not valid java name */
    private static final ThreadLocal<Set<Cnew>> f28615for = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    private final int f28616do;

    /* renamed from: if, reason: not valid java name */
    private int f28617if;

    public Cfor() {
        this.f28617if = 0;
        this.f28616do = 37;
        this.f28617if = 17;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m32157abstract(Object obj) {
        synchronized (Cfor.class) {
            if (m32163return() == null) {
                f28615for.set(new HashSet());
            }
        }
        m32163return().add(new Cnew(obj));
    }

    /* renamed from: default, reason: not valid java name */
    public static int m32158default(int i, int i2, Object obj, boolean z) {
        return m32159extends(i, i2, obj, z, null, new String[0]);
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T> int m32159extends(int i, int i2, T t, boolean z, Class<? super T> cls, String... strArr) {
        if (t == null) {
            throw new IllegalArgumentException("The object to build a hash code for must not be null");
        }
        Cfor cfor = new Cfor(i, i2);
        Class<?> superclass = t.getClass();
        m32166switch(t, superclass, cfor, z, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            m32166switch(t, superclass, cfor, z, strArr);
        }
        return cfor.m32173continue();
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m32160finally(Object obj, Collection<String> collection) {
        return m32162private(obj, Ctry.G(collection));
    }

    /* renamed from: package, reason: not valid java name */
    public static int m32161package(Object obj, boolean z) {
        return m32159extends(17, 37, obj, z, null, new String[0]);
    }

    /* renamed from: private, reason: not valid java name */
    public static int m32162private(Object obj, String... strArr) {
        return m32159extends(17, 37, obj, false, null, strArr);
    }

    /* renamed from: return, reason: not valid java name */
    public static Set<Cnew> m32163return() {
        return f28615for.get();
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m32164static(Object obj) {
        Set<Cnew> setM32163return = m32163return();
        return setM32163return != null && setM32163return.contains(new Cnew(obj));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m32165strictfp(Object obj) {
        Set<Cnew> setM32163return = m32163return();
        if (setM32163return != null) {
            setM32163return.remove(new Cnew(obj));
            synchronized (Cfor.class) {
                Set<Cnew> setM32163return2 = m32163return();
                if (setM32163return2 != null && setM32163return2.isEmpty()) {
                    f28615for.remove();
                }
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m32166switch(Object obj, Class<?> cls, Cfor cfor, boolean z, String[] strArr) {
        if (m32164static(obj)) {
            return;
        }
        try {
            m32157abstract(obj);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                if (!Cif.f(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        cfor.m32175else(field.get(obj));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            m32165strictfp(obj);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m32167throws(int i, int i2, Object obj) {
        return m32159extends(i, i2, obj, false, null, new String[0]);
    }

    /* renamed from: break, reason: not valid java name */
    public Cfor m32168break(byte[] bArr) {
        if (bArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (byte b : bArr) {
                m32174do(b);
            }
        }
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public Cfor m32169case(long j) {
        this.f28617if = (this.f28617if * this.f28616do) + ((int) (j ^ (j >> 32)));
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cfor m32170catch(char[] cArr) {
        if (cArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (char c : cArr) {
                m32179if(c);
            }
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cfor m32171class(double[] dArr) {
        if (dArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (double d : dArr) {
                m32177for(d);
            }
        }
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cfor m32172const(float[] fArr) {
        if (fArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (float f : fArr) {
                m32182new(f);
            }
        }
        return this;
    }

    /* renamed from: continue, reason: not valid java name */
    public int m32173continue() {
        return this.f28617if;
    }

    /* renamed from: do, reason: not valid java name */
    public Cfor m32174do(byte b) {
        this.f28617if = (this.f28617if * this.f28616do) + b;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Cfor m32175else(Object obj) {
        if (obj == null) {
            this.f28617if *= this.f28616do;
        } else if (!obj.getClass().isArray()) {
            this.f28617if = (this.f28617if * this.f28616do) + obj.hashCode();
        } else if (obj instanceof long[]) {
            m32184super((long[]) obj);
        } else if (obj instanceof int[]) {
            m32176final((int[]) obj);
        } else if (obj instanceof short[]) {
            m32188while((short[]) obj);
        } else if (obj instanceof char[]) {
            m32170catch((char[]) obj);
        } else if (obj instanceof byte[]) {
            m32168break((byte[]) obj);
        } else if (obj instanceof double[]) {
            m32171class((double[]) obj);
        } else if (obj instanceof float[]) {
            m32172const((float[]) obj);
        } else if (obj instanceof boolean[]) {
            m32180import((boolean[]) obj);
        } else {
            m32186throw((Object[]) obj);
        }
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cfor m32176final(int[] iArr) {
        if (iArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (int i : iArr) {
                m32187try(i);
            }
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfor m32177for(double d) {
        return m32169case(Double.doubleToLongBits(d));
    }

    /* renamed from: goto, reason: not valid java name */
    public Cfor m32178goto(short s) {
        this.f28617if = (this.f28617if * this.f28616do) + s;
        return this;
    }

    public int hashCode() {
        return m32173continue();
    }

    /* renamed from: if, reason: not valid java name */
    public Cfor m32179if(char c) {
        this.f28617if = (this.f28617if * this.f28616do) + c;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public Cfor m32180import(boolean[] zArr) {
        if (zArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (boolean z : zArr) {
                m32185this(z);
            }
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Cfor m32181native(int i) {
        this.f28617if = (this.f28617if * this.f28616do) + i;
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m32182new(float f) {
        this.f28617if = (this.f28617if * this.f28616do) + Float.floatToIntBits(f);
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer build() {
        return Integer.valueOf(m32173continue());
    }

    /* renamed from: super, reason: not valid java name */
    public Cfor m32184super(long[] jArr) {
        if (jArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (long j : jArr) {
                m32169case(j);
            }
        }
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public Cfor m32185this(boolean z) {
        this.f28617if = (this.f28617if * this.f28616do) + (!z ? 1 : 0);
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cfor m32186throw(Object[] objArr) {
        if (objArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (Object obj : objArr) {
                m32175else(obj);
            }
        }
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor m32187try(int i) {
        this.f28617if = (this.f28617if * this.f28616do) + i;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cfor m32188while(short[] sArr) {
        if (sArr == null) {
            this.f28617if *= this.f28616do;
        } else {
            for (short s : sArr) {
                m32178goto(s);
            }
        }
        return this;
    }

    public Cfor(int i, int i2) {
        this.f28617if = 0;
        if (i % 2 != 0) {
            if (i2 % 2 != 0) {
                this.f28616do = i2;
                this.f28617if = i;
                return;
            }
            throw new IllegalArgumentException("HashCodeBuilder requires an odd multiplier");
        }
        throw new IllegalArgumentException("HashCodeBuilder requires an odd initial value");
    }
}

package org.apache.commons.lang3.builder;

import android.support.v4.pb1;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* renamed from: org.apache.commons.lang3.builder.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Builder<Boolean> {

    /* renamed from: if, reason: not valid java name */
    private static final ThreadLocal<Set<pb1<Cnew, Cnew>>> f28618if = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    private boolean f28619do = true;

    /* renamed from: abstract, reason: not valid java name */
    public static void m32189abstract(Object obj, Object obj2) {
        synchronized (Cif.class) {
            if (m32196static() == null) {
                f28618if.set(new HashSet());
            }
        }
        m32196static().add(m32195return(obj, obj2));
    }

    /* renamed from: default, reason: not valid java name */
    private static void m32190default(Object obj, Object obj2, Class<?> cls, Cif cif, boolean z, String[] strArr) {
        if (m32197throws(obj, obj2)) {
            return;
        }
        try {
            m32189abstract(obj, obj2);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (int i = 0; i < declaredFields.length && cif.f28619do; i++) {
                Field field = declaredFields[i];
                if (!org.apache.commons.lang3.Cif.f(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                    try {
                        cif.m32206else(field.get(obj), field.get(obj2));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            m32198volatile(obj, obj2);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m32191extends(Object obj, Object obj2, Collection<String> collection) {
        return m32194private(obj, obj2, Ctry.G(collection));
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m32192finally(Object obj, Object obj2, boolean z) {
        return m32193package(obj, obj2, z, null, new String[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039 A[Catch: IllegalArgumentException -> 0x0061, TryCatch #0 {IllegalArgumentException -> 0x0061, blocks: (B:21:0x0033, B:23:0x0039, B:24:0x003d, B:25:0x0046, B:28:0x004e), top: B:34:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d A[Catch: IllegalArgumentException -> 0x0061, TryCatch #0 {IllegalArgumentException -> 0x0061, blocks: (B:21:0x0033, B:23:0x0039, B:24:0x003d, B:25:0x0046, B:28:0x004e), top: B:34:0x0033 }] */
    /* renamed from: package, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m32193package(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) {
        Cif cif;
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj2 != null) {
            Class<?> superclass = obj.getClass();
            Class<?> cls2 = obj2.getClass();
            if (superclass.isInstance(obj2)) {
                if (!cls2.isInstance(obj)) {
                    superclass = cls2;
                }
                cif = new Cif();
                try {
                    if (superclass.isArray()) {
                        m32190default(obj, obj2, superclass, cif, z, strArr);
                        while (superclass.getSuperclass() != null && superclass != cls) {
                            superclass = superclass.getSuperclass();
                            m32190default(obj, obj2, superclass, cif, z, strArr);
                        }
                    } else {
                        cif.m32206else(obj, obj2);
                    }
                    return cif.m32217switch();
                } catch (IllegalArgumentException unused) {
                }
            } else if (cls2.isInstance(obj)) {
                if (superclass.isInstance(obj2)) {
                }
                cif = new Cif();
                if (superclass.isArray()) {
                }
                return cif.m32217switch();
            }
        }
        return false;
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m32194private(Object obj, Object obj2, String... strArr) {
        return m32193package(obj, obj2, false, null, strArr);
    }

    /* renamed from: return, reason: not valid java name */
    public static pb1<Cnew, Cnew> m32195return(Object obj, Object obj2) {
        return pb1.of(new Cnew(obj), new Cnew(obj2));
    }

    /* renamed from: static, reason: not valid java name */
    public static Set<pb1<Cnew, Cnew>> m32196static() {
        return f28618if.get();
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m32197throws(Object obj, Object obj2) {
        Set<pb1<Cnew, Cnew>> setM32196static = m32196static();
        pb1<Cnew, Cnew> pb1VarM32195return = m32195return(obj, obj2);
        return setM32196static != null && (setM32196static.contains(pb1VarM32195return) || setM32196static.contains(pb1.of(pb1VarM32195return.getLeft(), pb1VarM32195return.getRight())));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m32198volatile(Object obj, Object obj2) {
        Set<pb1<Cnew, Cnew>> setM32196static = m32196static();
        if (setM32196static != null) {
            setM32196static.remove(m32195return(obj, obj2));
            synchronized (Cif.class) {
                Set<pb1<Cnew, Cnew>> setM32196static2 = m32196static();
                if (setM32196static2 != null && setM32196static2.isEmpty()) {
                    f28618if.remove();
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Cif m32199break(byte[] bArr, byte[] bArr2) {
        if (!this.f28619do || bArr == bArr2) {
            return this;
        }
        if (bArr == null || bArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (bArr.length != bArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < bArr.length && this.f28619do; i++) {
            m32205do(bArr[i], bArr2[i]);
        }
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public Cif m32200case(long j, long j2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = j == j2;
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cif m32201catch(char[] cArr, char[] cArr2) {
        if (!this.f28619do || cArr == cArr2) {
            return this;
        }
        if (cArr == null || cArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (cArr.length != cArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < cArr.length && this.f28619do; i++) {
            m32210if(cArr[i], cArr2[i]);
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cif m32202class(double[] dArr, double[] dArr2) {
        if (!this.f28619do || dArr == dArr2) {
            return this;
        }
        if (dArr == null || dArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (dArr.length != dArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < dArr.length && this.f28619do; i++) {
            m32208for(dArr[i], dArr2[i]);
        }
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cif m32203const(float[] fArr, float[] fArr2) {
        if (!this.f28619do || fArr == fArr2) {
            return this;
        }
        if (fArr == null || fArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (fArr.length != fArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < fArr.length && this.f28619do; i++) {
            m32213new(fArr[i], fArr2[i]);
        }
        return this;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m32204continue() {
        this.f28619do = true;
    }

    /* renamed from: do, reason: not valid java name */
    public Cif m32205do(byte b, byte b2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = b == b2;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Cif m32206else(Object obj, Object obj2) {
        if (!this.f28619do || obj == obj2) {
            return this;
        }
        if (obj == null || obj2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (!obj.getClass().isArray()) {
            this.f28619do = obj.equals(obj2);
        } else if (obj.getClass() != obj2.getClass()) {
            m32215strictfp(false);
        } else if (obj instanceof long[]) {
            m32216super((long[]) obj, (long[]) obj2);
        } else if (obj instanceof int[]) {
            m32207final((int[]) obj, (int[]) obj2);
        } else if (obj instanceof short[]) {
            m32221while((short[]) obj, (short[]) obj2);
        } else if (obj instanceof char[]) {
            m32201catch((char[]) obj, (char[]) obj2);
        } else if (obj instanceof byte[]) {
            m32199break((byte[]) obj, (byte[]) obj2);
        } else if (obj instanceof double[]) {
            m32202class((double[]) obj, (double[]) obj2);
        } else if (obj instanceof float[]) {
            m32203const((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            m32211import((boolean[]) obj, (boolean[]) obj2);
        } else {
            m32219throw((Object[]) obj, (Object[]) obj2);
        }
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cif m32207final(int[] iArr, int[] iArr2) {
        if (!this.f28619do || iArr == iArr2) {
            return this;
        }
        if (iArr == null || iArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (iArr.length != iArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < iArr.length && this.f28619do; i++) {
            m32220try(iArr[i], iArr2[i]);
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public Cif m32208for(double d, double d2) {
        return !this.f28619do ? this : m32200case(Double.doubleToLongBits(d), Double.doubleToLongBits(d2));
    }

    /* renamed from: goto, reason: not valid java name */
    public Cif m32209goto(short s, short s2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = s == s2;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public Cif m32210if(char c, char c2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = c == c2;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public Cif m32211import(boolean[] zArr, boolean[] zArr2) {
        if (!this.f28619do || zArr == zArr2) {
            return this;
        }
        if (zArr == null || zArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (zArr.length != zArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < zArr.length && this.f28619do; i++) {
            m32218this(zArr[i], zArr2[i]);
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Cif m32212native(boolean z) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = z;
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cif m32213new(float f, float f2) {
        return !this.f28619do ? this : m32220try(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    @Override // org.apache.commons.lang3.builder.Builder
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public Boolean build() {
        return Boolean.valueOf(m32217switch());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m32215strictfp(boolean z) {
        this.f28619do = z;
    }

    /* renamed from: super, reason: not valid java name */
    public Cif m32216super(long[] jArr, long[] jArr2) {
        if (!this.f28619do || jArr == jArr2) {
            return this;
        }
        if (jArr == null || jArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (jArr.length != jArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < jArr.length && this.f28619do; i++) {
            m32200case(jArr[i], jArr2[i]);
        }
        return this;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m32217switch() {
        return this.f28619do;
    }

    /* renamed from: this, reason: not valid java name */
    public Cif m32218this(boolean z, boolean z2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = z == z2;
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cif m32219throw(Object[] objArr, Object[] objArr2) {
        if (!this.f28619do || objArr == objArr2) {
            return this;
        }
        if (objArr == null || objArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (objArr.length != objArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < objArr.length && this.f28619do; i++) {
            m32206else(objArr[i], objArr2[i]);
        }
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m32220try(int i, int i2) {
        if (!this.f28619do) {
            return this;
        }
        this.f28619do = i == i2;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cif m32221while(short[] sArr, short[] sArr2) {
        if (!this.f28619do || sArr == sArr2) {
            return this;
        }
        if (sArr == null || sArr2 == null) {
            m32215strictfp(false);
            return this;
        }
        if (sArr.length != sArr2.length) {
            m32215strictfp(false);
            return this;
        }
        for (int i = 0; i < sArr.length && this.f28619do; i++) {
            m32209goto(sArr[i], sArr2[i]);
        }
        return this;
    }
}

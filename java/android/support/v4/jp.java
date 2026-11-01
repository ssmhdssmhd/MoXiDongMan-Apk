package android.support.v4;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Comparator;
import org.apache.commons.lang3.Cif;
import org.apache.commons.lang3.builder.Builder;
import org.apache.commons.lang3.builder.Ctry;

/* loaded from: classes3.dex */
public class jp implements Builder<Integer> {

    /* renamed from: do, reason: not valid java name */
    private int f3167do = 0;

    /* renamed from: default, reason: not valid java name */
    public static int m3983default(Object obj, Object obj2, Collection<String> collection) {
        return m3986package(obj, obj2, Ctry.G(collection));
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m3984extends(Object obj, Object obj2, boolean z) {
        return m3985finally(obj, obj2, z, null, new String[0]);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m3985finally(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) throws SecurityException {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null || obj2 == null) {
            throw null;
        }
        Class<?> superclass = obj.getClass();
        if (!superclass.isInstance(obj2)) {
            throw new ClassCastException();
        }
        jp jpVar = new jp();
        m3987switch(obj, obj2, superclass, jpVar, z, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            m3987switch(obj, obj2, superclass, jpVar, z, strArr);
        }
        return jpVar.m4003private();
    }

    /* renamed from: package, reason: not valid java name */
    public static int m3986package(Object obj, Object obj2, String... strArr) {
        return m3985finally(obj, obj2, false, null, strArr);
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m3987switch(Object obj, Object obj2, Class<?> cls, jp jpVar, boolean z, String[] strArr) throws SecurityException {
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (int i = 0; i < declaredFields.length && jpVar.f3167do == 0; i++) {
            Field field = declaredFields[i];
            if (!Cif.f(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                try {
                    jpVar.m3995else(field.get(obj), field.get(obj2));
                } catch (IllegalAccessException unused) {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m3988throws(Object obj, Object obj2) {
        return m3985finally(obj, obj2, false, null, new String[0]);
    }

    /* renamed from: break, reason: not valid java name */
    public jp m3989break(boolean z, boolean z2) {
        if (this.f3167do != 0 || z == z2) {
            return this;
        }
        if (z) {
            this.f3167do = 1;
        } else {
            this.f3167do = -1;
        }
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public jp m3990case(long j, long j2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = j < j2 ? -1 : j > j2 ? 1 : 0;
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public jp m3991catch(byte[] bArr, byte[] bArr2) {
        if (this.f3167do != 0 || bArr == bArr2) {
            return this;
        }
        if (bArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (bArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (bArr.length != bArr2.length) {
            this.f3167do = bArr.length >= bArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < bArr.length && this.f3167do == 0; i++) {
            m3994do(bArr[i], bArr2[i]);
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public jp m3992class(char[] cArr, char[] cArr2) {
        if (this.f3167do != 0 || cArr == cArr2) {
            return this;
        }
        if (cArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (cArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (cArr.length != cArr2.length) {
            this.f3167do = cArr.length >= cArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < cArr.length && this.f3167do == 0; i++) {
            m3999if(cArr[i], cArr2[i]);
        }
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public jp m3993const(double[] dArr, double[] dArr2) {
        if (this.f3167do != 0 || dArr == dArr2) {
            return this;
        }
        if (dArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (dArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (dArr.length != dArr2.length) {
            this.f3167do = dArr.length >= dArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < dArr.length && this.f3167do == 0; i++) {
            m3997for(dArr[i], dArr2[i]);
        }
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public jp m3994do(byte b, byte b2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = b < b2 ? -1 : b > b2 ? 1 : 0;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public jp m3995else(Object obj, Object obj2) {
        return m3998goto(obj, obj2, null);
    }

    /* renamed from: final, reason: not valid java name */
    public jp m3996final(float[] fArr, float[] fArr2) {
        if (this.f3167do != 0 || fArr == fArr2) {
            return this;
        }
        if (fArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (fArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (fArr.length != fArr2.length) {
            this.f3167do = fArr.length >= fArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < fArr.length && this.f3167do == 0; i++) {
            m4002new(fArr[i], fArr2[i]);
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public jp m3997for(double d, double d2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = Double.compare(d, d2);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public jp m3998goto(Object obj, Object obj2, Comparator<?> comparator) {
        if (this.f3167do != 0 || obj == obj2) {
            return this;
        }
        if (obj == null) {
            this.f3167do = -1;
            return this;
        }
        if (obj2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (obj.getClass().isArray()) {
            if (obj instanceof long[]) {
                m4009throw((long[]) obj, (long[]) obj2);
            } else if (obj instanceof int[]) {
                m4007super((int[]) obj, (int[]) obj2);
            } else if (obj instanceof short[]) {
                m4001native((short[]) obj, (short[]) obj2);
            } else if (obj instanceof char[]) {
                m3992class((char[]) obj, (char[]) obj2);
            } else if (obj instanceof byte[]) {
                m3991catch((byte[]) obj, (byte[]) obj2);
            } else if (obj instanceof double[]) {
                m3993const((double[]) obj, (double[]) obj2);
            } else if (obj instanceof float[]) {
                m3996final((float[]) obj, (float[]) obj2);
            } else if (obj instanceof boolean[]) {
                m4004public((boolean[]) obj, (boolean[]) obj2);
            } else {
                m4000import((Object[]) obj, (Object[]) obj2, comparator);
            }
        } else if (comparator == null) {
            this.f3167do = ((Comparable) obj).compareTo(obj2);
        } else {
            this.f3167do = comparator.compare(obj, obj2);
        }
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public jp m3999if(char c, char c2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = c < c2 ? -1 : c > c2 ? 1 : 0;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public jp m4000import(Object[] objArr, Object[] objArr2, Comparator<?> comparator) {
        if (this.f3167do != 0 || objArr == objArr2) {
            return this;
        }
        if (objArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (objArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (objArr.length != objArr2.length) {
            this.f3167do = objArr.length >= objArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < objArr.length && this.f3167do == 0; i++) {
            m3998goto(objArr[i], objArr2[i], comparator);
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public jp m4001native(short[] sArr, short[] sArr2) {
        if (this.f3167do != 0 || sArr == sArr2) {
            return this;
        }
        if (sArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (sArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (sArr.length != sArr2.length) {
            this.f3167do = sArr.length >= sArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < sArr.length && this.f3167do == 0; i++) {
            m4008this(sArr[i], sArr2[i]);
        }
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public jp m4002new(float f, float f2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = Float.compare(f, f2);
        return this;
    }

    /* renamed from: private, reason: not valid java name */
    public int m4003private() {
        return this.f3167do;
    }

    /* renamed from: public, reason: not valid java name */
    public jp m4004public(boolean[] zArr, boolean[] zArr2) {
        if (this.f3167do != 0 || zArr == zArr2) {
            return this;
        }
        if (zArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (zArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (zArr.length != zArr2.length) {
            this.f3167do = zArr.length >= zArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < zArr.length && this.f3167do == 0; i++) {
            m3989break(zArr[i], zArr2[i]);
        }
        return this;
    }

    /* renamed from: return, reason: not valid java name */
    public jp m4005return(int i) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = i;
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer build() {
        return Integer.valueOf(m4003private());
    }

    /* renamed from: super, reason: not valid java name */
    public jp m4007super(int[] iArr, int[] iArr2) {
        if (this.f3167do != 0 || iArr == iArr2) {
            return this;
        }
        if (iArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (iArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (iArr.length != iArr2.length) {
            this.f3167do = iArr.length >= iArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < iArr.length && this.f3167do == 0; i++) {
            m4010try(iArr[i], iArr2[i]);
        }
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public jp m4008this(short s, short s2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = s < s2 ? -1 : s > s2 ? 1 : 0;
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public jp m4009throw(long[] jArr, long[] jArr2) {
        if (this.f3167do != 0 || jArr == jArr2) {
            return this;
        }
        if (jArr == null) {
            this.f3167do = -1;
            return this;
        }
        if (jArr2 == null) {
            this.f3167do = 1;
            return this;
        }
        if (jArr.length != jArr2.length) {
            this.f3167do = jArr.length >= jArr2.length ? 1 : -1;
            return this;
        }
        for (int i = 0; i < jArr.length && this.f3167do == 0; i++) {
            m3990case(jArr[i], jArr2[i]);
        }
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public jp m4010try(int i, int i2) {
        if (this.f3167do != 0) {
            return this;
        }
        this.f3167do = i < i2 ? -1 : i > i2 ? 1 : 0;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public jp m4011while(Object[] objArr, Object[] objArr2) {
        return m4000import(objArr, objArr2, null);
    }
}

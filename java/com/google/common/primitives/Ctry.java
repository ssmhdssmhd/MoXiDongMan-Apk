package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Celse;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@ki0(emulated = true)
/* renamed from: com.google.common.primitives.try, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final int f15529do = 4;

    @ki0
    /* renamed from: com.google.common.primitives.try$do, reason: invalid class name */
    public static class Cdo extends AbstractList<Float> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final float[] array;
        public final int end;
        public final int start;

        public Cdo(float[] fArr) {
            this(fArr, 0, fArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Float) && Ctry.m17729catch(this.array, ((Float) obj).floatValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cdo)) {
                return super.equals(obj);
            }
            Cdo cdo = (Cdo) obj;
            int size = size();
            if (cdo.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != cdo.array[cdo.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iM17748this = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17748this = (iM17748this * 31) + Ctry.m17748this(this.array[i]);
            }
            return iM17748this;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17729catch;
            if (!(obj instanceof Float) || (iM17729catch = Ctry.m17729catch(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17729catch - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17749throw;
            if (!(obj instanceof Float) || (iM17749throw = Ctry.m17749throw(this.array, ((Float) obj).floatValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17749throw - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Float> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            float[] fArr = this.array;
            int i3 = this.start;
            return new Cdo(fArr, i + i3, i3 + i2);
        }

        public float[] toFloatArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            sb.append(this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(this.array[i]);
            }
        }

        public Cdo(float[] fArr, int i, int i2) {
            this.array = fArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Float get(int i) {
            af1.m222private(i, size());
            return Float.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Float set(int i, Float f) {
            af1.m222private(i, size());
            float[] fArr = this.array;
            int i2 = this.start;
            float f2 = fArr[i2 + i];
            fArr[i2 + i] = ((Float) af1.m205continue(f)).floatValue();
            return Float.valueOf(f2);
        }
    }

    /* renamed from: com.google.common.primitives.try$for, reason: invalid class name */
    public enum Cfor implements Comparator<float[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(float[] fArr, float[] fArr2) {
            int iMin = Math.min(fArr.length, fArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Float.compare(fArr[i], fArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return fArr.length - fArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.try$if, reason: invalid class name */
    public static final class Cif extends Celse<String, Float> implements Serializable {
        public static final Cif INSTANCE = new Cif();
        private static final long serialVersionUID = 1;

        private Cif() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Floats.stringConverter()";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(Float f) {
            return f.toString();
        }

        @Override // com.google.common.base.Celse
        public Float doForward(String str) {
            return Float.valueOf(str);
        }
    }

    private Ctry() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m17727break(float[] fArr, float f) {
        return m17729catch(fArr, f, 0, fArr.length);
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static float m17728case(float f, float f2, float f3) {
        af1.m206default(f2 <= f3, "min (%s) must be less than or equal to max (%s)", Float.valueOf(f2), Float.valueOf(f3));
        return Math.min(Math.max(f, f2), f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static int m17729catch(float[] fArr, float f, int i, int i2) {
        while (i < i2) {
            if (fArr[i] == f) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17730class(float[] fArr, float[] fArr2) {
        af1.m227strictfp(fArr, "array");
        af1.m227strictfp(fArr2, TypedValues.Attributes.S_TARGET);
        if (fArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (fArr.length - fArr2.length) + 1) {
            for (int i2 = 0; i2 < fArr2.length; i2++) {
                if (fArr[i + i2] != fArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m17731const(float f) {
        return Float.NEGATIVE_INFINITY < f && f < Float.POSITIVE_INFINITY;
    }

    /* renamed from: default, reason: not valid java name */
    public static float[] m17732default(Collection<? extends Number> collection) {
        if (collection instanceof Cdo) {
            return ((Cdo) collection).toFloatArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        float[] fArr = new float[length];
        for (int i = 0; i < length; i++) {
            fArr[i] = ((Number) af1.m205continue(array[i])).floatValue();
        }
        return fArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m17734else(float[] fArr, float f) {
        for (float f2 : fArr) {
            if (f2 == f) {
                return true;
            }
        }
        return false;
    }

    @b51
    @li0
    @o8
    /* renamed from: extends, reason: not valid java name */
    public static Float m17735extends(String str) {
        if (!Cnew.f15515if.matcher(str).matches()) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static String m17736final(String str, float... fArr) {
        af1.m205continue(str);
        if (fArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(fArr.length * 12);
        sb.append(fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            sb.append(str);
            sb.append(fArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Float> m17737for(float... fArr) {
        return fArr.length == 0 ? Collections.emptyList() : new Cdo(fArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static float[] m17738goto(float[] fArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return fArr.length < i ? Arrays.copyOf(fArr, i + i2) : fArr;
    }

    /* renamed from: import, reason: not valid java name */
    public static float m17740import(float... fArr) {
        af1.m220new(fArr.length > 0);
        float fMax = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMax = Math.max(fMax, fArr[i]);
        }
        return fMax;
    }

    /* renamed from: native, reason: not valid java name */
    public static float m17741native(float... fArr) {
        af1.m220new(fArr.length > 0);
        float fMin = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            fMin = Math.min(fMin, fArr[i]);
        }
        return fMin;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17742new(float f, float f2) {
        return Float.compare(f, f2);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m17743public(float[] fArr) {
        af1.m205continue(fArr);
        m17744return(fArr, 0, fArr.length);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m17744return(float[] fArr, int i, int i2) {
        af1.m205continue(fArr);
        af1.s(i, i2, fArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            float f = fArr[i];
            fArr[i] = fArr[i3];
            fArr[i3] = f;
            i++;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17745static(float[] fArr) {
        af1.m205continue(fArr);
        m17747switch(fArr, 0, fArr.length);
    }

    /* renamed from: super, reason: not valid java name */
    public static int m17746super(float[] fArr, float f) {
        return m17749throw(fArr, f, 0, fArr.length);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17747switch(float[] fArr, int i, int i2) {
        af1.m205continue(fArr);
        af1.s(i, i2, fArr.length);
        Arrays.sort(fArr, i, i2);
        m17744return(fArr, i, i2);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m17748this(float f) {
        return Float.valueOf(f).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public static int m17749throw(float[] fArr, float f, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (fArr[i3] == f) {
                return i3;
            }
        }
        return -1;
    }

    @o8
    /* renamed from: throws, reason: not valid java name */
    public static Celse<String, Float> m17750throws() {
        return Cif.INSTANCE;
    }

    /* renamed from: try, reason: not valid java name */
    public static float[] m17751try(float[]... fArr) {
        int length = 0;
        for (float[] fArr2 : fArr) {
            length += fArr2.length;
        }
        float[] fArr3 = new float[length];
        int length2 = 0;
        for (float[] fArr4 : fArr) {
            System.arraycopy(fArr4, 0, fArr3, length2, fArr4.length);
            length2 += fArr4.length;
        }
        return fArr3;
    }

    /* renamed from: while, reason: not valid java name */
    public static Comparator<float[]> m17752while() {
        return Cfor.INSTANCE;
    }
}

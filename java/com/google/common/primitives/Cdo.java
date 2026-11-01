package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@ki0
/* renamed from: com.google.common.primitives.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    @ki0
    /* renamed from: com.google.common.primitives.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0134do extends AbstractList<Boolean> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final boolean[] array;
        public final int end;
        public final int start;

        public C0134do(boolean[] zArr) {
            this(zArr, 0, zArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Boolean) && Cdo.m17540class(this.array, ((Boolean) obj).booleanValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0134do)) {
                return super.equals(obj);
            }
            C0134do c0134do = (C0134do) obj;
            int size = size();
            if (c0134do.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != c0134do.array[c0134do.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iM17537break = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17537break = (iM17537break * 31) + Cdo.m17537break(this.array[i]);
            }
            return iM17537break;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17540class;
            if (!(obj instanceof Boolean) || (iM17540class = Cdo.m17540class(this.array, ((Boolean) obj).booleanValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17540class - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17555throw;
            if (!(obj instanceof Boolean) || (iM17555throw = Cdo.m17555throw(this.array, ((Boolean) obj).booleanValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17555throw - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Boolean> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            boolean[] zArr = this.array;
            int i3 = this.start;
            return new C0134do(zArr, i + i3, i3 + i2);
        }

        public boolean[] toBooleanArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 7);
            sb.append(this.array[this.start] ? "[true" : "[false");
            int i = this.start;
            while (true) {
                i++;
                if (i >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(this.array[i] ? ", true" : ", false");
            }
        }

        public C0134do(boolean[] zArr, int i, int i2) {
            this.array = zArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Boolean get(int i) {
            af1.m222private(i, size());
            return Boolean.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Boolean set(int i, Boolean bool) {
            af1.m222private(i, size());
            boolean[] zArr = this.array;
            int i2 = this.start;
            boolean z = zArr[i2 + i];
            zArr[i2 + i] = ((Boolean) af1.m205continue(bool)).booleanValue();
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: com.google.common.primitives.do$for, reason: invalid class name */
    public enum Cfor implements Comparator<boolean[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Booleans.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(boolean[] zArr, boolean[] zArr2) {
            int iMin = Math.min(zArr.length, zArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17550new = Cdo.m17550new(zArr[i], zArr2[i]);
                if (iM17550new != 0) {
                    return iM17550new;
                }
            }
            return zArr.length - zArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.do$if, reason: invalid class name */
    public enum Cif implements Comparator<Boolean> {
        TRUE_FIRST(1, "Booleans.trueFirst()"),
        FALSE_FIRST(-1, "Booleans.falseFirst()");

        private final String toString;
        private final int trueValue;

        Cif(int i, String str) {
            this.trueValue = i;
            this.toString = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.toString;
        }

        @Override // java.util.Comparator
        public int compare(Boolean bool, Boolean bool2) {
            return (bool2.booleanValue() ? this.trueValue : 0) - (bool.booleanValue() ? this.trueValue : 0);
        }
    }

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m17537break(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m17538case(boolean[] zArr, boolean z) {
        for (boolean z2 : zArr) {
            if (z2 == z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17539catch(boolean[] zArr, boolean z) {
        return m17540class(zArr, z, 0, zArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static int m17540class(boolean[] zArr, boolean z, int i, int i2) {
        while (i < i2) {
            if (zArr[i] == z) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17541const(boolean[] zArr, boolean[] zArr2) {
        af1.m227strictfp(zArr, "array");
        af1.m227strictfp(zArr2, TypedValues.Attributes.S_TARGET);
        if (zArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (zArr.length - zArr2.length) + 1) {
            for (int i2 = 0; i2 < zArr2.length; i2++) {
                if (zArr[i + i2] != zArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static int m17543else(boolean... zArr) {
        int i = 0;
        for (boolean z : zArr) {
            if (z) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m17544final(String str, boolean... zArr) {
        af1.m205continue(str);
        if (zArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(zArr.length * 7);
        sb.append(zArr[0]);
        for (int i = 1; i < zArr.length; i++) {
            sb.append(str);
            sb.append(zArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Boolean> m17545for(boolean... zArr) {
        return zArr.length == 0 ? Collections.emptyList() : new C0134do(zArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean[] m17546goto(boolean[] zArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return zArr.length < i ? Arrays.copyOf(zArr, i + i2) : zArr;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m17548import(boolean[] zArr) {
        af1.m205continue(zArr);
        m17549native(zArr, 0, zArr.length);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m17549native(boolean[] zArr, int i, int i2) {
        af1.m205continue(zArr);
        af1.s(i, i2, zArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            boolean z = zArr[i];
            zArr[i] = zArr[i3];
            zArr[i3] = z;
            i++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17550new(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean[] m17551public(Collection<Boolean> collection) {
        if (collection instanceof C0134do) {
            return ((C0134do) collection).toBooleanArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = ((Boolean) af1.m205continue(array[i])).booleanValue();
        }
        return zArr;
    }

    @o8
    /* renamed from: return, reason: not valid java name */
    public static Comparator<Boolean> m17552return() {
        return Cif.TRUE_FIRST;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m17553super(boolean[] zArr, boolean z) {
        return m17555throw(zArr, z, 0, zArr.length);
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static Comparator<Boolean> m17554this() {
        return Cif.FALSE_FIRST;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public static int m17555throw(boolean[] zArr, boolean z, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (zArr[i3] == z) {
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean[] m17556try(boolean[]... zArr) {
        int length = 0;
        for (boolean[] zArr2 : zArr) {
            length += zArr2.length;
        }
        boolean[] zArr3 = new boolean[length];
        int length2 = 0;
        for (boolean[] zArr4 : zArr) {
            System.arraycopy(zArr4, 0, zArr3, length2, zArr4.length);
            length2 += zArr4.length;
        }
        return zArr3;
    }

    /* renamed from: while, reason: not valid java name */
    public static Comparator<boolean[]> m17557while() {
        return Cfor.INSTANCE;
    }
}

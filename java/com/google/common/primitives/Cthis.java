package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import android.support.v4.t3;
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

@ki0
/* renamed from: com.google.common.primitives.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    public static final int f15524do = 4;

    /* renamed from: if, reason: not valid java name */
    public static final int f15525if = 1073741824;

    @ki0
    /* renamed from: com.google.common.primitives.this$do, reason: invalid class name */
    public static class Cdo extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final int[] array;
        public final int end;
        public final int start;

        public Cdo(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && Cthis.m17687final(this.array, ((Integer) obj).intValue(), this.start, this.end) != -1;
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
            int iM17680class = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17680class = (iM17680class * 31) + Cthis.m17680class(this.array[i]);
            }
            return iM17680class;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17687final;
            if (!(obj instanceof Integer) || (iM17687final = Cthis.m17687final(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17687final - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17692import;
            if (!(obj instanceof Integer) || (iM17692import = Cthis.m17692import(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17692import - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            int[] iArr = this.array;
            int i3 = this.start;
            return new Cdo(iArr, i + i3, i3 + i2);
        }

        public int[] toIntArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
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

        public Cdo(int[] iArr, int i, int i2) {
            this.array = iArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i) {
            af1.m222private(i, size());
            return Integer.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer set(int i, Integer num) {
            af1.m222private(i, size());
            int[] iArr = this.array;
            int i2 = this.start;
            int i3 = iArr[i2 + i];
            iArr[i2 + i] = ((Integer) af1.m205continue(num)).intValue();
            return Integer.valueOf(i3);
        }
    }

    /* renamed from: com.google.common.primitives.this$for, reason: invalid class name */
    public enum Cfor implements Comparator<int[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Ints.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17705try = Cthis.m17705try(iArr[i], iArr2[i]);
                if (iM17705try != 0) {
                    return iM17705try;
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.this$if, reason: invalid class name */
    public static final class Cif extends Celse<String, Integer> implements Serializable {
        public static final Cif INSTANCE = new Cif();
        private static final long serialVersionUID = 1;

        private Cif() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Ints.stringConverter()";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(Integer num) {
            return num.toString();
        }

        @Override // com.google.common.base.Celse
        public Integer doForward(String str) {
            return Integer.decode(str);
        }
    }

    private Cthis() {
    }

    @b51
    @o8
    /* renamed from: abstract, reason: not valid java name */
    public static Integer m17676abstract(String str) {
        return m17682continue(str, 10);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m17677break(byte[] bArr) {
        af1.m204const(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return m17679catch(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    /* renamed from: case, reason: not valid java name */
    public static int[] m17678case(int[]... iArr) {
        int length = 0;
        for (int[] iArr2 : iArr) {
            length += iArr2.length;
        }
        int[] iArr3 = new int[length];
        int length2 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, length2, iArr4.length);
            length2 += iArr4.length;
        }
        return iArr3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17679catch(byte b, byte b2, byte b3, byte b4) {
        return (b << t3.f6397package) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m17680class(int i) {
        return i;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m17681const(int[] iArr, int i) {
        return m17687final(iArr, i, 0, iArr.length);
    }

    @b51
    @o8
    /* renamed from: continue, reason: not valid java name */
    public static Integer m17682continue(String str, int i) {
        Long lM17484private = Cbreak.m17484private(str, i);
        if (lM17484private == null || lM17484private.longValue() != lM17484private.intValue()) {
            return null;
        }
        return Integer.valueOf(lM17484private.intValue());
    }

    /* renamed from: default, reason: not valid java name */
    public static void m17683default(int[] iArr) {
        af1.m205continue(iArr);
        m17686extends(iArr, 0, iArr.length);
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static int m17685else(int i, int i2, int i3) {
        af1.m204const(i2 <= i3, "min (%s) must be less than or equal to max (%s)", i2, i3);
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m17686extends(int[] iArr, int i, int i2) {
        af1.m205continue(iArr);
        af1.s(i, i2, iArr.length);
        Arrays.sort(iArr, i, i2);
        m17701switch(iArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static int m17687final(int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @o8
    /* renamed from: finally, reason: not valid java name */
    public static Celse<String, Integer> m17688finally() {
        return Cif.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Integer> m17689for(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new Cdo(iArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m17690goto(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static int m17692import(int[] iArr, int i, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (iArr[i4] == i) {
                return i4;
            }
        }
        return -1;
    }

    /* renamed from: native, reason: not valid java name */
    public static Comparator<int[]> m17693native() {
        return Cfor.INSTANCE;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17694new(long j) {
        int i = (int) j;
        af1.m232throw(((long) i) == j, "Out of range: %s", j);
        return i;
    }

    /* renamed from: package, reason: not valid java name */
    public static int[] m17695package(Collection<? extends Number> collection) {
        if (collection instanceof Cdo) {
            return ((Cdo) collection).toIntArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ((Number) af1.m205continue(array[i])).intValue();
        }
        return iArr;
    }

    /* renamed from: private, reason: not valid java name */
    public static byte[] m17696private(int i) {
        return new byte[]{(byte) (i >> 24), (byte) (i >> 16), (byte) (i >> 8), (byte) i};
    }

    /* renamed from: public, reason: not valid java name */
    public static int m17697public(int... iArr) {
        af1.m220new(iArr.length > 0);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m17698return(int... iArr) {
        af1.m220new(iArr.length > 0);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] < i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17699static(int[] iArr) {
        af1.m205continue(iArr);
        m17701switch(iArr, 0, iArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17700super(int[] iArr, int[] iArr2) {
        af1.m227strictfp(iArr, "array");
        af1.m227strictfp(iArr2, TypedValues.Attributes.S_TARGET);
        if (iArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (iArr.length - iArr2.length) + 1) {
            for (int i2 = 0; i2 < iArr2.length; i2++) {
                if (iArr[i + i2] != iArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17701switch(int[] iArr, int i, int i2) {
        af1.m205continue(iArr);
        af1.s(i, i2, iArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            int i4 = iArr[i];
            iArr[i] = iArr[i3];
            iArr[i3] = i4;
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int[] m17702this(int[] iArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return iArr.length < i ? Arrays.copyOf(iArr, i + i2) : iArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m17703throw(String str, int... iArr) {
        af1.m205continue(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str);
            sb.append(iArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m17704throws(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17705try(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m17706while(int[] iArr, int i) {
        return m17692import(iArr, i, 0, iArr.length);
    }
}

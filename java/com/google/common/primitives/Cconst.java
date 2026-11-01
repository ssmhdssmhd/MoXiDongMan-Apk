package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.qx1;
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
/* renamed from: com.google.common.primitives.const, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cconst {

    /* renamed from: do, reason: not valid java name */
    public static final int f15497do = 2;

    /* renamed from: if, reason: not valid java name */
    public static final short f15498if = 16384;

    /* renamed from: com.google.common.primitives.const$do, reason: invalid class name */
    public enum Cdo implements Comparator<short[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(short[] sArr, short[] sArr2) {
            int iMin = Math.min(sArr.length, sArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17535try = Cconst.m17535try(sArr[i], sArr2[i]);
                if (iM17535try != 0) {
                    return iM17535try;
                }
            }
            return sArr.length - sArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.const$for, reason: invalid class name */
    public static final class Cfor extends Celse<String, Short> implements Serializable {
        public static final Cfor INSTANCE = new Cfor();
        private static final long serialVersionUID = 1;

        private Cfor() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(Short sh) {
            return sh.toString();
        }

        @Override // com.google.common.base.Celse
        public Short doForward(String str) {
            return Short.decode(str);
        }
    }

    @ki0
    /* renamed from: com.google.common.primitives.const$if, reason: invalid class name */
    public static class Cif extends AbstractList<Short> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final short[] array;
        public final int end;
        public final int start;

        public Cif(short[] sArr) {
            this(sArr, 0, sArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@b51 Object obj) {
            return (obj instanceof Short) && Cconst.m17517final(this.array, ((Short) obj).shortValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cif)) {
                return super.equals(obj);
            }
            Cif cif = (Cif) obj;
            int size = size();
            if (cif.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != cif.array[cif.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iM17511class = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17511class = (iM17511class * 31) + Cconst.m17511class(this.array[i]);
            }
            return iM17511class;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@b51 Object obj) {
            int iM17517final;
            if (!(obj instanceof Short) || (iM17517final = Cconst.m17517final(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17517final - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@b51 Object obj) {
            int iM17522import;
            if (!(obj instanceof Short) || (iM17522import = Cconst.m17522import(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17522import - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Short> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            short[] sArr = this.array;
            int i3 = this.start;
            return new Cif(sArr, i + i3, i3 + i2);
        }

        public short[] toShortArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 6);
            sb.append('[');
            sb.append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append((int) this.array[i]);
            }
        }

        public Cif(short[] sArr, int i, int i2) {
            this.array = sArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Short get(int i) {
            af1.m222private(i, size());
            return Short.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Short set(int i, Short sh) {
            af1.m222private(i, size());
            short[] sArr = this.array;
            int i2 = this.start;
            short s = sArr[i2 + i];
            sArr[i2 + i] = ((Short) af1.m205continue(sh)).shortValue();
            return Short.valueOf(s);
        }
    }

    private Cconst() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static short m17508break(byte[] bArr) {
        af1.m204const(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return m17510catch(bArr[0], bArr[1]);
    }

    /* renamed from: case, reason: not valid java name */
    public static short[] m17509case(short[]... sArr) {
        int length = 0;
        for (short[] sArr2 : sArr) {
            length += sArr2.length;
        }
        short[] sArr3 = new short[length];
        int length2 = 0;
        for (short[] sArr4 : sArr) {
            System.arraycopy(sArr4, 0, sArr3, length2, sArr4.length);
            length2 += sArr4.length;
        }
        return sArr3;
    }

    @li0
    /* renamed from: catch, reason: not valid java name */
    public static short m17510catch(byte b, byte b2) {
        return (short) ((b << 8) | (b2 & 255));
    }

    /* renamed from: class, reason: not valid java name */
    public static int m17511class(short s) {
        return s;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m17512const(short[] sArr, short s) {
        return m17517final(sArr, s, 0, sArr.length);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m17513default(short[] sArr) {
        af1.m205continue(sArr);
        m17516extends(sArr, 0, sArr.length);
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static short m17515else(short s, short s2, short s3) {
        af1.m204const(s2 <= s3, "min (%s) must be less than or equal to max (%s)", s2, s3);
        return s < s2 ? s2 : s < s3 ? s : s3;
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m17516extends(short[] sArr, int i, int i2) {
        af1.m205continue(sArr);
        af1.s(i, i2, sArr.length);
        Arrays.sort(sArr, i, i2);
        m17531switch(sArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static int m17517final(short[] sArr, short s, int i, int i2) {
        while (i < i2) {
            if (sArr[i] == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @o8
    /* renamed from: finally, reason: not valid java name */
    public static Celse<String, Short> m17518finally() {
        return Cfor.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Short> m17519for(short... sArr) {
        return sArr.length == 0 ? Collections.emptyList() : new Cif(sArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m17520goto(short[] sArr, short s) {
        for (short s2 : sArr) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static int m17522import(short[] sArr, short s, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (sArr[i3] == s) {
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: native, reason: not valid java name */
    public static Comparator<short[]> m17523native() {
        return Cdo.INSTANCE;
    }

    /* renamed from: new, reason: not valid java name */
    public static short m17524new(long j) {
        short s = (short) j;
        af1.m232throw(((long) s) == j, "Out of range: %s", j);
        return s;
    }

    /* renamed from: package, reason: not valid java name */
    public static short[] m17525package(Collection<? extends Number> collection) {
        if (collection instanceof Cif) {
            return ((Cif) collection).toShortArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = ((Number) af1.m205continue(array[i])).shortValue();
        }
        return sArr;
    }

    @li0
    /* renamed from: private, reason: not valid java name */
    public static byte[] m17526private(short s) {
        return new byte[]{(byte) (s >> 8), (byte) s};
    }

    /* renamed from: public, reason: not valid java name */
    public static short m17527public(short... sArr) {
        af1.m220new(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] > s) {
                s = sArr[i];
            }
        }
        return s;
    }

    /* renamed from: return, reason: not valid java name */
    public static short m17528return(short... sArr) {
        af1.m220new(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] < s) {
                s = sArr[i];
            }
        }
        return s;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17529static(short[] sArr) {
        af1.m205continue(sArr);
        m17531switch(sArr, 0, sArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17530super(short[] sArr, short[] sArr2) {
        af1.m227strictfp(sArr, "array");
        af1.m227strictfp(sArr2, TypedValues.Attributes.S_TARGET);
        if (sArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (sArr.length - sArr2.length) + 1) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                if (sArr[i + i2] != sArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17531switch(short[] sArr, int i, int i2) {
        af1.m205continue(sArr);
        af1.s(i, i2, sArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            short s = sArr[i];
            sArr[i] = sArr[i3];
            sArr[i3] = s;
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static short[] m17532this(short[] sArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return sArr.length < i ? Arrays.copyOf(sArr, i + i2) : sArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m17533throw(String str, short... sArr) {
        af1.m205continue(str);
        if (sArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(sArr.length * 6);
        sb.append((int) sArr[0]);
        for (int i = 1; i < sArr.length; i++) {
            sb.append(str);
            sb.append((int) sArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: throws, reason: not valid java name */
    public static short m17534throws(long j) {
        return j > 32767 ? qx1.f5534if : j < -32768 ? qx1.f5532do : (short) j;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17535try(short s, short s2) {
        return s - s2;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m17536while(short[] sArr, short s) {
        return m17522import(sArr, s, 0, sArr.length);
    }
}

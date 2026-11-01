package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
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

@ki0
/* renamed from: com.google.common.primitives.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak {

    /* renamed from: do, reason: not valid java name */
    public static final int f15486do = 8;

    /* renamed from: if, reason: not valid java name */
    public static final long f15487if = 4611686018427387904L;

    /* renamed from: com.google.common.primitives.break$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static final byte[] f15488do;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i <= 9; i++) {
                bArr[i + 48] = (byte) i;
            }
            for (int i2 = 0; i2 <= 26; i2++) {
                byte b = (byte) (i2 + 10);
                bArr[i2 + 65] = b;
                bArr[i2 + 97] = b;
            }
            f15488do = bArr;
        }

        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public static int m17495do(char c) {
            if (c < 128) {
                return f15488do[c];
            }
            return -1;
        }
    }

    @ki0
    /* renamed from: com.google.common.primitives.break$for, reason: invalid class name */
    public static class Cfor extends AbstractList<Long> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final long[] array;
        public final int end;
        public final int start;

        public Cfor(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Long) && Cbreak.m17470const(this.array, ((Long) obj).longValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cfor)) {
                return super.equals(obj);
            }
            Cfor cfor = (Cfor) obj;
            int size = size();
            if (cfor.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != cfor.array[cfor.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iM17468catch = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17468catch = (iM17468catch * 31) + Cbreak.m17468catch(this.array[i]);
            }
            return iM17468catch;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17470const;
            if (!(obj instanceof Long) || (iM17470const = Cbreak.m17470const(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17470const - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17494while;
            if (!(obj instanceof Long) || (iM17494while = Cbreak.m17494while(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17494while - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            long[] jArr = this.array;
            int i3 = this.start;
            return new Cfor(jArr, i + i3, i3 + i2);
        }

        public long[] toLongArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 10);
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

        public Cfor(long[] jArr, int i, int i2) {
            this.array = jArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i) {
            af1.m222private(i, size());
            return Long.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Long set(int i, Long l) {
            af1.m222private(i, size());
            long[] jArr = this.array;
            int i2 = this.start;
            long j = jArr[i2 + i];
            jArr[i2 + i] = ((Long) af1.m205continue(l)).longValue();
            return Long.valueOf(j);
        }
    }

    /* renamed from: com.google.common.primitives.break$if, reason: invalid class name */
    public enum Cif implements Comparator<long[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17482new = Cbreak.m17482new(jArr[i], jArr2[i]);
                if (iM17482new != 0) {
                    return iM17482new;
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.break$new, reason: invalid class name */
    public static final class Cnew extends Celse<String, Long> implements Serializable {
        public static final Cnew INSTANCE = new Cnew();
        private static final long serialVersionUID = 1;

        private Cnew() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Longs.stringConverter()";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(Long l) {
            return l.toString();
        }

        @Override // com.google.common.base.Celse
        public Long doForward(String str) {
            return Long.decode(str);
        }
    }

    private Cbreak() {
    }

    /* renamed from: break, reason: not valid java name */
    public static long m17466break(byte b, byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8) {
        return ((b2 & 255) << 48) | ((b & 255) << 56) | ((b3 & 255) << 40) | ((b4 & 255) << 32) | ((b5 & 255) << 24) | ((b6 & 255) << 16) | ((b7 & 255) << 8) | (b8 & 255);
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static long m17467case(long j, long j2, long j3) {
        af1.m219native(j2 <= j3, "min (%s) must be less than or equal to max (%s)", j2, j3);
        return Math.min(Math.max(j, j2), j3);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17468catch(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: class, reason: not valid java name */
    public static int m17469class(long[] jArr, long j) {
        return m17470const(jArr, j, 0, jArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static int m17470const(long[] jArr, long j, int i, int i2) {
        while (i < i2) {
            if (jArr[i] == j) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @o8
    /* renamed from: default, reason: not valid java name */
    public static Celse<String, Long> m17471default() {
        return Cnew.INSTANCE;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m17473else(long[] jArr, long j) {
        for (long j2 : jArr) {
            if (j2 == j) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static long[] m17474extends(Collection<? extends Number> collection) {
        if (collection instanceof Cfor) {
            return ((Cfor) collection).toLongArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = ((Number) af1.m205continue(array[i])).longValue();
        }
        return jArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17475final(long[] jArr, long[] jArr2) {
        af1.m227strictfp(jArr, "array");
        af1.m227strictfp(jArr2, TypedValues.Attributes.S_TARGET);
        if (jArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (jArr.length - jArr2.length) + 1) {
            for (int i2 = 0; i2 < jArr2.length; i2++) {
                if (jArr[i + i2] != jArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: finally, reason: not valid java name */
    public static byte[] m17476finally(long j) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (255 & j);
            j >>= 8;
        }
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Long> m17477for(long... jArr) {
        return jArr.length == 0 ? Collections.emptyList() : new Cfor(jArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static long[] m17478goto(long[] jArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return jArr.length < i ? Arrays.copyOf(jArr, i + i2) : jArr;
    }

    /* renamed from: import, reason: not valid java name */
    public static Comparator<long[]> m17480import() {
        return Cif.INSTANCE;
    }

    /* renamed from: native, reason: not valid java name */
    public static long m17481native(long... jArr) {
        af1.m220new(jArr.length > 0);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] > j) {
                j = jArr[i];
            }
        }
        return j;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17482new(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    @b51
    @o8
    /* renamed from: package, reason: not valid java name */
    public static Long m17483package(String str) {
        return m17484private(str, 10);
    }

    @b51
    @o8
    /* renamed from: private, reason: not valid java name */
    public static Long m17484private(String str, int i) {
        if (((String) af1.m205continue(str)).isEmpty()) {
            return null;
        }
        if (i < 2 || i > 36) {
            throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + i);
        }
        int i2 = str.charAt(0) == '-' ? 1 : 0;
        if (i2 == str.length()) {
            return null;
        }
        int i3 = i2 + 1;
        int iM17495do = Cdo.m17495do(str.charAt(i2));
        if (iM17495do < 0 || iM17495do >= i) {
            return null;
        }
        long j = -iM17495do;
        long j2 = i;
        long j3 = Long.MIN_VALUE / j2;
        while (i3 < str.length()) {
            int i4 = i3 + 1;
            int iM17495do2 = Cdo.m17495do(str.charAt(i3));
            if (iM17495do2 < 0 || iM17495do2 >= i || j < j3) {
                return null;
            }
            long j4 = j * j2;
            long j5 = iM17495do2;
            if (j4 < j5 - Long.MIN_VALUE) {
                return null;
            }
            j = j4 - j5;
            i3 = i4;
        }
        if (i2 != 0) {
            return Long.valueOf(j);
        }
        if (j == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j);
    }

    /* renamed from: public, reason: not valid java name */
    public static long m17485public(long... jArr) {
        af1.m220new(jArr.length > 0);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] < j) {
                j = jArr[i];
            }
        }
        return j;
    }

    /* renamed from: return, reason: not valid java name */
    public static void m17486return(long[] jArr) {
        af1.m205continue(jArr);
        m17487static(jArr, 0, jArr.length);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17487static(long[] jArr, int i, int i2) {
        af1.m205continue(jArr);
        af1.s(i, i2, jArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            long j = jArr[i];
            jArr[i] = jArr[i3];
            jArr[i3] = j;
            i++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static String m17488super(String str, long... jArr) {
        af1.m205continue(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 10);
        sb.append(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str);
            sb.append(jArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17489switch(long[] jArr) {
        af1.m205continue(jArr);
        m17492throws(jArr, 0, jArr.length);
    }

    /* renamed from: this, reason: not valid java name */
    public static long m17490this(byte[] bArr) {
        af1.m204const(bArr.length >= 8, "array too small: %s < %s", bArr.length, 8);
        return m17466break(bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m17491throw(long[] jArr, long j) {
        return m17494while(jArr, j, 0, jArr.length);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m17492throws(long[] jArr, int i, int i2) {
        af1.m205continue(jArr);
        af1.s(i, i2, jArr.length);
        Arrays.sort(jArr, i, i2);
        m17487static(jArr, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static long[] m17493try(long[]... jArr) {
        int length = 0;
        for (long[] jArr2 : jArr) {
            length += jArr2.length;
        }
        long[] jArr3 = new long[length];
        int length2 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, length2, jArr4.length);
            length2 += jArr4.length;
        }
        return jArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static int m17494while(long[] jArr, long j, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (jArr[i3] == j) {
                return i3;
            }
        }
        return -1;
    }
}

package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
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
import okhttp3.internal.ws.WebSocketProtocol;

@ki0(emulated = true)
/* renamed from: com.google.common.primitives.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final int f15508do = 2;

    @ki0
    /* renamed from: com.google.common.primitives.for$do, reason: invalid class name */
    public static class Cdo extends AbstractList<Character> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final char[] array;
        public final int end;
        public final int start;

        public Cdo(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Character) && Cfor.m17585final(this.array, ((Character) obj).charValue(), this.start, this.end) != -1;
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
            int iM17579class = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17579class = (iM17579class * 31) + Cfor.m17579class(this.array[i]);
            }
            return iM17579class;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17585final;
            if (!(obj instanceof Character) || (iM17585final = Cfor.m17585final(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17585final - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17590import;
            if (!(obj instanceof Character) || (iM17590import = Cfor.m17590import(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17590import - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Character> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            char[] cArr = this.array;
            int i3 = this.start;
            return new Cdo(cArr, i + i3, i3 + i2);
        }

        public char[] toCharArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 3);
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

        public Cdo(char[] cArr, int i, int i2) {
            this.array = cArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Character get(int i) {
            af1.m222private(i, size());
            return Character.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Character set(int i, Character ch) {
            af1.m222private(i, size());
            char[] cArr = this.array;
            int i2 = this.start;
            char c = cArr[i2 + i];
            cArr[i2 + i] = ((Character) af1.m205continue(ch)).charValue();
            return Character.valueOf(c);
        }
    }

    /* renamed from: com.google.common.primitives.for$if, reason: invalid class name */
    public enum Cif implements Comparator<char[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(char[] cArr, char[] cArr2) {
            int iMin = Math.min(cArr.length, cArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iM17602try = Cfor.m17602try(cArr[i], cArr2[i]);
                if (iM17602try != 0) {
                    return iM17602try;
                }
            }
            return cArr.length - cArr2.length;
        }
    }

    private Cfor() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static char m17576break(byte[] bArr) {
        af1.m204const(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return m17578catch(bArr[0], bArr[1]);
    }

    /* renamed from: case, reason: not valid java name */
    public static char[] m17577case(char[]... cArr) {
        int length = 0;
        for (char[] cArr2 : cArr) {
            length += cArr2.length;
        }
        char[] cArr3 = new char[length];
        int length2 = 0;
        for (char[] cArr4 : cArr) {
            System.arraycopy(cArr4, 0, cArr3, length2, cArr4.length);
            length2 += cArr4.length;
        }
        return cArr3;
    }

    @li0
    /* renamed from: catch, reason: not valid java name */
    public static char m17578catch(byte b, byte b2) {
        return (char) ((b << 8) | (b2 & 255));
    }

    /* renamed from: class, reason: not valid java name */
    public static int m17579class(char c) {
        return c;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m17580const(char[] cArr, char c) {
        return m17585final(cArr, c, 0, cArr.length);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m17581default(char[] cArr) {
        af1.m205continue(cArr);
        m17584extends(cArr, 0, cArr.length);
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static char m17583else(char c, char c2, char c3) {
        af1.m208else(c2 <= c3, "min (%s) must be less than or equal to max (%s)", c2, c3);
        return c < c2 ? c2 : c < c3 ? c : c3;
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m17584extends(char[] cArr, int i, int i2) {
        af1.m205continue(cArr);
        af1.s(i, i2, cArr.length);
        Arrays.sort(cArr, i, i2);
        m17598switch(cArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static int m17585final(char[] cArr, char c, int i, int i2) {
        while (i < i2) {
            if (cArr[i] == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: finally, reason: not valid java name */
    public static char[] m17586finally(Collection<Character> collection) {
        if (collection instanceof Cdo) {
            return ((Cdo) collection).toCharArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = ((Character) af1.m205continue(array[i])).charValue();
        }
        return cArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Character> m17587for(char... cArr) {
        return cArr.length == 0 ? Collections.emptyList() : new Cdo(cArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m17588goto(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public static int m17590import(char[] cArr, char c, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (cArr[i3] == c) {
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: native, reason: not valid java name */
    public static Comparator<char[]> m17591native() {
        return Cif.INSTANCE;
    }

    /* renamed from: new, reason: not valid java name */
    public static char m17592new(long j) {
        char c = (char) j;
        af1.m232throw(((long) c) == j, "Out of range: %s", j);
        return c;
    }

    @li0
    /* renamed from: package, reason: not valid java name */
    public static byte[] m17593package(char c) {
        return new byte[]{(byte) (c >> '\b'), (byte) c};
    }

    /* renamed from: public, reason: not valid java name */
    public static char m17594public(char... cArr) {
        af1.m220new(cArr.length > 0);
        char c = cArr[0];
        for (int i = 1; i < cArr.length; i++) {
            if (cArr[i] > c) {
                c = cArr[i];
            }
        }
        return c;
    }

    /* renamed from: return, reason: not valid java name */
    public static char m17595return(char... cArr) {
        af1.m220new(cArr.length > 0);
        char c = cArr[0];
        for (int i = 1; i < cArr.length; i++) {
            if (cArr[i] < c) {
                c = cArr[i];
            }
        }
        return c;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17596static(char[] cArr) {
        af1.m205continue(cArr);
        m17598switch(cArr, 0, cArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17597super(char[] cArr, char[] cArr2) {
        af1.m227strictfp(cArr, "array");
        af1.m227strictfp(cArr2, TypedValues.Attributes.S_TARGET);
        if (cArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (cArr.length - cArr2.length) + 1) {
            for (int i2 = 0; i2 < cArr2.length; i2++) {
                if (cArr[i + i2] != cArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17598switch(char[] cArr, int i, int i2) {
        af1.m205continue(cArr);
        af1.s(i, i2, cArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            char c = cArr[i];
            cArr[i] = cArr[i3];
            cArr[i3] = c;
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static char[] m17599this(char[] cArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return cArr.length < i ? Arrays.copyOf(cArr, i + i2) : cArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m17600throw(String str, char... cArr) {
        af1.m205continue(str);
        int length = cArr.length;
        if (length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder((str.length() * (length - 1)) + length);
        sb.append(cArr[0]);
        for (int i = 1; i < length; i++) {
            sb.append(str);
            sb.append(cArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: throws, reason: not valid java name */
    public static char m17601throws(long j) {
        if (j > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            return (char) 65535;
        }
        if (j < 0) {
            return (char) 0;
        }
        return (char) j;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17602try(char c, char c2) {
        return c - c2;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m17603while(char[] cArr, char c) {
        return m17590import(cArr, c, 0, cArr.length);
    }
}

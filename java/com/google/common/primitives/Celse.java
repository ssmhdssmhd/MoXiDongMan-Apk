package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.il;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

@fm0
@ki0
@o8
/* renamed from: com.google.common.primitives.else, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Celse implements Serializable {

    /* renamed from: if, reason: not valid java name */
    private static final Celse f15502if = new Celse(new int[0]);
    private final int[] array;

    /* renamed from: do, reason: not valid java name */
    private final transient int f15503do;
    private final int end;

    @lf
    /* renamed from: com.google.common.primitives.else$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private int[] f15504do;

        /* renamed from: if, reason: not valid java name */
        private int f15505if = 0;

        public Cfor(int i) {
            this.f15504do = new int[i];
        }

        /* renamed from: else, reason: not valid java name */
        private void m17559else(int i) {
            int i2 = this.f15505if + i;
            int[] iArr = this.f15504do;
            if (i2 > iArr.length) {
                int[] iArr2 = new int[m17560goto(iArr.length, i2)];
                System.arraycopy(this.f15504do, 0, iArr2, 0, this.f15505if);
                this.f15504do = iArr2;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private static int m17560goto(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        @il
        /* renamed from: case, reason: not valid java name */
        public Celse m17561case() {
            return this.f15505if == 0 ? Celse.f15502if : new Celse(this.f15504do, 0, this.f15505if);
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m17562do(int i) {
            m17559else(1);
            int[] iArr = this.f15504do;
            int i2 = this.f15505if;
            iArr[i2] = i;
            this.f15505if = i2 + 1;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor m17563for(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return m17565new((Collection) iterable);
            }
            Iterator<Integer> it = iterable.iterator();
            while (it.hasNext()) {
                m17562do(it.next().intValue());
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cfor m17564if(Celse celse) {
            m17559else(celse.length());
            System.arraycopy(celse.array, celse.f15503do, this.f15504do, this.f15505if, celse.length());
            this.f15505if += celse.length();
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cfor m17565new(Collection<Integer> collection) {
            m17559else(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f15504do;
                int i = this.f15505if;
                this.f15505if = i + 1;
                iArr[i] = num.intValue();
            }
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cfor m17566try(int[] iArr) {
            m17559else(iArr.length);
            System.arraycopy(iArr, 0, this.f15504do, this.f15505if, iArr.length);
            this.f15505if += iArr.length;
            return this;
        }
    }

    /* renamed from: com.google.common.primitives.else$if, reason: invalid class name */
    public static class Cif extends AbstractList<Integer> implements RandomAccess, Serializable {
        private final Celse parent;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cif) {
                return this.parent.equals(((Cif) obj).parent);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = this.parent.f15503do;
            for (Object obj2 : list) {
                if (obj2 instanceof Integer) {
                    int i2 = i + 1;
                    if (this.parent.array[i] == ((Integer) obj2).intValue()) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.parent.indexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.parent.lastIndexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }

        private Cif(Celse celse) {
            this.parent = celse;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i) {
            return Integer.valueOf(this.parent.get(i));
        }
    }

    public static Cfor builder(int i) {
        af1.m202catch(i >= 0, "Invalid initialCapacity: %s", i);
        return new Cfor(i);
    }

    public static Celse copyOf(int[] iArr) {
        return iArr.length == 0 ? f15502if : new Celse(Arrays.copyOf(iArr, iArr.length));
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m17558do() {
        return this.f15503do > 0 || this.end < this.array.length;
    }

    public static Celse of() {
        return f15502if;
    }

    public List<Integer> asList() {
        return new Cif();
    }

    public boolean contains(int i) {
        return indexOf(i) >= 0;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Celse)) {
            return false;
        }
        Celse celse = (Celse) obj;
        if (length() != celse.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != celse.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i) {
        af1.m222private(i, length());
        return this.array[this.f15503do + i];
    }

    public int hashCode() {
        int iM17680class = 1;
        for (int i = this.f15503do; i < this.end; i++) {
            iM17680class = (iM17680class * 31) + Cthis.m17680class(this.array[i]);
        }
        return iM17680class;
    }

    public int indexOf(int i) {
        for (int i2 = this.f15503do; i2 < this.end; i2++) {
            if (this.array[i2] == i) {
                return i2 - this.f15503do;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.f15503do;
    }

    public int lastIndexOf(int i) {
        int i2;
        int i3 = this.end;
        do {
            i3--;
            i2 = this.f15503do;
            if (i3 < i2) {
                return -1;
            }
        } while (this.array[i3] != i);
        return i3 - i2;
    }

    public int length() {
        return this.end - this.f15503do;
    }

    public Object readResolve() {
        return isEmpty() ? f15502if : this;
    }

    public Celse subArray(int i, int i2) {
        af1.s(i, i2, length());
        if (i == i2) {
            return f15502if;
        }
        int[] iArr = this.array;
        int i3 = this.f15503do;
        return new Celse(iArr, i + i3, i3 + i2);
    }

    public int[] toArray() {
        return Arrays.copyOfRange(this.array, this.f15503do, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.array[this.f15503do]);
        int i = this.f15503do;
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

    public Celse trimmed() {
        return m17558do() ? new Celse(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }

    private Celse(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public static Celse copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? f15502if : new Celse(Cthis.m17695package(collection));
    }

    public static Celse of(int i) {
        return new Celse(new int[]{i});
    }

    private Celse(int[] iArr, int i, int i2) {
        this.array = iArr;
        this.f15503do = i;
        this.end = i2;
    }

    public static Cfor builder() {
        return new Cfor(10);
    }

    public static Celse copyOf(Iterable<Integer> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Integer>) iterable);
        }
        return builder().m17563for(iterable).m17561case();
    }

    public static Celse of(int i, int i2) {
        return new Celse(new int[]{i, i2});
    }

    public static Celse of(int i, int i2, int i3) {
        return new Celse(new int[]{i, i2, i3});
    }

    public static Celse of(int i, int i2, int i3, int i4) {
        return new Celse(new int[]{i, i2, i3, i4});
    }

    public static Celse of(int i, int i2, int i3, int i4, int i5) {
        return new Celse(new int[]{i, i2, i3, i4, i5});
    }

    public static Celse of(int i, int i2, int i3, int i4, int i5, int i6) {
        return new Celse(new int[]{i, i2, i3, i4, i5, i6});
    }

    public static Celse of(int i, int... iArr) {
        af1.m235try(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new Celse(iArr2);
    }
}

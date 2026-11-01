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
/* renamed from: com.google.common.primitives.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cgoto implements Serializable {

    /* renamed from: if, reason: not valid java name */
    private static final Cgoto f15510if = new Cgoto(new long[0]);
    private final long[] array;

    /* renamed from: do, reason: not valid java name */
    private final transient int f15511do;
    private final int end;

    @lf
    /* renamed from: com.google.common.primitives.goto$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private long[] f15512do;

        /* renamed from: if, reason: not valid java name */
        private int f15513if = 0;

        public Cfor(int i) {
            this.f15512do = new long[i];
        }

        /* renamed from: else, reason: not valid java name */
        private void m17605else(int i) {
            int i2 = this.f15513if + i;
            long[] jArr = this.f15512do;
            if (i2 > jArr.length) {
                long[] jArr2 = new long[m17606goto(jArr.length, i2)];
                System.arraycopy(this.f15512do, 0, jArr2, 0, this.f15513if);
                this.f15512do = jArr2;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private static int m17606goto(int i, int i2) {
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
        public Cgoto m17607case() {
            return this.f15513if == 0 ? Cgoto.f15510if : new Cgoto(this.f15512do, 0, this.f15513if);
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m17608do(long j) {
            m17605else(1);
            long[] jArr = this.f15512do;
            int i = this.f15513if;
            jArr[i] = j;
            this.f15513if = i + 1;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor m17609for(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return m17611new((Collection) iterable);
            }
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                m17608do(it.next().longValue());
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cfor m17610if(Cgoto cgoto) {
            m17605else(cgoto.length());
            System.arraycopy(cgoto.array, cgoto.f15511do, this.f15512do, this.f15513if, cgoto.length());
            this.f15513if += cgoto.length();
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cfor m17611new(Collection<Long> collection) {
            m17605else(collection.size());
            for (Long l : collection) {
                long[] jArr = this.f15512do;
                int i = this.f15513if;
                this.f15513if = i + 1;
                jArr[i] = l.longValue();
            }
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cfor m17612try(long[] jArr) {
            m17605else(jArr.length);
            System.arraycopy(jArr, 0, this.f15512do, this.f15513if, jArr.length);
            this.f15513if += jArr.length;
            return this;
        }
    }

    /* renamed from: com.google.common.primitives.goto$if, reason: invalid class name */
    public static class Cif extends AbstractList<Long> implements RandomAccess, Serializable {
        private final Cgoto parent;

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
            int i = this.parent.f15511do;
            for (Object obj2 : list) {
                if (obj2 instanceof Long) {
                    int i2 = i + 1;
                    if (this.parent.array[i] == ((Long) obj2).longValue()) {
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
            if (obj instanceof Long) {
                return this.parent.indexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Long) {
                return this.parent.lastIndexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }

        private Cif(Cgoto cgoto) {
            this.parent = cgoto;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i) {
            return Long.valueOf(this.parent.get(i));
        }
    }

    public static Cfor builder(int i) {
        af1.m202catch(i >= 0, "Invalid initialCapacity: %s", i);
        return new Cfor(i);
    }

    public static Cgoto copyOf(long[] jArr) {
        return jArr.length == 0 ? f15510if : new Cgoto(Arrays.copyOf(jArr, jArr.length));
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m17604do() {
        return this.f15511do > 0 || this.end < this.array.length;
    }

    public static Cgoto of() {
        return f15510if;
    }

    public List<Long> asList() {
        return new Cif();
    }

    public boolean contains(long j) {
        return indexOf(j) >= 0;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cgoto)) {
            return false;
        }
        Cgoto cgoto = (Cgoto) obj;
        if (length() != cgoto.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != cgoto.get(i)) {
                return false;
            }
        }
        return true;
    }

    public long get(int i) {
        af1.m222private(i, length());
        return this.array[this.f15511do + i];
    }

    public int hashCode() {
        int iM17468catch = 1;
        for (int i = this.f15511do; i < this.end; i++) {
            iM17468catch = (iM17468catch * 31) + Cbreak.m17468catch(this.array[i]);
        }
        return iM17468catch;
    }

    public int indexOf(long j) {
        for (int i = this.f15511do; i < this.end; i++) {
            if (this.array[i] == j) {
                return i - this.f15511do;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.f15511do;
    }

    public int lastIndexOf(long j) {
        int i;
        int i2 = this.end;
        do {
            i2--;
            i = this.f15511do;
            if (i2 < i) {
                return -1;
            }
        } while (this.array[i2] != j);
        return i2 - i;
    }

    public int length() {
        return this.end - this.f15511do;
    }

    public Object readResolve() {
        return isEmpty() ? f15510if : this;
    }

    public Cgoto subArray(int i, int i2) {
        af1.s(i, i2, length());
        if (i == i2) {
            return f15510if;
        }
        long[] jArr = this.array;
        int i3 = this.f15511do;
        return new Cgoto(jArr, i + i3, i3 + i2);
    }

    public long[] toArray() {
        return Arrays.copyOfRange(this.array, this.f15511do, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.array[this.f15511do]);
        int i = this.f15511do;
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

    public Cgoto trimmed() {
        return m17604do() ? new Cgoto(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }

    private Cgoto(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public static Cgoto of(long j) {
        return new Cgoto(new long[]{j});
    }

    private Cgoto(long[] jArr, int i, int i2) {
        this.array = jArr;
        this.f15511do = i;
        this.end = i2;
    }

    public static Cfor builder() {
        return new Cfor(10);
    }

    public static Cgoto copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? f15510if : new Cgoto(Cbreak.m17474extends(collection));
    }

    public static Cgoto of(long j, long j2) {
        return new Cgoto(new long[]{j, j2});
    }

    public static Cgoto copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
        }
        return builder().m17609for(iterable).m17607case();
    }

    public static Cgoto of(long j, long j2, long j3) {
        return new Cgoto(new long[]{j, j2, j3});
    }

    public static Cgoto of(long j, long j2, long j3, long j4) {
        return new Cgoto(new long[]{j, j2, j3, j4});
    }

    public static Cgoto of(long j, long j2, long j3, long j4, long j5) {
        return new Cgoto(new long[]{j, j2, j3, j4, j5});
    }

    public static Cgoto of(long j, long j2, long j3, long j4, long j5, long j6) {
        return new Cgoto(new long[]{j, j2, j3, j4, j5, j6});
    }

    public static Cgoto of(long j, long... jArr) {
        af1.m235try(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new Cgoto(jArr2);
    }
}

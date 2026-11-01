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
/* renamed from: com.google.common.primitives.case, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccase implements Serializable {

    /* renamed from: if, reason: not valid java name */
    private static final Ccase f15490if = new Ccase(new double[0]);
    private final double[] array;

    /* renamed from: do, reason: not valid java name */
    private final transient int f15491do;
    private final int end;

    @lf
    /* renamed from: com.google.common.primitives.case$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private double[] f15492do;

        /* renamed from: if, reason: not valid java name */
        private int f15493if = 0;

        public Cfor(int i) {
            this.f15492do = new double[i];
        }

        /* renamed from: else, reason: not valid java name */
        private void m17498else(int i) {
            int i2 = this.f15493if + i;
            double[] dArr = this.f15492do;
            if (i2 > dArr.length) {
                double[] dArr2 = new double[m17499goto(dArr.length, i2)];
                System.arraycopy(this.f15492do, 0, dArr2, 0, this.f15493if);
                this.f15492do = dArr2;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private static int m17499goto(int i, int i2) {
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
        public Ccase m17500case() {
            return this.f15493if == 0 ? Ccase.f15490if : new Ccase(this.f15492do, 0, this.f15493if);
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m17501do(double d) {
            m17498else(1);
            double[] dArr = this.f15492do;
            int i = this.f15493if;
            dArr[i] = d;
            this.f15493if = i + 1;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor m17502for(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return m17504new((Collection) iterable);
            }
            Iterator<Double> it = iterable.iterator();
            while (it.hasNext()) {
                m17501do(it.next().doubleValue());
            }
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cfor m17503if(Ccase ccase) {
            m17498else(ccase.length());
            System.arraycopy(ccase.array, ccase.f15491do, this.f15492do, this.f15493if, ccase.length());
            this.f15493if += ccase.length();
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cfor m17504new(Collection<Double> collection) {
            m17498else(collection.size());
            for (Double d : collection) {
                double[] dArr = this.f15492do;
                int i = this.f15493if;
                this.f15493if = i + 1;
                dArr[i] = d.doubleValue();
            }
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cfor m17505try(double[] dArr) {
            m17498else(dArr.length);
            System.arraycopy(dArr, 0, this.f15492do, this.f15493if, dArr.length);
            this.f15493if += dArr.length;
            return this;
        }
    }

    /* renamed from: com.google.common.primitives.case$if, reason: invalid class name */
    public static class Cif extends AbstractList<Double> implements RandomAccess, Serializable {
        private final Ccase parent;

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
            int i = this.parent.f15491do;
            for (Object obj2 : list) {
                if (obj2 instanceof Double) {
                    int i2 = i + 1;
                    if (Ccase.m17496do(this.parent.array[i], ((Double) obj2).doubleValue())) {
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
            if (obj instanceof Double) {
                return this.parent.indexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                return this.parent.lastIndexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }

        private Cif(Ccase ccase) {
            this.parent = ccase;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            return Double.valueOf(this.parent.get(i));
        }
    }

    public static Cfor builder(int i) {
        af1.m202catch(i >= 0, "Invalid initialCapacity: %s", i);
        return new Cfor(i);
    }

    public static Ccase copyOf(double[] dArr) {
        return dArr.length == 0 ? f15490if : new Ccase(Arrays.copyOf(dArr, dArr.length));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static boolean m17496do(double d, double d2) {
        return Double.doubleToLongBits(d) == Double.doubleToLongBits(d2);
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m17497if() {
        return this.f15491do > 0 || this.end < this.array.length;
    }

    public static Ccase of() {
        return f15490if;
    }

    public List<Double> asList() {
        return new Cif();
    }

    public boolean contains(double d) {
        return indexOf(d) >= 0;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ccase)) {
            return false;
        }
        Ccase ccase = (Ccase) obj;
        if (length() != ccase.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!m17496do(get(i), ccase.get(i))) {
                return false;
            }
        }
        return true;
    }

    public double get(int i) {
        af1.m222private(i, length());
        return this.array[this.f15491do + i];
    }

    public int hashCode() {
        int iM17628break = 1;
        for (int i = this.f15491do; i < this.end; i++) {
            iM17628break = (iM17628break * 31) + Cnew.m17628break(this.array[i]);
        }
        return iM17628break;
    }

    public int indexOf(double d) {
        for (int i = this.f15491do; i < this.end; i++) {
            if (m17496do(this.array[i], d)) {
                return i - this.f15491do;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.f15491do;
    }

    public int lastIndexOf(double d) {
        int i = this.end;
        do {
            i--;
            if (i < this.f15491do) {
                return -1;
            }
        } while (!m17496do(this.array[i], d));
        return i - this.f15491do;
    }

    public int length() {
        return this.end - this.f15491do;
    }

    public Object readResolve() {
        return isEmpty() ? f15490if : this;
    }

    public Ccase subArray(int i, int i2) {
        af1.s(i, i2, length());
        if (i == i2) {
            return f15490if;
        }
        double[] dArr = this.array;
        int i3 = this.f15491do;
        return new Ccase(dArr, i + i3, i3 + i2);
    }

    public double[] toArray() {
        return Arrays.copyOfRange(this.array, this.f15491do, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.array[this.f15491do]);
        int i = this.f15491do;
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

    public Ccase trimmed() {
        return m17497if() ? new Ccase(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }

    private Ccase(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public static Ccase of(double d) {
        return new Ccase(new double[]{d});
    }

    private Ccase(double[] dArr, int i, int i2) {
        this.array = dArr;
        this.f15491do = i;
        this.end = i2;
    }

    public static Cfor builder() {
        return new Cfor(10);
    }

    public static Ccase copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? f15490if : new Ccase(Cnew.m17636extends(collection));
    }

    public static Ccase of(double d, double d2) {
        return new Ccase(new double[]{d, d2});
    }

    public static Ccase copyOf(Iterable<Double> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Double>) iterable);
        }
        return builder().m17502for(iterable).m17500case();
    }

    public static Ccase of(double d, double d2, double d3) {
        return new Ccase(new double[]{d, d2, d3});
    }

    public static Ccase of(double d, double d2, double d3, double d4) {
        return new Ccase(new double[]{d, d2, d3, d4});
    }

    public static Ccase of(double d, double d2, double d3, double d4, double d5) {
        return new Ccase(new double[]{d, d2, d3, d4, d5});
    }

    public static Ccase of(double d, double d2, double d3, double d4, double d5, double d6) {
        return new Ccase(new double[]{d, d2, d3, d4, d5, d6});
    }

    public static Ccase of(double d, double... dArr) {
        af1.m235try(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new Ccase(dArr2);
    }
}

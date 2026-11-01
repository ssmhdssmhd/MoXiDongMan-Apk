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
import java.util.regex.Pattern;

@ki0(emulated = true)
/* renamed from: com.google.common.primitives.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    public static final int f15514do = 8;

    /* renamed from: if, reason: not valid java name */
    @li0
    public static final Pattern f15515if = m17650this();

    @ki0
    /* renamed from: com.google.common.primitives.new$do, reason: invalid class name */
    public static class Cdo extends AbstractList<Double> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final double[] array;
        public final int end;
        public final int start;

        public Cdo(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Double) && Cnew.m17631class(this.array, ((Double) obj).doubleValue(), this.start, this.end) != -1;
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
            int iM17628break = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17628break = (iM17628break * 31) + Cnew.m17628break(this.array[i]);
            }
            return iM17628break;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17631class;
            if (!(obj instanceof Double) || (iM17631class = Cnew.m17631class(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17631class - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17654while;
            if (!(obj instanceof Double) || (iM17654while = Cnew.m17654while(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17654while - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            double[] dArr = this.array;
            int i3 = this.start;
            return new Cdo(dArr, i + i3, i3 + i2);
        }

        public double[] toDoubleArray() {
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

        public Cdo(double[] dArr, int i, int i2) {
            this.array = dArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            af1.m222private(i, size());
            return Double.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Double set(int i, Double d) {
            af1.m222private(i, size());
            double[] dArr = this.array;
            int i2 = this.start;
            double d2 = dArr[i2 + i];
            dArr[i2 + i] = ((Double) af1.m205continue(d)).doubleValue();
            return Double.valueOf(d2);
        }
    }

    /* renamed from: com.google.common.primitives.new$for, reason: invalid class name */
    public enum Cfor implements Comparator<double[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(double[] dArr, double[] dArr2) {
            int iMin = Math.min(dArr.length, dArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Double.compare(dArr[i], dArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return dArr.length - dArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.new$if, reason: invalid class name */
    public static final class Cif extends Celse<String, Double> implements Serializable {
        public static final Cif INSTANCE = new Cif();
        private static final long serialVersionUID = 1;

        private Cif() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Doubles.stringConverter()";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(Double d) {
            return d.toString();
        }

        @Override // com.google.common.base.Celse
        public Double doForward(String str) {
            return Double.valueOf(str);
        }
    }

    private Cnew() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m17628break(double d) {
        return Double.valueOf(d).hashCode();
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static double m17629case(double d, double d2, double d3) {
        af1.m206default(d2 <= d3, "min (%s) must be less than or equal to max (%s)", Double.valueOf(d2), Double.valueOf(d3));
        return Math.min(Math.max(d, d2), d3);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17630catch(double[] dArr, double d) {
        return m17631class(dArr, d, 0, dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static int m17631class(double[] dArr, double d, int i, int i2) {
        while (i < i2) {
            if (dArr[i] == d) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17632const(double[] dArr, double[] dArr2) {
        af1.m227strictfp(dArr, "array");
        af1.m227strictfp(dArr2, TypedValues.Attributes.S_TARGET);
        if (dArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (dArr.length - dArr2.length) + 1) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                if (dArr[i + i2] != dArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    @o8
    /* renamed from: default, reason: not valid java name */
    public static Celse<String, Double> m17633default() {
        return Cif.INSTANCE;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m17635else(double[] dArr, double d) {
        for (double d2 : dArr) {
            if (d2 == d) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static double[] m17636extends(Collection<? extends Number> collection) {
        if (collection instanceof Cdo) {
            return ((Cdo) collection).toDoubleArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = ((Number) af1.m205continue(array[i])).doubleValue();
        }
        return dArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m17637final(double d) {
        return Double.NEGATIVE_INFINITY < d && d < Double.POSITIVE_INFINITY;
    }

    @b51
    @li0
    @o8
    /* renamed from: finally, reason: not valid java name */
    public static Double m17638finally(String str) {
        if (!f15515if.matcher(str).matches()) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Double> m17639for(double... dArr) {
        return dArr.length == 0 ? Collections.emptyList() : new Cdo(dArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static double[] m17640goto(double[] dArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return dArr.length < i ? Arrays.copyOf(dArr, i + i2) : dArr;
    }

    /* renamed from: import, reason: not valid java name */
    public static Comparator<double[]> m17642import() {
        return Cfor.INSTANCE;
    }

    /* renamed from: native, reason: not valid java name */
    public static double m17643native(double... dArr) {
        af1.m220new(dArr.length > 0);
        double dMax = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMax = Math.max(dMax, dArr[i]);
        }
        return dMax;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17644new(double d, double d2) {
        return Double.compare(d, d2);
    }

    /* renamed from: public, reason: not valid java name */
    public static double m17645public(double... dArr) {
        af1.m220new(dArr.length > 0);
        double dMin = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMin = Math.min(dMin, dArr[i]);
        }
        return dMin;
    }

    /* renamed from: return, reason: not valid java name */
    public static void m17646return(double[] dArr) {
        af1.m205continue(dArr);
        m17647static(dArr, 0, dArr.length);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m17647static(double[] dArr, int i, int i2) {
        af1.m205continue(dArr);
        af1.s(i, i2, dArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            double d = dArr[i];
            dArr[i] = dArr[i3];
            dArr[i3] = d;
            i++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static String m17648super(String str, double... dArr) {
        af1.m205continue(str);
        if (dArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(dArr.length * 12);
        sb.append(dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            sb.append(str);
            sb.append(dArr[i]);
        }
        return sb.toString();
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m17649switch(double[] dArr) {
        af1.m205continue(dArr);
        m17652throws(dArr, 0, dArr.length);
    }

    @li0
    /* renamed from: this, reason: not valid java name */
    private static Pattern m17650this() {
        return Pattern.compile(("[+-]?(?:NaN|Infinity|" + ("(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?") + "|" + ("0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?") + ")").replace("#", "+"));
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m17651throw(double[] dArr, double d) {
        return m17654while(dArr, d, 0, dArr.length);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m17652throws(double[] dArr, int i, int i2) {
        af1.m205continue(dArr);
        af1.s(i, i2, dArr.length);
        Arrays.sort(dArr, i, i2);
        m17647static(dArr, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static double[] m17653try(double[]... dArr) {
        int length = 0;
        for (double[] dArr2 : dArr) {
            length += dArr2.length;
        }
        double[] dArr3 = new double[length];
        int length2 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, length2, dArr4.length);
            length2 += dArr4.length;
        }
        return dArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static int m17654while(double[] dArr, double d, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (dArr[i3] == d) {
                return i3;
            }
        }
        return -1;
    }
}

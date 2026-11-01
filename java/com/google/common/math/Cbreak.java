package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cthis;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

@li0
@o8
/* renamed from: com.google.common.math.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak {

    /* renamed from: com.google.common.math.break$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final int f15368do;

        /* renamed from: if, reason: not valid java name */
        private final int f15369if;

        /* renamed from: do, reason: not valid java name */
        public double m17217do(Collection<? extends Number> collection) {
            return m17221try(com.google.common.primitives.Cnew.m17636extends(collection));
        }

        /* renamed from: for, reason: not valid java name */
        public double m17218for(int... iArr) {
            return m17221try(Cbreak.m17198class(iArr));
        }

        /* renamed from: if, reason: not valid java name */
        public double m17219if(double... dArr) {
            return m17221try((double[]) dArr.clone());
        }

        /* renamed from: new, reason: not valid java name */
        public double m17220new(long... jArr) {
            return m17221try(Cbreak.m17199const(jArr));
        }

        /* renamed from: try, reason: not valid java name */
        public double m17221try(double... dArr) {
            af1.m235try(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (Cbreak.m17195break(dArr)) {
                return Double.NaN;
            }
            long length = this.f15369if * (dArr.length - 1);
            int iM17237else = (int) Ccase.m17237else(length, this.f15368do, RoundingMode.DOWN);
            int i = (int) (length - (iM17237else * this.f15368do));
            Cbreak.m17210return(iM17237else, dArr, 0, dArr.length - 1);
            if (i == 0) {
                return dArr[iM17237else];
            }
            int i2 = iM17237else + 1;
            Cbreak.m17210return(i2, dArr, i2, dArr.length - 1);
            return Cbreak.m17197catch(dArr[iM17237else], dArr[i2], i, this.f15368do);
        }

        private Cfor(int i, int i2) {
            Cbreak.m17204goto(i2, i);
            this.f15368do = i;
            this.f15369if = i2;
        }
    }

    /* renamed from: com.google.common.math.break$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final int f15370do;

        /* renamed from: do, reason: not valid java name */
        public Cfor m17222do(int i) {
            return new Cfor(this.f15370do, i);
        }

        /* renamed from: for, reason: not valid java name */
        public Cnew m17223for(int... iArr) {
            return new Cnew(this.f15370do, (int[]) iArr.clone());
        }

        /* renamed from: if, reason: not valid java name */
        public Cnew m17224if(Collection<Integer> collection) {
            return new Cnew(this.f15370do, Cthis.m17695package(collection));
        }

        private Cif(int i) {
            af1.m235try(i > 0, "Quantile scale must be positive");
            this.f15370do = i;
        }
    }

    /* renamed from: com.google.common.math.break$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final int f15371do;

        /* renamed from: if, reason: not valid java name */
        private final int[] f15372if;

        /* renamed from: do, reason: not valid java name */
        public Map<Integer, Double> m17225do(Collection<? extends Number> collection) {
            return m17229try(com.google.common.primitives.Cnew.m17636extends(collection));
        }

        /* renamed from: for, reason: not valid java name */
        public Map<Integer, Double> m17226for(int... iArr) {
            return m17229try(Cbreak.m17198class(iArr));
        }

        /* renamed from: if, reason: not valid java name */
        public Map<Integer, Double> m17227if(double... dArr) {
            return m17229try((double[]) dArr.clone());
        }

        /* renamed from: new, reason: not valid java name */
        public Map<Integer, Double> m17228new(long... jArr) {
            return m17229try(Cbreak.m17199const(jArr));
        }

        /* renamed from: try, reason: not valid java name */
        public Map<Integer, Double> m17229try(double... dArr) {
            int i = 0;
            int i2 = 1;
            af1.m235try(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (Cbreak.m17195break(dArr)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int[] iArr = this.f15372if;
                int length = iArr.length;
                while (i < length) {
                    linkedHashMap.put(Integer.valueOf(iArr[i]), Double.valueOf(Double.NaN));
                    i++;
                }
                return Collections.unmodifiableMap(linkedHashMap);
            }
            int[] iArr2 = this.f15372if;
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 >= this.f15372if.length) {
                    break;
                }
                long length2 = r5[i3] * (dArr.length - i2);
                int iM17237else = (int) Ccase.m17237else(length2, this.f15371do, RoundingMode.DOWN);
                int i5 = i3;
                int i6 = (int) (length2 - (iM17237else * this.f15371do));
                iArr3[i5] = iM17237else;
                iArr4[i5] = i6;
                iArr5[i4] = iM17237else;
                i4++;
                if (i6 != 0) {
                    iArr5[i4] = iM17237else + 1;
                    i4++;
                }
                i3 = i5 + 1;
                i2 = 1;
            }
            Arrays.sort(iArr5, 0, i4);
            Cbreak.m17209public(iArr5, 0, i4 - 1, dArr, 0, dArr.length - 1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            while (true) {
                int[] iArr6 = this.f15372if;
                if (i >= iArr6.length) {
                    return Collections.unmodifiableMap(linkedHashMap2);
                }
                int i7 = iArr3[i];
                int i8 = iArr4[i];
                if (i8 == 0) {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(dArr[i7]));
                } else {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(Cbreak.m17197catch(dArr[i7], dArr[i7 + 1], i8, this.f15371do)));
                }
                i++;
            }
        }

        private Cnew(int i, int[] iArr) {
            for (int i2 : iArr) {
                Cbreak.m17204goto(i2, i);
            }
            af1.m235try(iArr.length > 0, "Indexes must be a non empty array");
            this.f15371do = i;
            this.f15372if = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static boolean m17195break(double... dArr) {
        for (double d : dArr) {
            if (Double.isNaN(d)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static double m17197catch(double d, double d2, double d3, double d4) {
        if (d == Double.NEGATIVE_INFINITY) {
            return d2 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        return d + (((d2 - d) * d3) / d4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static double[] m17198class(int[] iArr) {
        int length = iArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = iArr[i];
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static double[] m17199const(long[] jArr) {
        int length = jArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = jArr[i];
        }
        return dArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static Cfor m17202final() {
        return m17207native(2).m17222do(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static void m17204goto(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IllegalArgumentException("Quantile indexes must be between 0 and the scale, which is " + i2);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static Cif m17206import() {
        return m17207native(4);
    }

    /* renamed from: native, reason: not valid java name */
    public static Cif m17207native(int i) {
        return new Cif(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public static void m17209public(int[] iArr, int i, int i2, double[] dArr, int i3, int i4) {
        int iM17213this = m17213this(iArr, i, i2, i3, i4);
        int i5 = iArr[iM17213this];
        m17210return(i5, dArr, i3, i4);
        int i6 = iM17213this - 1;
        while (i6 >= i && iArr[i6] == i5) {
            i6--;
        }
        if (i6 >= i) {
            m17209public(iArr, i, i6, dArr, i3, i5 - 1);
        }
        int i7 = iM17213this + 1;
        while (i7 <= i2 && iArr[i7] == i5) {
            i7++;
        }
        if (i7 <= i2) {
            m17209public(iArr, i7, i2, dArr, i5 + 1, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public static void m17210return(int i, double[] dArr, int i2, int i3) {
        if (i != i2) {
            while (i3 > i2) {
                int iM17214throw = m17214throw(dArr, i2, i3);
                if (iM17214throw >= i) {
                    i3 = iM17214throw - 1;
                }
                if (iM17214throw <= i) {
                    i2 = iM17214throw + 1;
                }
            }
            return;
        }
        int i4 = i2;
        for (int i5 = i2 + 1; i5 <= i3; i5++) {
            if (dArr[i4] > dArr[i5]) {
                i4 = i5;
            }
        }
        if (i4 != i2) {
            m17211static(dArr, i4, i2);
        }
    }

    /* renamed from: static, reason: not valid java name */
    private static void m17211static(double[] dArr, int i, int i2) {
        double d = dArr[i];
        dArr[i] = dArr[i2];
        dArr[i2] = d;
    }

    /* renamed from: super, reason: not valid java name */
    private static void m17212super(double[] dArr, int i, int i2) {
        int i3 = (i + i2) >>> 1;
        boolean z = dArr[i2] < dArr[i3];
        boolean z2 = dArr[i3] < dArr[i];
        boolean z3 = dArr[i2] < dArr[i];
        if (z == z2) {
            m17211static(dArr, i3, i);
        } else if (z != z3) {
            m17211static(dArr, i, i2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static int m17213this(int[] iArr, int i, int i2, int i3, int i4) {
        if (i == i2) {
            return i;
        }
        int i5 = i3 + i4;
        int i6 = i5 >>> 1;
        while (i2 > i + 1) {
            int i7 = (i + i2) >>> 1;
            if (iArr[i7] > i6) {
                i2 = i7;
            } else {
                if (iArr[i7] >= i6) {
                    return i7;
                }
                i = i7;
            }
        }
        return (i5 - iArr[i]) - iArr[i2] > 0 ? i2 : i;
    }

    /* renamed from: throw, reason: not valid java name */
    private static int m17214throw(double[] dArr, int i, int i2) {
        m17212super(dArr, i, i2);
        double d = dArr[i];
        int i3 = i2;
        while (i2 > i) {
            if (dArr[i2] > d) {
                m17211static(dArr, i3, i2);
                i3--;
            }
            i2--;
        }
        m17211static(dArr, i, i3);
        return i3;
    }

    /* renamed from: while, reason: not valid java name */
    public static Cif m17216while() {
        return m17207native(100);
    }
}

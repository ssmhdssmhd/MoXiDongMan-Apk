package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.primitives.Cthis;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

@ki0
/* loaded from: classes2.dex */
public abstract class f<C extends Comparable> {
    public final boolean supportsFastOffset;

    /* renamed from: com.google.common.collect.f$for, reason: invalid class name */
    public static final class Cfor extends f<Integer> implements Serializable {

        /* renamed from: do, reason: not valid java name */
        private static final Cfor f14250do = new Cfor();
        private static final long serialVersionUID = 0;

        public Cfor() {
            super(true);
        }

        private Object readResolve() {
            return f14250do;
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }

        @Override // com.google.common.collect.f
        public long distance(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.f
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.f
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.f
        public Integer next(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        @Override // com.google.common.collect.f
        public Integer offset(Integer num, long j) {
            Cdefault.m15741for(j, "distance");
            return Integer.valueOf(Cthis.m17694new(num.longValue() + j));
        }

        @Override // com.google.common.collect.f
        public Integer previous(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }
    }

    /* renamed from: com.google.common.collect.f$if, reason: invalid class name */
    public static final class Cif extends f<BigInteger> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: do, reason: not valid java name */
        private static final Cif f14251do = new Cif();

        /* renamed from: if, reason: not valid java name */
        private static final BigInteger f14253if = BigInteger.valueOf(Long.MIN_VALUE);

        /* renamed from: for, reason: not valid java name */
        private static final BigInteger f14252for = BigInteger.valueOf(Long.MAX_VALUE);

        public Cif() {
            super(true);
        }

        private Object readResolve() {
            return f14251do;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }

        @Override // com.google.common.collect.f
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(f14253if).min(f14252for).longValue();
        }

        @Override // com.google.common.collect.f
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override // com.google.common.collect.f
        public BigInteger offset(BigInteger bigInteger, long j) {
            Cdefault.m15741for(j, "distance");
            return bigInteger.add(BigInteger.valueOf(j));
        }

        @Override // com.google.common.collect.f
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }
    }

    /* renamed from: com.google.common.collect.f$new, reason: invalid class name */
    public static final class Cnew extends f<Long> implements Serializable {

        /* renamed from: do, reason: not valid java name */
        private static final Cnew f14254do = new Cnew();
        private static final long serialVersionUID = 0;

        public Cnew() {
            super(true);
        }

        private Object readResolve() {
            return f14254do;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }

        @Override // com.google.common.collect.f
        public long distance(Long l, Long l2) {
            long jLongValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || jLongValue <= 0) {
                return jLongValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.f
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.f
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.f
        public Long next(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        @Override // com.google.common.collect.f
        public Long offset(Long l, long j) {
            Cdefault.m15741for(j, "distance");
            long jLongValue = l.longValue() + j;
            if (jLongValue < 0) {
                af1.m235try(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override // com.google.common.collect.f
        public Long previous(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }
    }

    public static f<BigInteger> bigIntegers() {
        return Cif.f14251do;
    }

    public static f<Integer> integers() {
        return Cfor.f14250do;
    }

    public static f<Long> longs() {
        return Cnew.f14254do;
    }

    public abstract long distance(C c, C c2);

    @lf
    public C maxValue() {
        throw new NoSuchElementException();
    }

    @lf
    public C minValue() {
        throw new NoSuchElementException();
    }

    public abstract C next(C c);

    public C offset(C c, long j) {
        Cdefault.m15741for(j, "distance");
        for (long j2 = 0; j2 < j; j2++) {
            c = (C) next(c);
        }
        return c;
    }

    public abstract C previous(C c);

    public f() {
        this(false);
    }

    private f(boolean z) {
        this.supportsFastOffset = z;
    }
}

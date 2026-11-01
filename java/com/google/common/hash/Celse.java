package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.hash.BloomFilter;
import com.google.common.math.Ccase;
import com.google.common.primitives.Cbreak;
import com.google.common.primitives.Cthis;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.google.common.hash.else, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Celse implements BloomFilter.Strategy {
    public static final Celse MURMUR128_MITZ_32;
    public static final Celse MURMUR128_MITZ_64;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Celse[] f15163do;

    /* renamed from: com.google.common.hash.else$do, reason: invalid class name */
    public enum Cdo extends Celse {
        public Cdo(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, Cfor cfor) {
            long jM16938if = cfor.m16938if();
            long jAsLong = Cconst.m16921switch().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                if (!cfor.m16939new(i5 % jM16938if)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, Cfor cfor) {
            long jM16938if = cfor.m16938if();
            long jAsLong = Cconst.m16921switch().hashObject(t, funnel).asLong();
            int i2 = (int) jAsLong;
            int i3 = (int) (jAsLong >>> 32);
            boolean zM16935case = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 ^= -1;
                }
                zM16935case |= cfor.m16935case(i5 % jM16938if);
            }
            return zM16935case;
        }
    }

    static {
        Cdo cdo = new Cdo("MURMUR128_MITZ_32", 0);
        MURMUR128_MITZ_32 = cdo;
        Celse celse = new Celse("MURMUR128_MITZ_64", 1) { // from class: com.google.common.hash.else.if
            {
                Cdo cdo2 = null;
            }

            /* renamed from: do, reason: not valid java name */
            private long m16941do(byte[] bArr) {
                return Cbreak.m17466break(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
            }

            /* renamed from: if, reason: not valid java name */
            private long m16942if(byte[] bArr) {
                return Cbreak.m17466break(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
            }

            @Override // com.google.common.hash.BloomFilter.Strategy
            public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, Cfor cfor) {
                long jM16938if = cfor.m16938if();
                byte[] bytesInternal = Cconst.m16921switch().hashObject(t, funnel).getBytesInternal();
                long jM16941do = m16941do(bytesInternal);
                long jM16942if = m16942if(bytesInternal);
                for (int i2 = 0; i2 < i; i2++) {
                    if (!cfor.m16939new((Long.MAX_VALUE & jM16941do) % jM16938if)) {
                        return false;
                    }
                    jM16941do += jM16942if;
                }
                return true;
            }

            @Override // com.google.common.hash.BloomFilter.Strategy
            public <T> boolean put(T t, Funnel<? super T> funnel, int i, Cfor cfor) {
                long jM16938if = cfor.m16938if();
                byte[] bytesInternal = Cconst.m16921switch().hashObject(t, funnel).getBytesInternal();
                long jM16941do = m16941do(bytesInternal);
                long jM16942if = m16942if(bytesInternal);
                boolean zM16935case = false;
                for (int i2 = 0; i2 < i; i2++) {
                    zM16935case |= cfor.m16935case((Long.MAX_VALUE & jM16941do) % jM16938if);
                    jM16941do += jM16942if;
                }
                return zM16935case;
            }
        };
        MURMUR128_MITZ_64 = celse;
        f15163do = new Celse[]{cdo, celse};
    }

    private Celse(String str, int i) {
    }

    public static Celse valueOf(String str) {
        return (Celse) Enum.valueOf(Celse.class, str);
    }

    public static Celse[] values() {
        return (Celse[]) f15163do.clone();
    }

    public /* synthetic */ Celse(String str, int i, Cdo cdo) {
        this(str, i);
    }

    /* renamed from: com.google.common.hash.else$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: for, reason: not valid java name */
        private static final int f15164for = 6;

        /* renamed from: do, reason: not valid java name */
        public final AtomicLongArray f15165do;

        /* renamed from: if, reason: not valid java name */
        private final LongAddable f15166if;

        public Cfor(long j) {
            af1.m235try(j > 0, "data length is zero!");
            this.f15165do = new AtomicLongArray(Cthis.m17694new(Ccase.m17237else(j, 64L, RoundingMode.CEILING)));
            this.f15166if = Cthrow.m16969do();
        }

        /* renamed from: else, reason: not valid java name */
        public static long[] m16934else(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m16935case(long j) {
            long j2;
            long j3;
            if (m16939new(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            long j4 = 1 << ((int) j);
            do {
                j2 = this.f15165do.get(i);
                j3 = j2 | j4;
                if (j2 == j3) {
                    return false;
                }
            } while (!this.f15165do.compareAndSet(i, j2, j3));
            this.f15166if.increment();
            return true;
        }

        /* renamed from: do, reason: not valid java name */
        public long m16936do() {
            return this.f15166if.sum();
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cfor) {
                return Arrays.equals(m16934else(this.f15165do), m16934else(((Cfor) obj).f15165do));
            }
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor m16937for() {
            return new Cfor(m16934else(this.f15165do));
        }

        public int hashCode() {
            return Arrays.hashCode(m16934else(this.f15165do));
        }

        /* renamed from: if, reason: not valid java name */
        public long m16938if() {
            return this.f15165do.length() * 64;
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m16939new(long j) {
            return ((1 << ((int) j)) & this.f15165do.get((int) (j >>> 6))) != 0;
        }

        /* renamed from: try, reason: not valid java name */
        public void m16940try(Cfor cfor) {
            long j;
            long j2;
            boolean z;
            af1.m204const(this.f15165do.length() == cfor.f15165do.length(), "BitArrays must be of equal length (%s != %s)", this.f15165do.length(), cfor.f15165do.length());
            for (int i = 0; i < this.f15165do.length(); i++) {
                long j3 = cfor.f15165do.get(i);
                while (true) {
                    j = this.f15165do.get(i);
                    j2 = j | j3;
                    if (j != j2) {
                        if (this.f15165do.compareAndSet(i, j, j2)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    this.f15166if.add(Long.bitCount(j2) - Long.bitCount(j));
                }
            }
        }

        public Cfor(long[] jArr) {
            af1.m235try(jArr.length > 0, "data length is zero!");
            this.f15165do = new AtomicLongArray(jArr);
            this.f15166if = Cthrow.m16969do();
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += Long.bitCount(j);
            }
            this.f15166if.add(jBitCount);
        }
    }
}

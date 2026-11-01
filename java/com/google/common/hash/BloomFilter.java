package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.base.Predicate;
import com.google.common.hash.Celse;
import com.google.common.primitives.Cfinal;
import com.google.common.primitives.Csuper;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;

@o8
/* loaded from: classes2.dex */
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private final Celse.Cfor bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    public interface Strategy extends Serializable {
        <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, Celse.Cfor cfor);

        int ordinal();

        <T> boolean put(T t, Funnel<? super T> funnel, int i, Celse.Cfor cfor);
    }

    /* renamed from: com.google.common.hash.BloomFilter$if, reason: invalid class name */
    public static class Cif<T> implements Serializable {
        private static final long serialVersionUID = 1;
        public final long[] data;
        public final Funnel<? super T> funnel;
        public final int numHashFunctions;
        public final Strategy strategy;

        public Cif(BloomFilter<T> bloomFilter) {
            this.data = Celse.Cfor.m16934else(((BloomFilter) bloomFilter).bits.f15165do);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        public Object readResolve() {
            return new BloomFilter(new Celse.Cfor(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    @af2
    public static long optimalNumOfBits(long j, double d) {
        if (d == 0.0d) {
            d = Double.MIN_VALUE;
        }
        double d2 = -j;
        double dLog = Math.log(d);
        Double.isNaN(d2);
        return (long) ((d2 * dLog) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    @af2
    public static int optimalNumOfHashFunctions(long j, long j2) {
        double d = j2;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return Math.max(1, (int) Math.round((d / d2) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i;
        int iM17670throw;
        int i2;
        af1.m227strictfp(inputStream, "InputStream");
        af1.m227strictfp(funnel, "Funnel");
        byte b = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte b2 = dataInputStream.readByte();
            try {
                iM17670throw = Csuper.m17670throw(dataInputStream.readByte());
            } catch (RuntimeException e) {
                e = e;
                iM17670throw = -1;
            }
            try {
                i2 = dataInputStream.readInt();
            } catch (RuntimeException e2) {
                e = e2;
                b = b2;
                i = -1;
                throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b) + " numHashFunctions: " + iM17670throw + " dataLength: " + i, e);
            }
            try {
                Celse celse = Celse.values()[b2];
                long[] jArr = new long[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    jArr[i3] = dataInputStream.readLong();
                }
                return new BloomFilter<>(new Celse.Cfor(jArr), iM17670throw, funnel, celse);
            } catch (RuntimeException e3) {
                e = e3;
                b = b2;
                i = i2;
                throw new IOException("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: " + ((int) b) + " numHashFunctions: " + iM17670throw + " dataLength: " + i, e);
            }
        } catch (RuntimeException e4) {
            e = e4;
            i = -1;
            iM17670throw = -1;
        }
    }

    private Object writeReplace() {
        return new Cif(this);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(T t) {
        return mightContain(t);
    }

    public long approximateElementCount() {
        long jM16938if = this.bits.m16938if();
        double dM16936do = this.bits.m16936do();
        double d = jM16938if;
        Double.isNaN(dM16936do);
        Double.isNaN(d);
        double d2 = -Math.log1p(-(dM16936do / d));
        Double.isNaN(d);
        double d3 = d2 * d;
        double d4 = this.numHashFunctions;
        Double.isNaN(d4);
        return com.google.common.math.Cif.m17332while(d3 / d4, RoundingMode.HALF_UP);
    }

    @af2
    public long bitSize() {
        return this.bits.m16938if();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.m16937for(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
    }

    public double expectedFpp() {
        double dM16936do = this.bits.m16936do();
        double dBitSize = bitSize();
        Double.isNaN(dM16936do);
        Double.isNaN(dBitSize);
        return Math.pow(dM16936do / dBitSize, this.numHashFunctions);
    }

    public int hashCode() {
        return Cthrow.m15206if(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        af1.m205continue(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    @lf
    public boolean put(T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        af1.m205continue(bloomFilter);
        af1.m235try(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i = this.numHashFunctions;
        int i2 = bloomFilter.numHashFunctions;
        af1.m204const(i == i2, "BloomFilters must have the same number of hash functions (%s != %s)", i, i2);
        af1.m219native(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        af1.m206default(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        af1.m206default(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.m16940try(bloomFilter.bits);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(Cfinal.m17568do(this.strategy.ordinal()));
        dataOutputStream.writeByte(Csuper.m17660do(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.f15165do.length());
        for (int i = 0; i < this.bits.f15165do.length(); i++) {
            dataOutputStream.writeLong(this.bits.f15165do.get(i));
        }
    }

    private BloomFilter(Celse.Cfor cfor, int i, Funnel<? super T> funnel, Strategy strategy) {
        af1.m202catch(i > 0, "numHashFunctions (%s) must be > 0", i);
        af1.m202catch(i <= 255, "numHashFunctions (%s) must be <= 255", i);
        this.bits = (Celse.Cfor) af1.m205continue(cfor);
        this.numHashFunctions = i;
        this.funnel = (Funnel) af1.m205continue(funnel);
        this.strategy = (Strategy) af1.m205continue(strategy);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return create(funnel, j, d, Celse.MURMUR128_MITZ_64);
    }

    @af2
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d, Strategy strategy) {
        af1.m205continue(funnel);
        af1.m232throw(j >= 0, "Expected insertions (%s) must be >= 0", j);
        af1.m225return(d > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        af1.m225return(d < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        af1.m205continue(strategy);
        if (j == 0) {
            j = 1;
        }
        long jOptimalNumOfBits = optimalNumOfBits(j, d);
        try {
            return new BloomFilter<>(new Celse.Cfor(jOptimalNumOfBits), optimalNumOfHashFunctions(j, jOptimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jOptimalNumOfBits + " bits", e);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }
}

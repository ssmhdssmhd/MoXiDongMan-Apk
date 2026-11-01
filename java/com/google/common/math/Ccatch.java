package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.primitives.Cnew;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

@li0
@o8
/* renamed from: com.google.common.math.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccatch implements Serializable {
    public static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    public Ccatch(long j, double d, double d2, double d3, double d4) {
        this.count = j;
        this.mean = d;
        this.sumOfSquaresOfDeltas = d2;
        this.min = d3;
        this.max = d4;
    }

    public static Ccatch fromByteArray(byte[] bArr) {
        af1.m205continue(bArr);
        af1.m204const(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static Ccatch of(Iterable<? extends Number> iterable) {
        Cclass cclass = new Cclass();
        cclass.m17275new(iterable);
        return cclass.m17274native();
    }

    public static Ccatch readFrom(ByteBuffer byteBuffer) {
        af1.m205continue(byteBuffer);
        af1.m204const(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Ccatch(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public long count() {
        return this.count;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == null || Ccatch.class != obj.getClass()) {
            return false;
        }
        Ccatch ccatch = (Ccatch) obj;
        return this.count == ccatch.count && Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(ccatch.mean) && Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(ccatch.sumOfSquaresOfDeltas) && Double.doubleToLongBits(this.min) == Double.doubleToLongBits(ccatch.min) && Double.doubleToLongBits(this.max) == Double.doubleToLongBits(ccatch.max);
    }

    public int hashCode() {
        return Cthrow.m15206if(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        af1.t(this.count != 0);
        return this.max;
    }

    public double mean() {
        af1.t(this.count != 0);
        return this.mean;
    }

    public double min() {
        af1.t(this.count != 0);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        af1.t(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        double dM17311if = Cfor.m17311if(this.sumOfSquaresOfDeltas);
        double dCount = count();
        Double.isNaN(dCount);
        return dM17311if / dCount;
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        af1.t(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        double dM17311if = Cfor.m17311if(this.sumOfSquaresOfDeltas);
        double d = this.count - 1;
        Double.isNaN(d);
        return dM17311if / d;
    }

    public double sum() {
        double d = this.mean;
        double d2 = this.count;
        Double.isNaN(d2);
        return d * d2;
    }

    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(byteBufferOrder);
        return byteBufferOrder.array();
    }

    public String toString() {
        return count() > 0 ? Csuper.m15184for(this).m15203try("count", this.count).m15198if("mean", this.mean).m15198if("populationStandardDeviation", populationStandardDeviation()).m15198if("min", this.min).m15198if("max", this.max).toString() : Csuper.m15184for(this).m15203try("count", this.count).toString();
    }

    public void writeTo(ByteBuffer byteBuffer) {
        af1.m205continue(byteBuffer);
        af1.m204const(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static double meanOf(Iterator<? extends Number> it) {
        af1.m220new(it.hasNext());
        double dDoubleValue = it.next().doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double dDoubleValue2 = it.next().doubleValue();
            j++;
            if (Cnew.m17637final(dDoubleValue2) && Cnew.m17637final(dDoubleValue)) {
                double d = j;
                Double.isNaN(d);
                dDoubleValue += (dDoubleValue2 - dDoubleValue) / d;
            } else {
                dDoubleValue = Cclass.m17262this(dDoubleValue, dDoubleValue2);
            }
        }
        return dDoubleValue;
    }

    public static Ccatch of(Iterator<? extends Number> it) {
        Cclass cclass = new Cclass();
        cclass.m17280try(it);
        return cclass.m17274native();
    }

    public static Ccatch of(double... dArr) {
        Cclass cclass = new Cclass();
        cclass.m17264case(dArr);
        return cclass.m17274native();
    }

    public static double meanOf(double... dArr) {
        af1.m220new(dArr.length > 0);
        double dM17262this = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d = dArr[i];
            if (Cnew.m17637final(d) && Cnew.m17637final(dM17262this)) {
                double d2 = i + 1;
                Double.isNaN(d2);
                dM17262this += (d - dM17262this) / d2;
            } else {
                dM17262this = Cclass.m17262this(dM17262this, d);
            }
        }
        return dM17262this;
    }

    public static Ccatch of(int... iArr) {
        Cclass cclass = new Cclass();
        cclass.m17268else(iArr);
        return cclass.m17274native();
    }

    public static Ccatch of(long... jArr) {
        Cclass cclass = new Cclass();
        cclass.m17271goto(jArr);
        return cclass.m17274native();
    }

    public static double meanOf(int... iArr) {
        af1.m220new(iArr.length > 0);
        double dM17262this = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d = iArr[i];
            if (Cnew.m17637final(d) && Cnew.m17637final(dM17262this)) {
                Double.isNaN(d);
                double d2 = i + 1;
                Double.isNaN(d2);
                dM17262this += (d - dM17262this) / d2;
            } else {
                dM17262this = Cclass.m17262this(dM17262this, d);
            }
        }
        return dM17262this;
    }

    public static double meanOf(long... jArr) {
        af1.m220new(jArr.length > 0);
        double dM17262this = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d = jArr[i];
            if (Cnew.m17637final(d) && Cnew.m17637final(dM17262this)) {
                Double.isNaN(d);
                double d2 = i + 1;
                Double.isNaN(d2);
                dM17262this += (d - dM17262this) / d2;
            } else {
                dM17262this = Cclass.m17262this(dM17262this, d);
            }
        }
        return dM17262this;
    }
}

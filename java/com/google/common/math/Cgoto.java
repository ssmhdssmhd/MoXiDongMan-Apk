package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@li0
@o8
/* renamed from: com.google.common.math.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cgoto implements Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final int f15403do = 88;
    private static final long serialVersionUID = 0;
    private final double sumOfProductsOfDeltas;
    private final Ccatch xStats;
    private final Ccatch yStats;

    public Cgoto(Ccatch ccatch, Ccatch ccatch2, double d) {
        this.xStats = ccatch;
        this.yStats = ccatch2;
        this.sumOfProductsOfDeltas = d;
    }

    /* renamed from: do, reason: not valid java name */
    private static double m17314do(double d) {
        if (d >= 1.0d) {
            return 1.0d;
        }
        if (d <= -1.0d) {
            return -1.0d;
        }
        return d;
    }

    public static Cgoto fromByteArray(byte[] bArr) {
        af1.m205continue(bArr);
        af1.m204const(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new Cgoto(Ccatch.readFrom(byteBufferOrder), Ccatch.readFrom(byteBufferOrder), byteBufferOrder.getDouble());
    }

    /* renamed from: if, reason: not valid java name */
    private static double m17315if(double d) {
        if (d > 0.0d) {
            return d;
        }
        return Double.MIN_VALUE;
    }

    public long count() {
        return this.xStats.count();
    }

    public boolean equals(@b51 Object obj) {
        if (obj == null || Cgoto.class != obj.getClass()) {
            return false;
        }
        Cgoto cgoto = (Cgoto) obj;
        return this.xStats.equals(cgoto.xStats) && this.yStats.equals(cgoto.yStats) && Double.doubleToLongBits(this.sumOfProductsOfDeltas) == Double.doubleToLongBits(cgoto.sumOfProductsOfDeltas);
    }

    public int hashCode() {
        return Cthrow.m15206if(this.xStats, this.yStats, Double.valueOf(this.sumOfProductsOfDeltas));
    }

    public Ctry leastSquaresFit() {
        af1.t(count() > 1);
        if (Double.isNaN(this.sumOfProductsOfDeltas)) {
            return Ctry.m17371do();
        }
        double dSumOfSquaresOfDeltas = this.xStats.sumOfSquaresOfDeltas();
        if (dSumOfSquaresOfDeltas > 0.0d) {
            return this.yStats.sumOfSquaresOfDeltas() > 0.0d ? Ctry.m17370case(this.xStats.mean(), this.yStats.mean()).m17380if(this.sumOfProductsOfDeltas / dSumOfSquaresOfDeltas) : Ctry.m17372if(this.yStats.mean());
        }
        af1.t(this.yStats.sumOfSquaresOfDeltas() > 0.0d);
        return Ctry.m17373this(this.xStats.mean());
    }

    public double pearsonsCorrelationCoefficient() {
        af1.t(count() > 1);
        if (Double.isNaN(this.sumOfProductsOfDeltas)) {
            return Double.NaN;
        }
        double dSumOfSquaresOfDeltas = xStats().sumOfSquaresOfDeltas();
        double dSumOfSquaresOfDeltas2 = yStats().sumOfSquaresOfDeltas();
        af1.t(dSumOfSquaresOfDeltas > 0.0d);
        af1.t(dSumOfSquaresOfDeltas2 > 0.0d);
        return m17314do(this.sumOfProductsOfDeltas / Math.sqrt(m17315if(dSumOfSquaresOfDeltas * dSumOfSquaresOfDeltas2)));
    }

    public double populationCovariance() {
        af1.t(count() != 0);
        double d = this.sumOfProductsOfDeltas;
        double dCount = count();
        Double.isNaN(dCount);
        return d / dCount;
    }

    public double sampleCovariance() {
        af1.t(count() > 1);
        double d = this.sumOfProductsOfDeltas;
        double dCount = count() - 1;
        Double.isNaN(dCount);
        return d / dCount;
    }

    public double sumOfProductsOfDeltas() {
        return this.sumOfProductsOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(88).order(ByteOrder.LITTLE_ENDIAN);
        this.xStats.writeTo(byteBufferOrder);
        this.yStats.writeTo(byteBufferOrder);
        byteBufferOrder.putDouble(this.sumOfProductsOfDeltas);
        return byteBufferOrder.array();
    }

    public String toString() {
        return count() > 0 ? Csuper.m15184for(this).m15190case("xStats", this.xStats).m15190case("yStats", this.yStats).m15198if("populationCovariance", populationCovariance()).toString() : Csuper.m15184for(this).m15190case("xStats", this.xStats).m15190case("yStats", this.yStats).toString();
    }

    public Ccatch xStats() {
        return this.xStats;
    }

    public Ccatch yStats() {
        return this.yStats;
    }
}

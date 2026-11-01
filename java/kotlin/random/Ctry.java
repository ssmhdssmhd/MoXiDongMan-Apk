package kotlin.random;

import android.support.v4.ae1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rx;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0002\b\n\b'\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J$\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0002H\u0016¨\u0006\u001a"}, d2 = {"Lkotlin/random/try;", "", "", "bitCount", "nextBits", "nextInt", "until", TypedValues.Transition.S_FROM, "", "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "array", "fromIndex", "toIndex", "nextBytes", "size", "<init>", "()V", "Default", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.random.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry {

    @m41
    public static final Cdo Default = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private static final Ctry f27925do = ae1.f113do.mo3524if();

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u001eB\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0006H\u0016J \u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0016R\u0016\u0010\u001a\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"kotlin/random/try$do", "Lkotlin/random/try;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "bitCount", "nextBits", "nextInt", "until", TypedValues.Transition.S_FROM, "", "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "array", "nextBytes", "size", "fromIndex", "toIndex", "defaultRandom", "Lkotlin/random/try;", "<init>", "()V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.random.try$do, reason: invalid class name */
    public static final class Cdo extends Ctry implements Serializable {

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0004\u001a\u00020\u0003H\u0002R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"kotlin/random/try$do$do", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.random.try$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0370do implements Serializable {

            @m41
            public static final C0370do INSTANCE = new C0370do();
            private static final long serialVersionUID = 0;

            private C0370do() {
            }

            private final Object readResolve() {
                return Ctry.Default;
            }
        }

        private Cdo() {
        }

        private final Object writeReplace() {
            return C0370do.INSTANCE;
        }

        @Override // kotlin.random.Ctry
        public int nextBits(int i) {
            return Ctry.f27925do.nextBits(i);
        }

        @Override // kotlin.random.Ctry
        public boolean nextBoolean() {
            return Ctry.f27925do.nextBoolean();
        }

        @Override // kotlin.random.Ctry
        @m41
        public byte[] nextBytes(@m41 byte[] array) {
            Csuper.m30700throw(array, "array");
            return Ctry.f27925do.nextBytes(array);
        }

        @Override // kotlin.random.Ctry
        public double nextDouble() {
            return Ctry.f27925do.nextDouble();
        }

        @Override // kotlin.random.Ctry
        public float nextFloat() {
            return Ctry.f27925do.nextFloat();
        }

        @Override // kotlin.random.Ctry
        public int nextInt() {
            return Ctry.f27925do.nextInt();
        }

        @Override // kotlin.random.Ctry
        public long nextLong() {
            return Ctry.f27925do.nextLong();
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }

        @Override // kotlin.random.Ctry
        @m41
        public byte[] nextBytes(int i) {
            return Ctry.f27925do.nextBytes(i);
        }

        @Override // kotlin.random.Ctry
        public double nextDouble(double d) {
            return Ctry.f27925do.nextDouble(d);
        }

        @Override // kotlin.random.Ctry
        public int nextInt(int i) {
            return Ctry.f27925do.nextInt(i);
        }

        @Override // kotlin.random.Ctry
        public long nextLong(long j) {
            return Ctry.f27925do.nextLong(j);
        }

        @Override // kotlin.random.Ctry
        @m41
        public byte[] nextBytes(@m41 byte[] array, int i, int i2) {
            Csuper.m30700throw(array, "array");
            return Ctry.f27925do.nextBytes(array, i, i2);
        }

        @Override // kotlin.random.Ctry
        public double nextDouble(double d, double d2) {
            return Ctry.f27925do.nextDouble(d, d2);
        }

        @Override // kotlin.random.Ctry
        public int nextInt(int i, int i2) {
            return Ctry.f27925do.nextInt(i, i2);
        }

        @Override // kotlin.random.Ctry
        public long nextLong(long j, long j2) {
            return Ctry.f27925do.nextLong(j, j2);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(Ctry ctry, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return ctry.nextBytes(bArr, i, i2);
    }

    public abstract int nextBits(int i);

    public boolean nextBoolean() {
        return nextBits(1) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    @m41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] nextBytes(@m41 byte[] array, int i, int i2) {
        boolean z;
        Csuper.m30700throw(array, "array");
        int length = array.length;
        if (i >= 0 && length >= i) {
            z = i2 >= 0 && array.length >= i2;
        }
        if (!z) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") or toIndex (" + i2 + ") are out of range: 0.." + array.length + org.apache.commons.lang3.Ctry.f28883do).toString());
        }
        if (!(i <= i2)) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") must be not greater than toIndex (" + i2 + ").").toString());
        }
        int i3 = (i2 - i) / 4;
        for (int i4 = 0; i4 < i3; i4++) {
            int iNextInt = nextInt();
            array[i] = (byte) iNextInt;
            array[i + 1] = (byte) (iNextInt >>> 8);
            array[i + 2] = (byte) (iNextInt >>> 16);
            array[i + 3] = (byte) (iNextInt >>> 24);
            i += 4;
        }
        int i5 = i2 - i;
        int iNextBits = nextBits(i5 * 8);
        for (int i6 = 0; i6 < i5; i6++) {
            array[i + i6] = (byte) (iNextBits >>> (i6 * 8));
        }
        return array;
    }

    public double nextDouble() {
        return Cnew.m30858new(nextBits(26), nextBits(27));
    }

    public float nextFloat() {
        return nextBits(24) / 16777216;
    }

    public int nextInt() {
        return nextBits(32);
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public double nextDouble(double d) {
        return nextDouble(0.0d, d);
    }

    public int nextInt(int i) {
        return nextInt(0, i);
    }

    public long nextLong(long j) {
        return nextLong(0L, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double nextDouble(double d, double d2) {
        double dNextDouble;
        Ccase.m30838new(d, d2);
        double d3 = d2 - d;
        if (Double.isInfinite(d3)) {
            if ((Double.isInfinite(d) || Double.isNaN(d)) ? false : true) {
                if ((Double.isInfinite(d2) || Double.isNaN(d2)) ? false : true) {
                    double dNextDouble2 = nextDouble();
                    double d4 = 2;
                    Double.isNaN(d4);
                    Double.isNaN(d4);
                    double d5 = dNextDouble2 * ((d2 / d4) - (d / d4));
                    dNextDouble = d + d5 + d5;
                }
            } else {
                dNextDouble = d + (nextDouble() * d3);
            }
        }
        return dNextDouble >= d2 ? Math.nextAfter(d2, Double.NEGATIVE_INFINITY) : dNextDouble;
    }

    public int nextInt(int i, int i2) {
        int iNextInt;
        int i3;
        int iNextBits;
        Ccase.m30840try(i, i2);
        int i4 = i2 - i;
        if (i4 > 0 || i4 == Integer.MIN_VALUE) {
            if (((-i4) & i4) == i4) {
                iNextBits = nextBits(Ccase.m30834else(i4));
            } else {
                do {
                    iNextInt = nextInt() >>> 1;
                    i3 = iNextInt % i4;
                } while ((iNextInt - i3) + (i4 - 1) < 0);
                iNextBits = i3;
            }
            return i + iNextBits;
        }
        while (true) {
            int iNextInt2 = nextInt();
            if (i <= iNextInt2 && i2 > iNextInt2) {
                return iNextInt2;
            }
        }
    }

    public long nextLong(long j, long j2) {
        long jNextLong;
        long j3;
        long jNextBits;
        int iNextInt;
        Ccase.m30832case(j, j2);
        long j4 = j2 - j;
        if (j4 > 0) {
            if (((-j4) & j4) == j4) {
                int i = (int) j4;
                int i2 = (int) (j4 >>> 32);
                if (i != 0) {
                    iNextInt = nextBits(Ccase.m30834else(i));
                } else if (i2 == 1) {
                    iNextInt = nextInt();
                } else {
                    jNextBits = (nextBits(Ccase.m30834else(i2)) << 32) + nextInt();
                }
                jNextBits = iNextInt & 4294967295L;
            } else {
                do {
                    jNextLong = nextLong() >>> 1;
                    j3 = jNextLong % j4;
                } while ((jNextLong - j3) + (j4 - 1) < 0);
                jNextBits = j3;
            }
            return j + jNextBits;
        }
        while (true) {
            long jNextLong2 = nextLong();
            if (j <= jNextLong2 && j2 > jNextLong2) {
                return jNextLong2;
            }
        }
    }

    @m41
    public byte[] nextBytes(@m41 byte[] array) {
        Csuper.m30700throw(array, "array");
        return nextBytes(array, 0, array.length);
    }

    @m41
    public byte[] nextBytes(int i) {
        return nextBytes(new byte[i]);
    }
}

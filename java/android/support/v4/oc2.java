package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cnew;

@wp0(name = "UnsignedKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0001\u001a\u0018\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0004H\u0001\u001a\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\"\u0010\t\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\b\u001a\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\"\u0010\r\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\f\u001a\u001a\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001a\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000H\u0001\u001a\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004H\u0001\u001a\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0000H\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"", "v1", "v2", "for", "", "else", "Landroid/support/v4/ja2;", "new", "(II)I", "try", "Landroid/support/v4/oa2;", "goto", "(JJ)J", "this", "", "v", "do", "(D)I", "if", "(D)J", "case", "break", "", "catch", "base", "class", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class oc2 {
    @wg1
    /* renamed from: break, reason: not valid java name */
    public static final double m5552break(long j) {
        double d = j >>> 11;
        double d2 = 2048;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = j & 2047;
        Double.isNaN(d3);
        return (d * d2) + d3;
    }

    @wg1
    /* renamed from: case, reason: not valid java name */
    public static final double m5553case(int i) {
        double d = Integer.MAX_VALUE & i;
        double d2 = (i >>> 31) << 30;
        double d3 = 2;
        Double.isNaN(d2);
        Double.isNaN(d3);
        Double.isNaN(d);
        return d + (d2 * d3);
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static final String m5554catch(long j) {
        return m5555class(j, 10);
    }

    @m41
    /* renamed from: class, reason: not valid java name */
    public static final String m5555class(long j, int i) {
        if (j >= 0) {
            String string = Long.toString(j, Cnew.m31199do(i));
            Csuper.m30696super(string, "java.lang.Long.toString(this, checkRadix(radix))");
            return string;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j3, Cnew.m31199do(i));
        Csuper.m30696super(string2, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(string2);
        String string3 = Long.toString(j4, Cnew.m31199do(i));
        Csuper.m30696super(string3, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(string3);
        return sb.toString();
    }

    @wg1
    /* renamed from: do, reason: not valid java name */
    public static final int m5556do(double d) {
        if (Double.isNaN(d) || d <= m5553case(0)) {
            return 0;
        }
        if (d >= m5553case(-1)) {
            return -1;
        }
        double d2 = Integer.MAX_VALUE;
        if (d <= d2) {
            return ja2.m3772goto((int) d);
        }
        Double.isNaN(d2);
        return ja2.m3772goto(ja2.m3772goto((int) (d - d2)) + ja2.m3772goto(Integer.MAX_VALUE));
    }

    @wg1
    /* renamed from: else, reason: not valid java name */
    public static final int m5557else(long j, long j2) {
        return ((j ^ Long.MIN_VALUE) > (j2 ^ Long.MIN_VALUE) ? 1 : ((j ^ Long.MIN_VALUE) == (j2 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    @wg1
    /* renamed from: for, reason: not valid java name */
    public static final int m5558for(int i, int i2) {
        return Csuper.m30692public(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    @wg1
    /* renamed from: goto, reason: not valid java name */
    public static final long m5559goto(long j, long j2) {
        if (j2 < 0) {
            return m5557else(j, j2) < 0 ? oa2.m5524goto(0L) : oa2.m5524goto(1L);
        }
        if (j >= 0) {
            return oa2.m5524goto(j / j2);
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return oa2.m5524goto(j3 + (m5557else(oa2.m5524goto(j - (j3 * j2)), oa2.m5524goto(j2)) < 0 ? 0 : 1));
    }

    @wg1
    /* renamed from: if, reason: not valid java name */
    public static final long m5560if(double d) {
        if (Double.isNaN(d) || d <= m5552break(0L)) {
            return 0L;
        }
        if (d >= m5552break(-1L)) {
            return -1L;
        }
        return d < ((double) Long.MAX_VALUE) ? oa2.m5524goto((long) d) : oa2.m5524goto(oa2.m5524goto((long) (d - 9.223372036854776E18d)) - Long.MIN_VALUE);
    }

    @wg1
    /* renamed from: new, reason: not valid java name */
    public static final int m5561new(int i, int i2) {
        return ja2.m3772goto((int) ((i & 4294967295L) / (i2 & 4294967295L)));
    }

    @wg1
    /* renamed from: this, reason: not valid java name */
    public static final long m5562this(long j, long j2) {
        if (j2 < 0) {
            return m5557else(j, j2) < 0 ? j : oa2.m5524goto(j - j2);
        }
        if (j >= 0) {
            return oa2.m5524goto(j % j2);
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (m5557else(oa2.m5524goto(j3), oa2.m5524goto(j2)) < 0) {
            j2 = 0;
        }
        return oa2.m5524goto(j3 - j2);
    }

    @wg1
    /* renamed from: try, reason: not valid java name */
    public static final int m5563try(int i, int i2) {
        return ja2.m3772goto((int) ((i & 4294967295L) % (i2 & 4294967295L)));
    }
}

package android.support.v4;

import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a*\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a*\u0010\r\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u0005\u001a*\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Landroid/support/v4/ja2;", com.umeng.analytics.pro.ak.av, "b", "c", "do", "(III)I", "Landroid/support/v4/oa2;", "if", "(JJJ)J", "start", "end", "", "step", "new", "", "for", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class wa2 {
    /* renamed from: do, reason: not valid java name */
    private static final int m9112do(int i, int i2, int i3) {
        int iM5563try = oc2.m5563try(i, i3);
        int iM5563try2 = oc2.m5563try(i2, i3);
        int iM5558for = oc2.m5558for(iM5563try, iM5563try2);
        int iM3772goto = ja2.m3772goto(iM5563try - iM5563try2);
        return iM5558for >= 0 ? iM3772goto : ja2.m3772goto(iM3772goto + i3);
    }

    @wg1
    @iz1(version = "1.3")
    /* renamed from: for, reason: not valid java name */
    public static final long m9113for(long j, long j2, long j3) {
        if (j3 > 0) {
            return oc2.m5557else(j, j2) >= 0 ? j2 : oa2.m5524goto(j2 - m9114if(j2, j, oa2.m5524goto(j3)));
        }
        if (j3 < 0) {
            return oc2.m5557else(j, j2) <= 0 ? j2 : oa2.m5524goto(j2 + m9114if(j, j2, oa2.m5524goto(-j3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    /* renamed from: if, reason: not valid java name */
    private static final long m9114if(long j, long j2, long j3) {
        long jM5562this = oc2.m5562this(j, j3);
        long jM5562this2 = oc2.m5562this(j2, j3);
        int iM5557else = oc2.m5557else(jM5562this, jM5562this2);
        long jM5524goto = oa2.m5524goto(jM5562this - jM5562this2);
        return iM5557else >= 0 ? jM5524goto : oa2.m5524goto(jM5524goto + j3);
    }

    @wg1
    @iz1(version = "1.3")
    /* renamed from: new, reason: not valid java name */
    public static final int m9115new(int i, int i2, int i3) {
        if (i3 > 0) {
            return oc2.m5558for(i, i2) >= 0 ? i2 : ja2.m3772goto(i2 - m9112do(i2, i, ja2.m3772goto(i3)));
        }
        if (i3 < 0) {
            return oc2.m5558for(i, i2) <= 0 ? i2 : ja2.m3772goto(i2 + m9112do(i, i2, ja2.m3772goto(-i3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}

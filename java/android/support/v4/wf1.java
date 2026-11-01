package android.support.v4;

import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\u001a\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0004H\u0002\u001a \u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0002\u001a \u0010\b\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a \u0010\f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0001\u001a \u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0001¨\u0006\u000e"}, d2 = {"", com.umeng.analytics.pro.ak.av, "b", "try", "", "case", "c", "do", "if", "start", "end", "step", "for", "new", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class wf1 {
    /* renamed from: case, reason: not valid java name */
    private static final long m9138case(long j, long j2) {
        long j3 = j % j2;
        return j3 >= 0 ? j3 : j3 + j2;
    }

    /* renamed from: do, reason: not valid java name */
    private static final int m9139do(int i, int i2, int i3) {
        return m9143try(m9143try(i, i3) - m9143try(i2, i3), i3);
    }

    @wg1
    /* renamed from: for, reason: not valid java name */
    public static final int m9140for(int i, int i2, int i3) {
        if (i3 > 0) {
            return i >= i2 ? i2 : i2 - m9139do(i2, i, i3);
        }
        if (i3 < 0) {
            return i <= i2 ? i2 : i2 + m9139do(i, i2, -i3);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    /* renamed from: if, reason: not valid java name */
    private static final long m9141if(long j, long j2, long j3) {
        return m9138case(m9138case(j, j3) - m9138case(j2, j3), j3);
    }

    @wg1
    /* renamed from: new, reason: not valid java name */
    public static final long m9142new(long j, long j2, long j3) {
        if (j3 > 0) {
            return j >= j2 ? j2 : j2 - m9141if(j2, j, j3);
        }
        if (j3 < 0) {
            return j <= j2 ? j2 : j2 + m9141if(j, j2, -j3);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    /* renamed from: try, reason: not valid java name */
    private static final int m9143try(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }
}

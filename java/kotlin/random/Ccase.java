package kotlin.random;

import android.support.v4.bw0;
import android.support.v4.dn0;
import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\b\u001a\u00020\u0000*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u0014\u0010\n\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0007\u001a\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0000\u001a\u0014\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\r\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0014H\u0000\u001a\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0000¨\u0006\u0019"}, d2 = {"", "seed", "Lkotlin/random/try;", "do", "", "if", "Landroid/support/v4/dn0;", "range", "goto", "Landroid/support/v4/bw0;", "this", ES6Iterator.VALUE_PROPERTY, "else", "bitCount", "break", TypedValues.Transition.S_FROM, "until", "Landroid/support/v4/ub2;", "try", "case", "", "new", "", "", "for", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.random.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase {
    /* renamed from: break, reason: not valid java name */
    public static final int m30831break(int i, int i2) {
        return (i >>> (32 - i2)) & ((-i2) >> 31);
    }

    /* renamed from: case, reason: not valid java name */
    public static final void m30832case(long j, long j2) {
        if (!(j2 > j)) {
            throw new IllegalArgumentException(m30835for(Long.valueOf(j), Long.valueOf(j2)).toString());
        }
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: do, reason: not valid java name */
    public static final Ctry m30833do(int i) {
        return new Cgoto(i, i >> 31);
    }

    /* renamed from: else, reason: not valid java name */
    public static final int m30834else(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static final String m30835for(@m41 Object from, @m41 Object until) {
        Csuper.m30700throw(from, "from");
        Csuper.m30700throw(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    @iz1(version = "1.3")
    /* renamed from: goto, reason: not valid java name */
    public static final int m30836goto(@m41 Ctry nextInt, @m41 dn0 range) {
        Csuper.m30700throw(nextInt, "$this$nextInt");
        Csuper.m30700throw(range, "range");
        if (!range.isEmpty()) {
            return range.m594if() < Integer.MAX_VALUE ? nextInt.nextInt(range.m592do(), range.m594if() + 1) : range.m592do() > Integer.MIN_VALUE ? nextInt.nextInt(range.m592do() - 1, range.m594if()) + 1 : nextInt.nextInt();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: if, reason: not valid java name */
    public static final Ctry m30837if(long j) {
        return new Cgoto((int) j, (int) (j >> 32));
    }

    /* renamed from: new, reason: not valid java name */
    public static final void m30838new(double d, double d2) {
        if (!(d2 > d)) {
            throw new IllegalArgumentException(m30835for(Double.valueOf(d), Double.valueOf(d2)).toString());
        }
    }

    @iz1(version = "1.3")
    /* renamed from: this, reason: not valid java name */
    public static final long m30839this(@m41 Ctry nextLong, @m41 bw0 range) {
        Csuper.m30700throw(nextLong, "$this$nextLong");
        Csuper.m30700throw(range, "range");
        if (!range.isEmpty()) {
            return range.m10304if() < Long.MAX_VALUE ? nextLong.nextLong(range.m10302do(), range.m10304if() + 1) : range.m10302do() > Long.MIN_VALUE ? nextLong.nextLong(range.m10302do() - 1, range.m10304if()) + 1 : nextLong.nextLong();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    /* renamed from: try, reason: not valid java name */
    public static final void m30840try(int i, int i2) {
        if (!(i2 > i)) {
            throw new IllegalArgumentException(m30835for(Integer.valueOf(i), Integer.valueOf(i2)).toString());
        }
    }
}

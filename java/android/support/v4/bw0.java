package android.support.v4;

import kotlin.Cwhile;
import kotlin.ranges.ClosedRange;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0016B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0011\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0017"}, d2 = {"Landroid/support/v4/bw0;", "Landroid/support/v4/zv0;", "Lkotlin/ranges/ClosedRange;", "", ES6Iterator.VALUE_PROPERTY, "", "case", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "goto", "()Ljava/lang/Long;", "start", "else", "endInclusive", "<init>", "(JJ)V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class bw0 extends zv0 implements ClosedRange<Long> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f547case = new Cdo(null);

    /* renamed from: try, reason: not valid java name */
    @m41
    private static final bw0 f548try = new bw0(1, 0);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"android/support/v4/bw0$do", "", "Landroid/support/v4/bw0;", "EMPTY", "Landroid/support/v4/bw0;", "do", "()Landroid/support/v4/bw0;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.bw0$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final bw0 m663do() {
            return bw0.f548try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public bw0(long j, long j2) {
        super(j, j2, 1L);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m660case(long j) {
        return m10302do() <= j && j <= m10304if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m660case(((Number) comparable).longValue());
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long getEndInclusive() {
        return Long.valueOf(m10304if());
    }

    @Override // android.support.v4.zv0
    public boolean equals(@z41 Object obj) {
        if (obj instanceof bw0) {
            if (!isEmpty() || !((bw0) obj).isEmpty()) {
                bw0 bw0Var = (bw0) obj;
                if (m10302do() != bw0Var.m10302do() || m10304if() != bw0Var.m10304if()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long getStart() {
        return Long.valueOf(m10302do());
    }

    @Override // android.support.v4.zv0
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((31 * (m10302do() ^ (m10302do() >>> 32))) + (m10304if() ^ (m10304if() >>> 32)));
    }

    @Override // android.support.v4.zv0, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return m10302do() > m10304if();
    }

    @Override // android.support.v4.zv0
    @m41
    public String toString() {
        return m10302do() + ".." + m10304if();
    }
}

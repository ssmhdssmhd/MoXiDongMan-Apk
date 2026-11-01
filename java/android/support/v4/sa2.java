package android.support.v4;

import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.ranges.ClosedRange;
import kotlin.ranges.Cthis;
import org.mozilla.javascript.ES6Iterator;

@gf2(markerClass = {Cbreak.class})
@iz1(version = "1.5")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u001a\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H\u0016J\u0013\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016R\u001c\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, d2 = {"Landroid/support/v4/sa2;", "Lkotlin/ranges/this;", "Lkotlin/ranges/ClosedRange;", "Landroid/support/v4/oa2;", ES6Iterator.VALUE_PROPERTY, "", "try", "(J)Z", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "else", "()J", "start", "case", "endInclusive", "<init>", "(JJLandroid/support/v4/rx;)V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class sa2 extends Cthis implements ClosedRange<oa2> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f6102case = new Cdo(null);

    /* renamed from: try, reason: not valid java name */
    @m41
    private static final sa2 f6103try = new sa2(-1, 0);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"android/support/v4/sa2$do", "", "Landroid/support/v4/sa2;", "EMPTY", "Landroid/support/v4/sa2;", "do", "()Landroid/support/v4/sa2;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.sa2$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final sa2 m7357do() {
            return sa2.f6103try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    private sa2(long j, long j2) {
        super(j, j2, 1L, null);
    }

    /* renamed from: case, reason: not valid java name */
    public long m7354case() {
        return m30956if();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m7356try(((oa2) comparable).t());
    }

    /* renamed from: else, reason: not valid java name */
    public long m7355else() {
        return m30954do();
    }

    @Override // kotlin.ranges.Cthis
    public boolean equals(@z41 Object obj) {
        if (obj instanceof sa2) {
            if (!isEmpty() || !((sa2) obj).isEmpty()) {
                sa2 sa2Var = (sa2) obj;
                if (m30954do() != sa2Var.m30954do() || m30956if() != sa2Var.m30956if()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ Comparable getEndInclusive() {
        return oa2.m5525if(m7354case());
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ Comparable getStart() {
        return oa2.m5525if(m7355else());
    }

    @Override // kotlin.ranges.Cthis
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return ((int) oa2.m5524goto(m30956if() ^ oa2.m5524goto(m30956if() >>> 32))) + (((int) oa2.m5524goto(m30954do() ^ oa2.m5524goto(m30954do() >>> 32))) * 31);
    }

    @Override // kotlin.ranges.Cthis, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return oc2.m5557else(m30954do(), m30956if()) > 0;
    }

    @Override // kotlin.ranges.Cthis
    @m41
    public String toString() {
        return oa2.o(m30954do()) + ".." + oa2.o(m30956if());
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m7356try(long j) {
        return oc2.m5557else(m30954do(), j) <= 0 && oc2.m5557else(j, m30956if()) <= 0;
    }

    public /* synthetic */ sa2(long j, long j2, rx rxVar) {
        this(j, j2);
    }
}

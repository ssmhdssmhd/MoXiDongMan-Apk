package android.support.v4;

import kotlin.Cwhile;
import kotlin.ranges.ClosedRange;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0016\u0010\u0010\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0016"}, d2 = {"Landroid/support/v4/dn0;", "Landroid/support/v4/bn0;", "Lkotlin/ranges/ClosedRange;", "", ES6Iterator.VALUE_PROPERTY, "", "case", "isEmpty", "", "other", "equals", "hashCode", "", "toString", "goto", "()Ljava/lang/Integer;", "start", "else", "endInclusive", "<init>", "(II)V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class dn0 extends bn0 implements ClosedRange<Integer> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f1085case = new Cdo(null);

    /* renamed from: try, reason: not valid java name */
    @m41
    private static final dn0 f1086try = new dn0(1, 0);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"android/support/v4/dn0$do", "", "Landroid/support/v4/dn0;", "EMPTY", "Landroid/support/v4/dn0;", "do", "()Landroid/support/v4/dn0;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.dn0$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final dn0 m1445do() {
            return dn0.f1086try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public dn0(int i, int i2) {
        super(i, i2, 1);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m1442case(int i) {
        return m592do() <= i && i <= m594if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m1442case(((Number) comparable).intValue());
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer getEndInclusive() {
        return Integer.valueOf(m594if());
    }

    @Override // android.support.v4.bn0
    public boolean equals(@z41 Object obj) {
        if (obj instanceof dn0) {
            if (!isEmpty() || !((dn0) obj).isEmpty()) {
                dn0 dn0Var = (dn0) obj;
                if (m592do() != dn0Var.m592do() || m594if() != dn0Var.m594if()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    @m41
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer getStart() {
        return Integer.valueOf(m592do());
    }

    @Override // android.support.v4.bn0
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (m592do() * 31) + m594if();
    }

    @Override // android.support.v4.bn0, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return m592do() > m594if();
    }

    @Override // android.support.v4.bn0
    @m41
    public String toString() {
        return m592do() + ".." + m594if();
    }
}

package android.support.v4;

import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.ranges.Celse;
import kotlin.ranges.ClosedRange;
import org.mozilla.javascript.ES6Iterator;

@gf2(markerClass = {Cbreak.class})
@iz1(version = "1.5")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u001a\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H\u0016J\u0013\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016R\u001c\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, d2 = {"Landroid/support/v4/na2;", "Lkotlin/ranges/else;", "Lkotlin/ranges/ClosedRange;", "Landroid/support/v4/ja2;", ES6Iterator.VALUE_PROPERTY, "", "try", "(I)Z", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "else", "()I", "start", "case", "endInclusive", "<init>", "(IILandroid/support/v4/rx;)V", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class na2 extends Celse implements ClosedRange<ja2> {

    /* renamed from: case, reason: not valid java name */
    @m41
    public static final Cdo f4159case = new Cdo(null);

    /* renamed from: try, reason: not valid java name */
    @m41
    private static final na2 f4160try = new na2(-1, 0);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"android/support/v4/na2$do", "", "Landroid/support/v4/na2;", "EMPTY", "Landroid/support/v4/na2;", "do", "()Landroid/support/v4/na2;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.na2$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final na2 m5147do() {
            return na2.f4160try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    private na2(int i, int i2) {
        super(i, i2, 1, null);
    }

    /* renamed from: case, reason: not valid java name */
    public int m5144case() {
        return m30942if();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return m5146try(((ja2) comparable).t());
    }

    /* renamed from: else, reason: not valid java name */
    public int m5145else() {
        return m30940do();
    }

    @Override // kotlin.ranges.Celse
    public boolean equals(@z41 Object obj) {
        if (obj instanceof na2) {
            if (!isEmpty() || !((na2) obj).isEmpty()) {
                na2 na2Var = (na2) obj;
                if (m30940do() != na2Var.m30940do() || m30942if() != na2Var.m30942if()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ Comparable getEndInclusive() {
        return ja2.m3773if(m5144case());
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ Comparable getStart() {
        return ja2.m3773if(m5145else());
    }

    @Override // kotlin.ranges.Celse
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (m30940do() * 31) + m30942if();
    }

    @Override // kotlin.ranges.Celse, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return oc2.m5558for(m30940do(), m30942if()) > 0;
    }

    @Override // kotlin.ranges.Celse
    @m41
    public String toString() {
        return ja2.o(m30940do()) + ".." + ja2.o(m30942if());
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m5146try(int i) {
        return oc2.m5558for(m30940do(), i) <= 0 && oc2.m5558for(i, m30942if()) <= 0;
    }

    public /* synthetic */ na2(int i, int i2, rx rxVar) {
        this(i, i2);
    }
}

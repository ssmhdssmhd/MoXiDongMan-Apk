package kotlin.ranges;

import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.oc2;
import android.support.v4.rx;
import android.support.v4.wa2;
import android.support.v4.z41;
import java.util.Iterator;
import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;

@gf2(markerClass = {Cbreak.class})
@iz1(version = "1.5")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\b\b\u0017\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB$\b\u0000\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0014ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0086\u0002ø\u0001\u0000J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001f\u0010\u0011\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010R\u001f\u0010\u0013\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0012\u0010\u0010R\u0019\u0010\u0016\u001a\u00020\u00148\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0015\u0010\u0010ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001c"}, d2 = {"Lkotlin/ranges/this;", "", "Landroid/support/v4/oa2;", "", "iterator", "", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "do", "J", "()J", "first", "if", "last", "", "for", "step", "start", "endInclusive", "<init>", "(JJJLandroid/support/v4/rx;)V", "new", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements Iterable<oa2>, KMappedMarker {

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f27944new = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private final long f27945do;

    /* renamed from: for, reason: not valid java name */
    private final long f27946for;

    /* renamed from: if, reason: not valid java name */
    private final long f27947if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"kotlin/ranges/this$do", "", "Landroid/support/v4/oa2;", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/this;", "do", "(JJJ)Lkotlin/ranges/this;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.ranges.this$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Cthis m30957do(long j, long j2, long j3) {
            return new Cthis(j, j2, j3, null);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public /* synthetic */ Cthis(long j, long j2, long j3, rx rxVar) {
        this(j, j2, j3);
    }

    /* renamed from: do, reason: not valid java name */
    public final long m30954do() {
        return this.f27945do;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Cthis) {
            if (!isEmpty() || !((Cthis) obj).isEmpty()) {
                Cthis cthis = (Cthis) obj;
                if (this.f27945do != cthis.f27945do || this.f27947if != cthis.f27947if || this.f27946for != cthis.f27946for) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final long m30955for() {
        return this.f27946for;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = this.f27945do;
        int iM5524goto = ((int) oa2.m5524goto(j ^ oa2.m5524goto(j >>> 32))) * 31;
        long j2 = this.f27947if;
        int iM5524goto2 = (iM5524goto + ((int) oa2.m5524goto(j2 ^ oa2.m5524goto(j2 >>> 32)))) * 31;
        long j3 = this.f27946for;
        return ((int) (j3 ^ (j3 >>> 32))) + iM5524goto2;
    }

    /* renamed from: if, reason: not valid java name */
    public final long m30956if() {
        return this.f27947if;
    }

    public boolean isEmpty() {
        long j = this.f27946for;
        int iM5557else = oc2.m5557else(this.f27945do, this.f27947if);
        if (j > 0) {
            if (iM5557else > 0) {
                return true;
            }
        } else if (iM5557else < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @m41
    public final Iterator<oa2> iterator() {
        return new Cbreak(this.f27945do, this.f27947if, this.f27946for, null);
    }

    @m41
    public String toString() {
        StringBuilder sb;
        long j;
        if (this.f27946for > 0) {
            sb = new StringBuilder();
            sb.append(oa2.o(this.f27945do));
            sb.append("..");
            sb.append(oa2.o(this.f27947if));
            sb.append(" step ");
            j = this.f27946for;
        } else {
            sb = new StringBuilder();
            sb.append(oa2.o(this.f27945do));
            sb.append(" downTo ");
            sb.append(oa2.o(this.f27947if));
            sb.append(" step ");
            j = -this.f27946for;
        }
        sb.append(j);
        return sb.toString();
    }

    private Cthis(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j3 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.f27945do = j;
        this.f27947if = wa2.m9113for(j, j2, j3);
        this.f27946for = j3;
    }
}

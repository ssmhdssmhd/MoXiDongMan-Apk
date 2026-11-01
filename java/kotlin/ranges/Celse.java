package kotlin.ranges;

import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.oc2;
import android.support.v4.rx;
import android.support.v4.wa2;
import android.support.v4.z41;
import java.util.Iterator;
import kotlin.Cbreak;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.optimizer.OptRuntime;

@gf2(markerClass = {Cbreak.class})
@iz1(version = "1.5")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0017\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB$\b\u0000\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0086\u0002ø\u0001\u0000J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001f\u0010\u0011\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010R\u001f\u0010\u0013\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0012\u0010\u0010R\u0019\u0010\u0015\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0014\u0010\u0010ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/else;", "", "Landroid/support/v4/ja2;", "", "iterator", "", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "()I", "first", "if", "last", "for", "step", "start", "endInclusive", "<init>", "(IIILandroid/support/v4/rx;)V", "new", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.ranges.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse implements Iterable<ja2>, KMappedMarker {

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f27932new = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private final int f27933do;

    /* renamed from: for, reason: not valid java name */
    private final int f27934for;

    /* renamed from: if, reason: not valid java name */
    private final int f27935if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"kotlin/ranges/else$do", "", "Landroid/support/v4/ja2;", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/else;", "do", "(III)Lkotlin/ranges/else;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.ranges.else$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Celse m30943do(int i, int i2, int i3) {
            return new Celse(i, i2, i3, null);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public /* synthetic */ Celse(int i, int i2, int i3, rx rxVar) {
        this(i, i2, i3);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m30940do() {
        return this.f27933do;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Celse) {
            if (!isEmpty() || !((Celse) obj).isEmpty()) {
                Celse celse = (Celse) obj;
                if (this.f27933do != celse.f27933do || this.f27935if != celse.f27935if || this.f27934for != celse.f27934for) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m30941for() {
        return this.f27934for;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f27933do * 31) + this.f27935if) * 31) + this.f27934for;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m30942if() {
        return this.f27935if;
    }

    public boolean isEmpty() {
        if (this.f27934for > 0) {
            if (oc2.m5558for(this.f27933do, this.f27935if) > 0) {
                return true;
            }
        } else if (oc2.m5558for(this.f27933do, this.f27935if) < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @m41
    public final Iterator<ja2> iterator() {
        return new Cgoto(this.f27933do, this.f27935if, this.f27934for, null);
    }

    @m41
    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f27934for > 0) {
            sb = new StringBuilder();
            sb.append(ja2.o(this.f27933do));
            sb.append("..");
            sb.append(ja2.o(this.f27935if));
            sb.append(" step ");
            i = this.f27934for;
        } else {
            sb = new StringBuilder();
            sb.append(ja2.o(this.f27933do));
            sb.append(" downTo ");
            sb.append(ja2.o(this.f27935if));
            sb.append(" step ");
            i = -this.f27934for;
        }
        sb.append(i);
        return sb.toString();
    }

    private Celse(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f27933do = i;
        this.f27935if = wa2.m9115new(i, i2, i3);
        this.f27934for = i3;
    }
}

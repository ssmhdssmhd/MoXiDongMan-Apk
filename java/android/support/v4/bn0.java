package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB!\b\u0000\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\n\u001a\u00020\u0002H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0012\u0010\u0010R\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010¨\u0006\u0019"}, d2 = {"Landroid/support/v4/bn0;", "", "", "Landroid/support/v4/an0;", "new", "", "isEmpty", "", "other", "equals", "hashCode", "", "toString", "first", OptRuntime.GeneratorState.resumptionPoint_TYPE, "do", "()I", "last", "if", "step", "for", "start", "endInclusive", "<init>", "(III)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class bn0 implements Iterable<Integer>, KMappedMarker {

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f492new = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private final int f493do;

    /* renamed from: for, reason: not valid java name */
    private final int f494for;

    /* renamed from: if, reason: not valid java name */
    private final int f495if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002¨\u0006\n"}, d2 = {"android/support/v4/bn0$do", "", "", "rangeStart", "rangeEnd", "step", "Landroid/support/v4/bn0;", "do", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.bn0$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final bn0 m596do(int i, int i2, int i3) {
            return new bn0(i, i2, i3);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public bn0(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f493do = i;
        this.f495if = wf1.m9140for(i, i2, i3);
        this.f494for = i3;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m592do() {
        return this.f493do;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof bn0) {
            if (!isEmpty() || !((bn0) obj).isEmpty()) {
                bn0 bn0Var = (bn0) obj;
                if (this.f493do != bn0Var.f493do || this.f495if != bn0Var.f495if || this.f494for != bn0Var.f494for) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m593for() {
        return this.f494for;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f493do * 31) + this.f495if) * 31) + this.f494for;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m594if() {
        return this.f495if;
    }

    public boolean isEmpty() {
        if (this.f494for > 0) {
            if (this.f493do > this.f495if) {
                return true;
            }
        } else if (this.f493do < this.f495if) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @m41
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public an0 iterator() {
        return new cn0(this.f493do, this.f495if, this.f494for);
    }

    @m41
    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f494for > 0) {
            sb = new StringBuilder();
            sb.append(this.f493do);
            sb.append("..");
            sb.append(this.f495if);
            sb.append(" step ");
            i = this.f494for;
        } else {
            sb = new StringBuilder();
            sb.append(this.f493do);
            sb.append(" downTo ");
            sb.append(this.f495if);
            sb.append(" step ");
            i = -this.f494for;
        }
        sb.append(i);
        return sb.toString();
    }
}

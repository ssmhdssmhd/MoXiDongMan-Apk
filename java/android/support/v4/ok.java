package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B!\b\u0000\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Landroid/support/v4/ok;", "", "", "Landroid/support/v4/nk;", "new", "", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "first", "C", "do", "()C", "last", "if", "step", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "start", "endInclusive", "<init>", "(CCI)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class ok implements Iterable<Character>, KMappedMarker {

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f4658new = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private final char f4659do;

    /* renamed from: for, reason: not valid java name */
    private final int f4660for;

    /* renamed from: if, reason: not valid java name */
    private final char f4661if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u000b"}, d2 = {"android/support/v4/ok$do", "", "", "rangeStart", "rangeEnd", "", "step", "Landroid/support/v4/ok;", "do", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.ok$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final ok m5699do(char c, char c2, int i) {
            return new ok(c, c2, i);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public ok(char c, char c2, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f4659do = c;
        this.f4661if = (char) wf1.m9140for(c, c2, i);
        this.f4660for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final char m5695do() {
        return this.f4659do;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof ok) {
            if (!isEmpty() || !((ok) obj).isEmpty()) {
                ok okVar = (ok) obj;
                if (this.f4659do != okVar.f4659do || this.f4661if != okVar.f4661if || this.f4660for != okVar.f4660for) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m5696for() {
        return this.f4660for;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f4659do * 31) + this.f4661if) * 31) + this.f4660for;
    }

    /* renamed from: if, reason: not valid java name */
    public final char m5697if() {
        return this.f4661if;
    }

    public boolean isEmpty() {
        if (this.f4660for > 0) {
            if (Csuper.m30692public(this.f4659do, this.f4661if) > 0) {
                return true;
            }
        } else if (Csuper.m30692public(this.f4659do, this.f4661if) < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @m41
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public nk iterator() {
        return new pk(this.f4659do, this.f4661if, this.f4660for);
    }

    @m41
    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f4660for > 0) {
            sb = new StringBuilder();
            sb.append(this.f4659do);
            sb.append("..");
            sb.append(this.f4661if);
            sb.append(" step ");
            i = this.f4660for;
        } else {
            sb = new StringBuilder();
            sb.append(this.f4659do);
            sb.append(" downTo ");
            sb.append(this.f4661if);
            sb.append(" step ");
            i = -this.f4660for;
        }
        sb.append(i);
        return sb.toString();
    }
}

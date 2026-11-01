package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B!\b\u0000\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u001a"}, d2 = {"Landroid/support/v4/zv0;", "", "", "Landroid/support/v4/yv0;", "new", "", "isEmpty", "", "other", "equals", "", "hashCode", "", "toString", "first", "J", "do", "()J", "last", "if", "step", "for", "start", "endInclusive", "<init>", "(JJJ)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class zv0 implements Iterable<Long>, KMappedMarker {

    /* renamed from: new, reason: not valid java name */
    @m41
    public static final Cdo f8663new = new Cdo(null);

    /* renamed from: do, reason: not valid java name */
    private final long f8664do;

    /* renamed from: for, reason: not valid java name */
    private final long f8665for;

    /* renamed from: if, reason: not valid java name */
    private final long f8666if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002¨\u0006\n"}, d2 = {"android/support/v4/zv0$do", "", "", "rangeStart", "rangeEnd", "step", "Landroid/support/v4/zv0;", "do", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.zv0$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final zv0 m10306do(long j, long j2, long j3) {
            return new zv0(j, j2, j3);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public zv0(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j3 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.f8664do = j;
        this.f8666if = wf1.m9142new(j, j2, j3);
        this.f8665for = j3;
    }

    /* renamed from: do, reason: not valid java name */
    public final long m10302do() {
        return this.f8664do;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof zv0) {
            if (!isEmpty() || !((zv0) obj).isEmpty()) {
                zv0 zv0Var = (zv0) obj;
                if (this.f8664do != zv0Var.f8664do || this.f8666if != zv0Var.f8666if || this.f8665for != zv0Var.f8665for) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final long m10303for() {
        return this.f8665for;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = 31;
        long j2 = this.f8664do;
        long j3 = this.f8666if;
        long j4 = j * (((j2 ^ (j2 >>> 32)) * j) + (j3 ^ (j3 >>> 32)));
        long j5 = this.f8665for;
        return (int) (j4 + (j5 ^ (j5 >>> 32)));
    }

    /* renamed from: if, reason: not valid java name */
    public final long m10304if() {
        return this.f8666if;
    }

    public boolean isEmpty() {
        long j = this.f8665for;
        long j2 = this.f8664do;
        long j3 = this.f8666if;
        if (j > 0) {
            if (j2 > j3) {
                return true;
            }
        } else if (j2 < j3) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @m41
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public yv0 iterator() {
        return new aw0(this.f8664do, this.f8666if, this.f8665for);
    }

    @m41
    public String toString() {
        StringBuilder sb;
        long j;
        if (this.f8665for > 0) {
            sb = new StringBuilder();
            sb.append(this.f8664do);
            sb.append("..");
            sb.append(this.f8666if);
            sb.append(" step ");
            j = this.f8665for;
        } else {
            sb = new StringBuilder();
            sb.append(this.f8664do);
            sb.append(" downTo ");
            sb.append(this.f8666if);
            sb.append(" step ");
            j = -this.f8665for;
        }
        sb.append(j);
        return sb.toString();
    }
}

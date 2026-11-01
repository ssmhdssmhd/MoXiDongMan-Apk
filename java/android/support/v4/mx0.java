package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Landroid/support/v4/mx0;", "", "", "do", "Landroid/support/v4/dn0;", "if", ES6Iterator.VALUE_PROPERTY, "range", "for", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "case", "()Ljava/lang/String;", "Landroid/support/v4/dn0;", "try", "()Landroid/support/v4/dn0;", "<init>", "(Ljava/lang/String;Landroid/support/v4/dn0;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class mx0 {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final String f4073do;

    /* renamed from: if, reason: not valid java name */
    @m41
    private final dn0 f4074if;

    public mx0(@m41 String value, @m41 dn0 range) {
        Csuper.m30700throw(value, "value");
        Csuper.m30700throw(range, "range");
        this.f4073do = value;
        this.f4074if = range;
    }

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ mx0 m5044new(mx0 mx0Var, String str, dn0 dn0Var, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mx0Var.f4073do;
        }
        if ((i & 2) != 0) {
            dn0Var = mx0Var.f4074if;
        }
        return mx0Var.m5047for(str, dn0Var);
    }

    @m41
    /* renamed from: case, reason: not valid java name */
    public final String m5045case() {
        return this.f4073do;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final String m5046do() {
        return this.f4073do;
    }

    public boolean equals(@z41 Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mx0)) {
            return false;
        }
        mx0 mx0Var = (mx0) obj;
        return Csuper.m30676else(this.f4073do, mx0Var.f4073do) && Csuper.m30676else(this.f4074if, mx0Var.f4074if);
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final mx0 m5047for(@m41 String value, @m41 dn0 range) {
        Csuper.m30700throw(value, "value");
        Csuper.m30700throw(range, "range");
        return new mx0(value, range);
    }

    public int hashCode() {
        String str = this.f4073do;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        dn0 dn0Var = this.f4074if;
        return iHashCode + (dn0Var != null ? dn0Var.hashCode() : 0);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public final dn0 m5048if() {
        return this.f4074if;
    }

    @m41
    public String toString() {
        return "MatchGroup(value=" + this.f4073do + ", range=" + this.f4074if + ")";
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public final dn0 m5049try() {
        return this.f4074if;
    }
}

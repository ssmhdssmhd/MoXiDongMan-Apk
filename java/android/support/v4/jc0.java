package android.support.v4;

import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.PreCompInfo;

/* loaded from: classes3.dex */
public class jc0 implements PreCompInfo {

    /* renamed from: do, reason: not valid java name */
    public Cnew f3050do = null;

    /* renamed from: if, reason: not valid java name */
    public ECLookupTable f3052if = null;

    /* renamed from: for, reason: not valid java name */
    public int f3051for = -1;

    /* renamed from: case, reason: not valid java name */
    public void m3824case(int i) {
        this.f3051for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public ECLookupTable m3825do() {
        return this.f3052if;
    }

    /* renamed from: for, reason: not valid java name */
    public int m3826for() {
        return this.f3051for;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m3827if() {
        return this.f3050do;
    }

    /* renamed from: new, reason: not valid java name */
    public void m3828new(ECLookupTable eCLookupTable) {
        this.f3052if = eCLookupTable;
    }

    /* renamed from: try, reason: not valid java name */
    public void m3829try(Cnew cnew) {
        this.f3050do = cnew;
    }
}

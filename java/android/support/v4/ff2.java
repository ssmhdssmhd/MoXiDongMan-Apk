package android.support.v4;

import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.PreCompInfo;

/* loaded from: classes3.dex */
public class ff2 implements PreCompInfo {

    /* renamed from: do, reason: not valid java name */
    public Cnew[] f1783do = null;

    /* renamed from: if, reason: not valid java name */
    public Cnew[] f1785if = null;

    /* renamed from: for, reason: not valid java name */
    public Cnew f1784for = null;

    /* renamed from: case, reason: not valid java name */
    public void m2268case(Cnew cnew) {
        this.f1784for = cnew;
    }

    /* renamed from: do, reason: not valid java name */
    public Cnew[] m2269do() {
        return this.f1783do;
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m2270for() {
        return this.f1784for;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew[] m2271if() {
        return this.f1785if;
    }

    /* renamed from: new, reason: not valid java name */
    public void m2272new(Cnew[] cnewArr) {
        this.f1783do = cnewArr;
    }

    /* renamed from: try, reason: not valid java name */
    public void m2273try(Cnew[] cnewArr) {
        this.f1785if = cnewArr;
    }
}

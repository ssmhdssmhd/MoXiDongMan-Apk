package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECPointMap;

/* loaded from: classes3.dex */
public class yr1 implements ECPointMap {

    /* renamed from: do, reason: not valid java name */
    public final Cfor f8322do;

    public yr1(Cfor cfor) {
        this.f8322do = cfor;
    }

    @Override // org.bouncycastle.math.ec.ECPointMap
    public Cnew map(Cnew cnew) {
        return cnew.mo35471protected(this.f8322do);
    }
}

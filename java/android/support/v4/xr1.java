package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECPointMap;

/* loaded from: classes3.dex */
public class xr1 implements ECPointMap {

    /* renamed from: do, reason: not valid java name */
    public final Cfor f8016do;

    public xr1(Cfor cfor) {
        this.f8016do = cfor;
    }

    @Override // org.bouncycastle.math.ec.ECPointMap
    public Cnew map(Cnew cnew) {
        return cnew.mo35469interface(this.f8016do);
    }
}

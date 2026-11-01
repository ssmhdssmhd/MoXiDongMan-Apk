package android.support.v4;

import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class a8 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private final long[] f50do = new long[2];

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        nq0.m5351if(jArr, this.f50do);
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        nq0.m5352new(jArr, this.f50do, jArr);
    }
}

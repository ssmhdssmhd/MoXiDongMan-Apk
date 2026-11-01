package android.support.v4;

import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class b8 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private final long[] f370do = new long[4];

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        oq0.m5733if(jArr, this.f370do);
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        oq0.m5734new(jArr, this.f370do, jArr);
    }
}

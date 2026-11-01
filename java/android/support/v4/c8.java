package android.support.v4;

import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class c8 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private final long[] f631do = new long[8];

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        pq0.m6186if(jArr, this.f631do);
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        pq0.m6187new(jArr, this.f631do, jArr);
    }
}

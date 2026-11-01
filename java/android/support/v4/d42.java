package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class d42 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private long[][] f933do;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.f933do;
        if (jArr2 == null) {
            this.f933do = (long[][]) Array.newInstance((Class<?>) long.class, 256, 8);
        } else if (pq0.m6184for(jArr, jArr2[1])) {
            return;
        }
        pq0.m6186if(jArr, this.f933do[1]);
        for (int i = 2; i < 256; i += 2) {
            long[][] jArr3 = this.f933do;
            pq0.m6189try(jArr3[i >> 1], jArr3[i]);
            long[][] jArr4 = this.f933do;
            pq0.m6182do(jArr4[i], jArr4[1], jArr4[i + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[8];
        pq0.m6186if(this.f933do[((int) (jArr[7] >>> 56)) & 255], jArr2);
        for (int i = 62; i >= 0; i--) {
            pq0.m6181case(jArr2, jArr2);
            pq0.m6182do(this.f933do[((int) (jArr[i >>> 3] >>> ((i & 7) << 3))) & 255], jArr2, jArr2);
        }
        pq0.m6186if(jArr2, jArr);
    }
}

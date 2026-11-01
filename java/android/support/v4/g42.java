package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class g42 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private long[][] f2053do;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.f2053do;
        if (jArr2 == null) {
            this.f2053do = (long[][]) Array.newInstance((Class<?>) long.class, 256, 2);
        } else if (nq0.m5349for(jArr, jArr2[1])) {
            return;
        }
        nq0.m5351if(jArr, this.f2053do[1]);
        for (int i = 2; i < 256; i += 2) {
            long[][] jArr3 = this.f2053do;
            nq0.m5354try(jArr3[i >> 1], jArr3[i]);
            long[][] jArr4 = this.f2053do;
            nq0.m5347do(jArr4[i], jArr4[1], jArr4[i + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[2];
        nq0.m5351if(this.f2053do[((int) (jArr[1] >>> 56)) & 255], jArr2);
        for (int i = 14; i >= 0; i--) {
            nq0.m5346case(jArr2, jArr2);
            nq0.m5347do(this.f2053do[((int) (jArr[i >>> 3] >>> ((i & 7) << 3))) & 255], jArr2, jArr2);
        }
        nq0.m5351if(jArr2, jArr);
    }
}

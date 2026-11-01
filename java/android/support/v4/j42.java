package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;

/* loaded from: classes3.dex */
public class j42 implements KGCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private long[][] f2971do;

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        long[][] jArr2 = this.f2971do;
        if (jArr2 == null) {
            this.f2971do = (long[][]) Array.newInstance((Class<?>) long.class, 256, 4);
        } else if (oq0.m5731for(jArr, jArr2[1])) {
            return;
        }
        oq0.m5733if(jArr, this.f2971do[1]);
        for (int i = 2; i < 256; i += 2) {
            long[][] jArr3 = this.f2971do;
            oq0.m5736try(jArr3[i >> 1], jArr3[i]);
            long[][] jArr4 = this.f2971do;
            oq0.m5729do(jArr4[i], jArr4[1], jArr4[i + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        long[] jArr2 = new long[4];
        oq0.m5733if(this.f2971do[((int) (jArr[3] >>> 56)) & 255], jArr2);
        for (int i = 30; i >= 0; i--) {
            oq0.m5728case(jArr2, jArr2);
            oq0.m5729do(this.f2971do[((int) (jArr[i >>> 3] >>> ((i & 7) << 3))) & 255], jArr2, jArr2);
        }
        oq0.m5733if(jArr2, jArr);
    }
}

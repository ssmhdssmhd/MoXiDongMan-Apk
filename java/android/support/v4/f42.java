package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;

/* loaded from: classes3.dex */
public class f42 implements GCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private byte[] f1684do;

    /* renamed from: if, reason: not valid java name */
    private long[][] f1685if;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.f1685if == null) {
            this.f1685if = (long[][]) Array.newInstance((Class<?>) long.class, 256, 2);
        } else if (q3.m6362case(this.f1684do, bArr)) {
            return;
        }
        byte[] bArrM6371final = q3.m6371final(bArr);
        this.f1684do = bArrM6371final;
        ne0.m5164else(bArrM6371final, this.f1685if[1]);
        long[][] jArr = this.f1685if;
        ne0.m5181return(jArr[1], jArr[1]);
        for (int i = 2; i < 256; i += 2) {
            long[][] jArr2 = this.f1685if;
            ne0.m5158catch(jArr2[i >> 1], jArr2[i]);
            long[][] jArr3 = this.f1685if;
            ne0.a(jArr3[i], jArr3[1], jArr3[i + 1]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArr = this.f1685if[bArr[15] & 255];
        long j = jArr[0];
        long j2 = jArr[1];
        for (int i = 14; i >= 0; i--) {
            long[] jArr2 = this.f1685if[bArr[i] & 255];
            long j3 = j2 << 56;
            j2 = ((j2 >>> 8) | (j << 56)) ^ jArr2[1];
            j = (((((j >>> 8) ^ jArr2[0]) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2)) ^ (j3 >>> 7);
        }
        ib1.m3369static(j, bArr, 0);
        ib1.m3369static(j2, bArr, 8);
    }
}

package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;

/* loaded from: classes3.dex */
public class h42 implements GCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private byte[] f2310do;

    /* renamed from: if, reason: not valid java name */
    private long[][][] f2311if;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.f2311if == null) {
            this.f2311if = (long[][][]) Array.newInstance((Class<?>) long.class, 16, 256, 2);
        } else if (q3.m6362case(this.f2310do, bArr)) {
            return;
        }
        this.f2310do = q3.m6371final(bArr);
        for (int i = 0; i < 16; i++) {
            long[][][] jArr = this.f2311if;
            long[][] jArr2 = jArr[i];
            if (i == 0) {
                ne0.m5164else(this.f2310do, jArr2[1]);
                ne0.m5181return(jArr2[1], jArr2[1]);
            } else {
                ne0.m5162default(jArr[i - 1][1], jArr2[1]);
            }
            for (int i2 = 2; i2 < 256; i2 += 2) {
                ne0.m5158catch(jArr2[i2 >> 1], jArr2[i2]);
                ne0.a(jArr2[i2], jArr2[1], jArr2[i2 + 1]);
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArr = this.f2311if[15][bArr[15] & 255];
        long j = jArr[0];
        long j2 = jArr[1];
        for (int i = 14; i >= 0; i--) {
            long[] jArr2 = this.f2311if[i][bArr[i] & 255];
            j ^= jArr2[0];
            j2 ^= jArr2[1];
        }
        ib1.m3369static(j, bArr, 0);
        ib1.m3369static(j2, bArr, 8);
    }
}

package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;

/* loaded from: classes3.dex */
public class i42 implements GCMMultiplier {

    /* renamed from: do, reason: not valid java name */
    private byte[] f2621do;

    /* renamed from: if, reason: not valid java name */
    private long[][][] f2622if;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        if (this.f2622if == null) {
            this.f2622if = (long[][][]) Array.newInstance((Class<?>) long.class, 32, 16, 2);
        } else if (q3.m6362case(this.f2621do, bArr)) {
            return;
        }
        this.f2621do = q3.m6371final(bArr);
        for (int i = 0; i < 32; i++) {
            long[][][] jArr = this.f2622if;
            long[][] jArr2 = jArr[i];
            if (i == 0) {
                ne0.m5164else(this.f2621do, jArr2[1]);
                ne0.m5175native(jArr2[1], jArr2[1]);
            } else {
                ne0.m5180public(jArr[i - 1][1], jArr2[1]);
            }
            for (int i2 = 2; i2 < 16; i2 += 2) {
                ne0.m5158catch(jArr2[i2 >> 1], jArr2[i2]);
                ne0.a(jArr2[i2], jArr2[1], jArr2[i2 + 1]);
            }
        }
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long j = 0;
        long j2 = 0;
        for (int i = 15; i >= 0; i--) {
            long[][][] jArr = this.f2622if;
            int i2 = i + i;
            long[] jArr2 = jArr[i2 + 1][bArr[i] & 15];
            long[] jArr3 = jArr[i2][(bArr[i] & 240) >>> 4];
            j ^= jArr2[0] ^ jArr3[0];
            j2 ^= jArr3[1] ^ jArr2[1];
        }
        ib1.m3369static(j, bArr, 0);
        ib1.m3369static(j2, bArr, 8);
    }
}

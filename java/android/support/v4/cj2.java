package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class cj2 implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private static final int f803case = 32;

    /* renamed from: else, reason: not valid java name */
    private static final int f804else = 8;

    /* renamed from: goto, reason: not valid java name */
    private static final int f805goto = -1640531527;

    /* renamed from: try, reason: not valid java name */
    private boolean f810try;

    /* renamed from: do, reason: not valid java name */
    private int[] f806do = new int[4];

    /* renamed from: if, reason: not valid java name */
    private int[] f808if = new int[32];

    /* renamed from: for, reason: not valid java name */
    private int[] f807for = new int[32];

    /* renamed from: new, reason: not valid java name */
    private boolean f809new = false;

    /* renamed from: do, reason: not valid java name */
    private int m948do(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] << t3.f6397package) | ((bArr[i2] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5] & 255) | i4 | ((bArr[i3] & 255) << 8);
    }

    /* renamed from: for, reason: not valid java name */
    private int m949for(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM948do = m948do(bArr, i);
        int iM948do2 = m948do(bArr, i + 4);
        for (int i3 = 0; i3 < 32; i3++) {
            iM948do += (((iM948do2 << 4) ^ (iM948do2 >>> 5)) + iM948do2) ^ this.f808if[i3];
            iM948do2 += (((iM948do << 4) ^ (iM948do >>> 5)) + iM948do) ^ this.f807for[i3];
        }
        m952try(iM948do, bArr2, i2);
        m952try(iM948do2, bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: if, reason: not valid java name */
    private int m950if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM948do = m948do(bArr, i);
        int iM948do2 = m948do(bArr, i + 4);
        for (int i3 = 31; i3 >= 0; i3--) {
            iM948do2 -= (((iM948do << 4) ^ (iM948do >>> 5)) + iM948do) ^ this.f807for[i3];
            iM948do -= (((iM948do2 << 4) ^ (iM948do2 >>> 5)) + iM948do2) ^ this.f808if[i3];
        }
        m952try(iM948do, bArr2, i2);
        m952try(iM948do2, bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: new, reason: not valid java name */
    private void m951new(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        int i = 0;
        int i2 = 0;
        while (i < 4) {
            this.f806do[i] = m948do(bArr, i2);
            i++;
            i2 += 4;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 32; i4++) {
            int[] iArr = this.f808if;
            int[] iArr2 = this.f806do;
            iArr[i4] = iArr2[i3 & 3] + i3;
            i3 -= 1640531527;
            this.f807for[i4] = iArr2[(i3 >>> 11) & 3] + i3;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m952try(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "XTEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f810try = z;
            this.f809new = true;
            m951new(((gr0) cipherParameters).m2770do());
        } else {
            throw new IllegalArgumentException("invalid parameter passed to TEA init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (!this.f809new) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 <= bArr2.length) {
            return this.f810try ? m949for(bArr, i, bArr2, i2) : m950if(bArr, i, bArr2, i2);
        }
        throw new f91("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}

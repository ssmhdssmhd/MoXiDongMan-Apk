package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class a42 implements BlockCipher {

    /* renamed from: break, reason: not valid java name */
    private static final int f34break = -957401312;

    /* renamed from: else, reason: not valid java name */
    private static final int f35else = 32;

    /* renamed from: goto, reason: not valid java name */
    private static final int f36goto = 8;

    /* renamed from: this, reason: not valid java name */
    private static final int f37this = -1640531527;

    /* renamed from: case, reason: not valid java name */
    private boolean f38case;

    /* renamed from: do, reason: not valid java name */
    private int f39do;

    /* renamed from: for, reason: not valid java name */
    private int f40for;

    /* renamed from: if, reason: not valid java name */
    private int f41if;

    /* renamed from: new, reason: not valid java name */
    private int f42new;

    /* renamed from: try, reason: not valid java name */
    private boolean f43try = false;

    /* renamed from: do, reason: not valid java name */
    private int m34do(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] << t3.f6397package) | ((bArr[i2] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5] & 255) | i4 | ((bArr[i3] & 255) << 8);
    }

    /* renamed from: for, reason: not valid java name */
    private int m35for(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM34do = m34do(bArr, i);
        int iM34do2 = m34do(bArr, i + 4);
        int i3 = iM34do;
        int i4 = 0;
        for (int i5 = 0; i5 != 32; i5++) {
            i4 -= 1640531527;
            i3 += (((iM34do2 << 4) + this.f39do) ^ (iM34do2 + i4)) ^ ((iM34do2 >>> 5) + this.f41if);
            iM34do2 += (((i3 << 4) + this.f40for) ^ (i3 + i4)) ^ ((i3 >>> 5) + this.f42new);
        }
        m38try(i3, bArr2, i2);
        m38try(iM34do2, bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: if, reason: not valid java name */
    private int m36if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM34do = m34do(bArr, i);
        int iM34do2 = m34do(bArr, i + 4);
        int i3 = f34break;
        for (int i4 = 0; i4 != 32; i4++) {
            iM34do2 -= (((iM34do << 4) + this.f40for) ^ (iM34do + i3)) ^ ((iM34do >>> 5) + this.f42new);
            iM34do -= (((iM34do2 << 4) + this.f39do) ^ (iM34do2 + i3)) ^ ((iM34do2 >>> 5) + this.f41if);
            i3 += 1640531527;
        }
        m38try(iM34do, bArr2, i2);
        m38try(iM34do2, bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: new, reason: not valid java name */
    private void m37new(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        this.f39do = m34do(bArr, 0);
        this.f41if = m34do(bArr, 4);
        this.f40for = m34do(bArr, 8);
        this.f42new = m34do(bArr, 12);
    }

    /* renamed from: try, reason: not valid java name */
    private void m38try(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "TEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f38case = z;
            this.f43try = true;
            m37new(((gr0) cipherParameters).m2770do());
        } else {
            throw new IllegalArgumentException("invalid parameter passed to TEA init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (!this.f43try) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 <= bArr2.length) {
            return this.f38case ? m35for(bArr, i, bArr2, i2) : m36if(bArr, i, bArr2, i2);
        }
        throw new f91("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}

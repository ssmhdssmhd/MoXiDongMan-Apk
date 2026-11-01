package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class kj1 implements BlockCipher {

    /* renamed from: new, reason: not valid java name */
    private static final int f3397new = -1209970333;

    /* renamed from: try, reason: not valid java name */
    private static final int f3398try = -1640531527;

    /* renamed from: for, reason: not valid java name */
    private boolean f3400for;

    /* renamed from: do, reason: not valid java name */
    private int f3399do = 12;

    /* renamed from: if, reason: not valid java name */
    private int[] f3401if = null;

    /* renamed from: case, reason: not valid java name */
    private void m4417case(byte[] bArr) {
        int[] iArr;
        int length = (bArr.length + 3) / 4;
        int[] iArr2 = new int[length];
        for (int i = 0; i != bArr.length; i++) {
            int i2 = i / 4;
            iArr2[i2] = iArr2[i2] + ((bArr[i] & 255) << ((i % 4) * 8));
        }
        int[] iArr3 = new int[(this.f3399do + 1) * 2];
        this.f3401if = iArr3;
        iArr3[0] = f3397new;
        int i3 = 1;
        while (true) {
            iArr = this.f3401if;
            if (i3 >= iArr.length) {
                break;
            }
            iArr[i3] = iArr[i3 - 1] - 1640531527;
            i3++;
        }
        int length2 = length > iArr.length ? length * 3 : iArr.length * 3;
        int length3 = 0;
        int iM4422new = 0;
        int iM4422new2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length2; i5++) {
            int[] iArr4 = this.f3401if;
            iM4422new = m4422new(iArr4[length3] + iM4422new + iM4422new2, 3);
            iArr4[length3] = iM4422new;
            iM4422new2 = m4422new(iArr2[i4] + iM4422new + iM4422new2, iM4422new2 + iM4422new);
            iArr2[i4] = iM4422new2;
            length3 = (length3 + 1) % this.f3401if.length;
            i4 = (i4 + 1) % length;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m4418do(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: else, reason: not valid java name */
    private void m4419else(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    /* renamed from: for, reason: not valid java name */
    private int m4420for(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM4418do = m4418do(bArr, i) + this.f3401if[0];
        int iM4418do2 = m4418do(bArr, i + 4) + this.f3401if[1];
        for (int i3 = 1; i3 <= this.f3399do; i3++) {
            int i4 = i3 * 2;
            iM4418do = m4422new(iM4418do ^ iM4418do2, iM4418do2) + this.f3401if[i4];
            iM4418do2 = m4422new(iM4418do2 ^ iM4418do, iM4418do) + this.f3401if[i4 + 1];
        }
        m4419else(iM4418do, bArr2, i2);
        m4419else(iM4418do2, bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: if, reason: not valid java name */
    private int m4421if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM4418do = m4418do(bArr, i);
        int iM4418do2 = m4418do(bArr, i + 4);
        for (int i3 = this.f3399do; i3 >= 1; i3--) {
            int i4 = i3 * 2;
            iM4418do2 = m4423try(iM4418do2 - this.f3401if[i4 + 1], iM4418do) ^ iM4418do;
            iM4418do = m4423try(iM4418do - this.f3401if[i4], iM4418do2) ^ iM4418do2;
        }
        m4419else(iM4418do - this.f3401if[0], bArr2, i2);
        m4419else(iM4418do2 - this.f3401if[1], bArr2, i2 + 4);
        return 8;
    }

    /* renamed from: new, reason: not valid java name */
    private int m4422new(int i, int i2) {
        int i3 = i2 & 31;
        return (i >>> (32 - i3)) | (i << i3);
    }

    /* renamed from: try, reason: not valid java name */
    private int m4423try(int i, int i2) {
        int i3 = i2 & 31;
        return (i << (32 - i3)) | (i >>> i3);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-32";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof mj1) {
            mj1 mj1Var = (mj1) cipherParameters;
            this.f3399do = mj1Var.m4933if();
            m4417case(mj1Var.m4932do());
        } else {
            if (!(cipherParameters instanceof gr0)) {
                throw new IllegalArgumentException("invalid parameter passed to RC532 init - " + cipherParameters.getClass().getName());
            }
            m4417case(((gr0) cipherParameters).m2770do());
        }
        this.f3400for = z;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        return this.f3400for ? m4420for(bArr, i, bArr2, i2) : m4421if(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}

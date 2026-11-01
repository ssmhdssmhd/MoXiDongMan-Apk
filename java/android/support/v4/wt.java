package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class wt extends rt {

    /* renamed from: public, reason: not valid java name */
    public static final int f7686public = 8;

    /* renamed from: native, reason: not valid java name */
    private boolean f7688native;

    /* renamed from: throw, reason: not valid java name */
    private int[] f7689throw = null;

    /* renamed from: while, reason: not valid java name */
    private int[] f7690while = null;

    /* renamed from: import, reason: not valid java name */
    private int[] f7687import = null;

    @Override // android.support.v4.rt, org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DESede";
    }

    @Override // android.support.v4.rt, org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // android.support.v4.rt, org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("invalid parameter passed to DESede init - " + cipherParameters.getClass().getName());
        }
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        if (bArrM2770do.length != 24 && bArrM2770do.length != 16) {
            throw new IllegalArgumentException("key size must be 16 or 24 bytes.");
        }
        this.f7688native = z;
        byte[] bArr = new byte[8];
        System.arraycopy(bArrM2770do, 0, bArr, 0, 8);
        this.f7689throw = m7124if(z, bArr);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArrM2770do, 8, bArr2, 0, 8);
        this.f7690while = m7124if(!z, bArr2);
        if (bArrM2770do.length != 24) {
            this.f7687import = this.f7689throw;
            return;
        }
        byte[] bArr3 = new byte[8];
        System.arraycopy(bArrM2770do, 16, bArr3, 0, 8);
        this.f7687import = m7124if(z, bArr3);
    }

    @Override // android.support.v4.rt, org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.f7689throw;
        if (iArr == null) {
            throw new IllegalStateException("DESede engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        byte[] bArr3 = new byte[8];
        if (this.f7688native) {
            m7123do(iArr, bArr, i, bArr3, 0);
            m7123do(this.f7690while, bArr3, 0, bArr3, 0);
            m7123do(this.f7687import, bArr3, 0, bArr2, i2);
        } else {
            m7123do(this.f7687import, bArr, i, bArr3, 0);
            m7123do(this.f7690while, bArr3, 0, bArr3, 0);
            m7123do(this.f7689throw, bArr3, 0, bArr2, i2);
        }
        return 8;
    }

    @Override // android.support.v4.rt, org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}

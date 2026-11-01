package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* loaded from: classes3.dex */
public class jj1 implements StreamCipher {

    /* renamed from: try, reason: not valid java name */
    private static final int f3119try = 256;

    /* renamed from: do, reason: not valid java name */
    private byte[] f3120do = null;

    /* renamed from: if, reason: not valid java name */
    private int f3122if = 0;

    /* renamed from: for, reason: not valid java name */
    private int f3121for = 0;

    /* renamed from: new, reason: not valid java name */
    private byte[] f3123new = null;

    /* renamed from: do, reason: not valid java name */
    private void m3907do(byte[] bArr) {
        this.f3123new = bArr;
        this.f3122if = 0;
        this.f3121for = 0;
        if (this.f3120do == null) {
            this.f3120do = new byte[256];
        }
        for (int i = 0; i < 256; i++) {
            this.f3120do[i] = (byte) i;
        }
        int length = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = bArr[length] & 255;
            byte[] bArr2 = this.f3120do;
            i2 = (i4 + bArr2[i3] + i2) & 255;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
            length = (length + 1) % bArr.length;
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "RC4";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
            this.f3123new = bArrM2770do;
            m3907do(bArrM2770do);
        } else {
            throw new IllegalArgumentException("invalid parameter passed to RC4 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = (this.f3122if + 1) & 255;
            this.f3122if = i5;
            byte[] bArr3 = this.f3120do;
            int i6 = (bArr3[i5] + this.f3121for) & 255;
            this.f3121for = i6;
            byte b = bArr3[i5];
            bArr3[i5] = bArr3[i6];
            bArr3[i6] = b;
            bArr2[i4 + i3] = (byte) (bArr3[(bArr3[i5] + bArr3[i6]) & 255] ^ bArr[i4 + i]);
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        m3907do(this.f3123new);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        int i = (this.f3122if + 1) & 255;
        this.f3122if = i;
        byte[] bArr = this.f3120do;
        int i2 = (bArr[i] + this.f3121for) & 255;
        this.f3121for = i2;
        byte b2 = bArr[i];
        bArr[i] = bArr[i2];
        bArr[i2] = b2;
        return (byte) (b ^ bArr[(bArr[i] + bArr[i2]) & 255]);
    }
}

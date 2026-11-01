package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* loaded from: classes3.dex */
public class ae2 implements StreamCipher {

    /* renamed from: new, reason: not valid java name */
    public byte[] f117new;

    /* renamed from: try, reason: not valid java name */
    public byte[] f118try;

    /* renamed from: do, reason: not valid java name */
    public byte f114do = 0;

    /* renamed from: if, reason: not valid java name */
    public byte[] f116if = null;

    /* renamed from: for, reason: not valid java name */
    public byte f115for = 0;

    /* renamed from: do, reason: not valid java name */
    public void mo189do(byte[] bArr, byte[] bArr2) {
        this.f115for = (byte) 0;
        this.f116if = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f116if[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            byte[] bArr3 = this.f116if;
            int i3 = i2 & 255;
            byte b = bArr3[(this.f115for + bArr3[i3] + bArr[i2 % bArr.length]) & 255];
            this.f115for = b;
            byte b2 = bArr3[i3];
            bArr3[i3] = bArr3[b & 255];
            bArr3[b & 255] = b2;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            byte[] bArr4 = this.f116if;
            int i5 = i4 & 255;
            byte b3 = bArr4[(this.f115for + bArr4[i5] + bArr2[i4 % bArr2.length]) & 255];
            this.f115for = b3;
            byte b4 = bArr4[i5];
            bArr4[i5] = bArr4[b3 & 255];
            bArr4[b3 & 255] = b4;
        }
        this.f114do = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "VMPC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("VMPC init parameters must include an IV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        if (!(bc1Var.m515if() instanceof gr0)) {
            throw new IllegalArgumentException("VMPC init parameters must include a key");
        }
        gr0 gr0Var = (gr0) bc1Var.m515if();
        byte[] bArrM514do = bc1Var.m514do();
        this.f117new = bArrM514do;
        if (bArrM514do == null || bArrM514do.length < 1 || bArrM514do.length > 768) {
            throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
        }
        byte[] bArrM2770do = gr0Var.m2770do();
        this.f118try = bArrM2770do;
        mo189do(bArrM2770do, this.f117new);
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
            byte[] bArr3 = this.f116if;
            byte b = this.f115for;
            byte b2 = this.f114do;
            byte b3 = bArr3[(b + bArr3[b2 & 255]) & 255];
            this.f115for = b3;
            byte b4 = bArr3[(bArr3[bArr3[b3 & 255] & 255] + 1) & 255];
            byte b5 = bArr3[b2 & 255];
            bArr3[b2 & 255] = bArr3[b3 & 255];
            bArr3[b3 & 255] = b5;
            this.f114do = (byte) ((b2 + 1) & 255);
            bArr2[i4 + i3] = (byte) (bArr[i4 + i] ^ b4);
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        mo189do(this.f118try, this.f117new);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        byte[] bArr = this.f116if;
        byte b2 = this.f115for;
        byte b3 = this.f114do;
        byte b4 = bArr[(b2 + bArr[b3 & 255]) & 255];
        this.f115for = b4;
        byte b5 = bArr[(bArr[bArr[b4 & 255] & 255] + 1) & 255];
        byte b6 = bArr[b3 & 255];
        bArr[b3 & 255] = bArr[b4 & 255];
        bArr[b4 & 255] = b6;
        this.f114do = (byte) ((b3 + 1) & 255);
        return (byte) (b ^ b5);
    }
}

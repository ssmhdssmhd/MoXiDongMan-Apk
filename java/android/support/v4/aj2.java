package android.support.v4;

/* loaded from: classes3.dex */
public class aj2 extends vr1 {
    @Override // android.support.v4.vr1, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "XSalsa20";
    }

    @Override // android.support.v4.vr1
    /* renamed from: super, reason: not valid java name */
    public void mo259super(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new IllegalArgumentException(getAlgorithmName() + " doesn't support re-init with null key");
        }
        if (bArr.length != 32) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires a 256 bit key");
        }
        super.mo259super(bArr, bArr2);
        ib1.m3374throw(bArr2, 8, this.f7326for, 8, 2);
        int[] iArr = this.f7326for;
        int[] iArr2 = new int[iArr.length];
        vr1.m8946final(20, iArr, iArr2);
        int[] iArr3 = this.f7326for;
        iArr3[1] = iArr2[0] - iArr3[0];
        iArr3[2] = iArr2[5] - iArr3[5];
        iArr3[3] = iArr2[10] - iArr3[10];
        iArr3[4] = iArr2[15] - iArr3[15];
        iArr3[11] = iArr2[6] - iArr3[6];
        iArr3[12] = iArr2[7] - iArr3[7];
        iArr3[13] = iArr2[8] - iArr3[8];
        iArr3[14] = iArr2[9] - iArr3[9];
        ib1.m3374throw(bArr2, 16, iArr3, 6, 2);
    }

    @Override // android.support.v4.vr1
    /* renamed from: try, reason: not valid java name */
    public int mo260try() {
        return 24;
    }
}

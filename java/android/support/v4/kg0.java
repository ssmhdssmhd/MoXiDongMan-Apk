package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public final class kg0 extends jg0 {

    /* renamed from: const, reason: not valid java name */
    private static final byte[] f3381const = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    public kg0() {
        super(f3381const);
    }

    public kg0(kg0 kg0Var) {
        super(f3381const);
        reset(kg0Var);
    }

    @Override // android.support.v4.jg0, org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new kg0(this);
    }

    @Override // android.support.v4.jg0, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2 = new byte[64];
        super.doFinal(bArr2, 0);
        System.arraycopy(bArr2, 32, bArr, i, 32);
        return 32;
    }

    @Override // android.support.v4.jg0, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411-2012-256";
    }

    @Override // android.support.v4.jg0, org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }
}

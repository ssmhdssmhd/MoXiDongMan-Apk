package android.support.v4;

import org.bouncycastle.crypto.DSA;

/* loaded from: classes3.dex */
public class l72 extends org.bouncycastle.crypto.tls.r {
    @Override // org.bouncycastle.crypto.tls.r
    /* renamed from: do */
    public DSA mo4281do(short s) {
        return new d40(new qi0(org.bouncycastle.crypto.tls.l0.m34214throws(s)));
    }

    @Override // org.bouncycastle.crypto.tls.r
    /* renamed from: if */
    public short mo4282if() {
        return (short) 3;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean isValidPublicKey(a4 a4Var) {
        return a4Var instanceof k50;
    }
}

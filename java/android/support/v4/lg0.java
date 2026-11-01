package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class lg0 extends jg0 {

    /* renamed from: const, reason: not valid java name */
    private static final byte[] f3650const = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public lg0() {
        super(f3650const);
    }

    public lg0(lg0 lg0Var) {
        super(f3650const);
        reset(lg0Var);
    }

    @Override // android.support.v4.jg0, org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new lg0(this);
    }

    @Override // android.support.v4.jg0, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411-2012-512";
    }

    @Override // android.support.v4.jg0, org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }
}

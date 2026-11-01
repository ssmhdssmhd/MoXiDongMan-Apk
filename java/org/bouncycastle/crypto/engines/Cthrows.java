package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows implements AsymmetricBlockCipher {

    /* renamed from: do, reason: not valid java name */
    private Cswitch f29775do;

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.f29775do.m33572for();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.f29775do.m33574new();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (this.f29775do == null) {
            this.f29775do = new Cswitch();
        }
        this.f29775do.m33575try(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        Cswitch cswitch = this.f29775do;
        if (cswitch != null) {
            return cswitch.m33573if(cswitch.m33570case(cswitch.m33571do(bArr, i, i2)));
        }
        throw new IllegalStateException("RSA engine not initialised");
    }
}

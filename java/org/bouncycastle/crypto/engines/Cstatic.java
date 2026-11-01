package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.xj1;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic implements AsymmetricBlockCipher {

    /* renamed from: do, reason: not valid java name */
    private Cswitch f29751do = new Cswitch();

    /* renamed from: for, reason: not valid java name */
    private BigInteger f29752for;

    /* renamed from: if, reason: not valid java name */
    private ck1 f29753if;

    /* renamed from: new, reason: not valid java name */
    private boolean f29754new;

    /* renamed from: do, reason: not valid java name */
    private BigInteger m33563do(BigInteger bigInteger) {
        return bigInteger.multiply(this.f29752for.modPow(this.f29753if.m955if(), this.f29753if.m954for())).mod(this.f29753if.m954for());
    }

    /* renamed from: if, reason: not valid java name */
    private BigInteger m33564if(BigInteger bigInteger) {
        BigInteger bigIntegerM954for = this.f29753if.m954for();
        return bigInteger.multiply(this.f29752for.modInverse(bigIntegerM954for)).mod(bigIntegerM954for);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.f29751do.m33572for();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.f29751do.m33574new();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        xj1 xj1Var = (xj1) cipherParameters;
        this.f29751do.m33575try(z, xj1Var.m9523if());
        this.f29754new = z;
        this.f29753if = xj1Var.m9523if();
        this.f29752for = xj1Var.m9522do();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        BigInteger bigIntegerM33571do = this.f29751do.m33571do(bArr, i, i2);
        return this.f29751do.m33573if(this.f29754new ? m33563do(bigIntegerM33571do) : m33564if(bigIntegerM33571do));
    }
}

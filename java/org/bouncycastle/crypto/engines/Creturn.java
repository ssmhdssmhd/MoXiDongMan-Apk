package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.dk1;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.engines.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn implements AsymmetricBlockCipher {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f29747new = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private Cswitch f29748do = new Cswitch();

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f29749for;

    /* renamed from: if, reason: not valid java name */
    private ck1 f29750if;

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.f29748do.m33572for();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.f29748do.m33574new();
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        this.f29748do.m33575try(z, cipherParameters);
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f29750if = (ck1) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            this.f29750if = (ck1) cipherParameters;
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f29749for = secureRandomM33599case;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        BigInteger bigIntegerM33570case;
        dk1 dk1Var;
        BigInteger bigIntegerM1385goto;
        if (this.f29750if == null) {
            throw new IllegalStateException("RSA engine not initialised");
        }
        BigInteger bigIntegerM33571do = this.f29748do.m33571do(bArr, i, i2);
        ck1 ck1Var = this.f29750if;
        if (!(ck1Var instanceof dk1) || (bigIntegerM1385goto = (dk1Var = (dk1) ck1Var).m1385goto()) == null) {
            bigIntegerM33570case = this.f29748do.m33570case(bigIntegerM33571do);
        } else {
            BigInteger bigIntegerM954for = dk1Var.m954for();
            BigInteger bigInteger = f29747new;
            BigInteger bigIntegerM36316try = Cdo.m36316try(bigInteger, bigIntegerM954for.subtract(bigInteger), this.f29749for);
            bigIntegerM33570case = this.f29748do.m33570case(bigIntegerM36316try.modPow(bigIntegerM1385goto, bigIntegerM954for).multiply(bigIntegerM33571do).mod(bigIntegerM954for)).multiply(bigIntegerM36316try.modInverse(bigIntegerM954for)).mod(bigIntegerM954for);
            if (!bigIntegerM33571do.equals(bigIntegerM33570case.modPow(bigIntegerM1385goto, bigIntegerM954for))) {
                throw new IllegalStateException("RSA engine faulty decryption/signing detected");
            }
        }
        return this.f29748do.m33573if(bigIntegerM33570case);
    }
}

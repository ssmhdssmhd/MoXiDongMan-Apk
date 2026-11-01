package org.bouncycastle.crypto.ec;

import android.support.v4.c50;
import android.support.v4.cc1;
import android.support.v4.e40;
import android.support.v4.ic0;
import android.support.v4.k50;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: org.bouncycastle.crypto.ec.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements ECPairTransform {

    /* renamed from: do, reason: not valid java name */
    private k50 f29455do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f29456if;

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m33368do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public void init(CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            if (!(cc1Var.m846do() instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new public key transform.");
            }
            this.f29455do = (k50) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            if (!(cipherParameters instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new public key transform.");
            }
            this.f29455do = (k50) cipherParameters;
            secureRandomM33599case = org.bouncycastle.crypto.Cfor.m33599case();
        }
        this.f29456if = secureRandomM33599case;
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public c50 transform(c50 c50Var) {
        k50 k50Var = this.f29455do;
        if (k50Var == null) {
            throw new IllegalStateException("ECNewPublicKeyTransform not initialised");
        }
        e40 e40VarM7258if = k50Var.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        ECMultiplier eCMultiplierM33368do = m33368do();
        BigInteger bigIntegerM33371do = Ctry.m33371do(bigIntegerM1650try, this.f29456if);
        Cnew[] cnewArr = {eCMultiplierM33368do.multiply(e40VarM7258if.m1648if(), bigIntegerM33371do), this.f29455do.m4252for().m35470package(bigIntegerM33371do).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), c50Var.m750for()))};
        e40VarM7258if.m1646do().m35420abstract(cnewArr);
        return new c50(cnewArr[0], cnewArr[1]);
    }
}

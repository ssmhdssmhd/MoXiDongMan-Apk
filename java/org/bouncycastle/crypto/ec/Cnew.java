package org.bouncycastle.crypto.ec;

import android.support.v4.c50;
import android.support.v4.cc1;
import android.support.v4.e40;
import android.support.v4.ic0;
import android.support.v4.k50;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: org.bouncycastle.crypto.ec.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements ECPairFactorTransform {

    /* renamed from: do, reason: not valid java name */
    private k50 f29459do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f29460for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f29461if;

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m33370do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.ec.ECPairFactorTransform
    public BigInteger getTransformValue() {
        return this.f29460for;
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public void init(CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            if (!(cc1Var.m846do() instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.f29459do = (k50) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            if (!(cipherParameters instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for new randomness transform.");
            }
            this.f29459do = (k50) cipherParameters;
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f29461if = secureRandomM33599case;
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public c50 transform(c50 c50Var) {
        k50 k50Var = this.f29459do;
        if (k50Var == null) {
            throw new IllegalStateException("ECNewRandomnessTransform not initialised");
        }
        e40 e40VarM7258if = k50Var.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        ECMultiplier eCMultiplierM33370do = m33370do();
        BigInteger bigIntegerM33371do = Ctry.m33371do(bigIntegerM1650try, this.f29461if);
        org.bouncycastle.math.ec.Cnew[] cnewArr = {eCMultiplierM33370do.multiply(e40VarM7258if.m1648if(), bigIntegerM33371do).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), c50Var.m751if())), this.f29459do.m4252for().m35470package(bigIntegerM33371do).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), c50Var.m750for()))};
        e40VarM7258if.m1646do().m35420abstract(cnewArr);
        this.f29460for = bigIntegerM33371do;
        return new c50(cnewArr[0], cnewArr[1]);
    }
}

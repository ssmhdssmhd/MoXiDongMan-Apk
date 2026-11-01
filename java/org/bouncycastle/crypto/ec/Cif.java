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
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: org.bouncycastle.crypto.ec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements ECEncryptor {

    /* renamed from: do, reason: not valid java name */
    private k50 f29457do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f29458if;

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m33369do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.ec.ECEncryptor
    public c50 encrypt(Cnew cnew) {
        k50 k50Var = this.f29457do;
        if (k50Var == null) {
            throw new IllegalStateException("ECElGamalEncryptor not initialised");
        }
        e40 e40VarM7258if = k50Var.m7258if();
        BigInteger bigIntegerM33371do = Ctry.m33371do(e40VarM7258if.m1650try(), this.f29458if);
        Cnew[] cnewArr = {m33369do().multiply(e40VarM7258if.m1648if(), bigIntegerM33371do), this.f29457do.m4252for().m35470package(bigIntegerM33371do).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), cnew))};
        e40VarM7258if.m1646do().m35420abstract(cnewArr);
        return new c50(cnewArr[0], cnewArr[1]);
    }

    @Override // org.bouncycastle.crypto.ec.ECEncryptor
    public void init(CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            if (!(cc1Var.m846do() instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for encryption.");
            }
            this.f29457do = (k50) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            if (!(cipherParameters instanceof k50)) {
                throw new IllegalArgumentException("ECPublicKeyParameters are required for encryption.");
            }
            this.f29457do = (k50) cipherParameters;
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f29458if = secureRandomM33599case;
    }
}

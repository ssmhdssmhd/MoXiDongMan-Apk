package org.bouncycastle.crypto.generators;

import android.support.v4.a4;
import android.support.v4.dr0;
import android.support.v4.g60;
import android.support.v4.l60;
import android.support.v4.m60;
import android.support.v4.o60;
import android.support.v4.ou;
import android.support.v4.y3;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;

/* renamed from: org.bouncycastle.crypto.generators.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private g60 f29886do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Ctry ctry = Ctry.f29887do;
        l60 l60VarM2589for = this.f29886do.m2589for();
        ou ouVar = new ou(l60VarM2589for.m4600for(), l60VarM2589for.m4599do(), null, l60VarM2589for.m4601if());
        BigInteger bigIntegerM33679do = ctry.m33679do(ouVar, this.f29886do.m1497do());
        return new y3((a4) new o60(ctry.m33680if(ouVar, bigIntegerM33679do), l60VarM2589for), (a4) new m60(bigIntegerM33679do, l60VarM2589for));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f29886do = (g60) dr0Var;
    }
}

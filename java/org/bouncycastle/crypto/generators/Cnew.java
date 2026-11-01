package org.bouncycastle.crypto.generators;

import android.support.v4.a4;
import android.support.v4.dr0;
import android.support.v4.ju;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.ru;
import android.support.v4.y3;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;

/* renamed from: org.bouncycastle.crypto.generators.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private ju f29882do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Ctry ctry = Ctry.f29887do;
        ou ouVarM4109for = this.f29882do.m4109for();
        BigInteger bigIntegerM33679do = ctry.m33679do(ouVarM4109for, this.f29882do.m1497do());
        return new y3((a4) new ru(ctry.m33680if(ouVarM4109for, bigIntegerM33679do), ouVarM4109for), (a4) new pu(bigIntegerM33679do, ouVarM4109for));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f29882do = (ju) dr0Var;
    }
}

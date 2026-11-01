package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.dg0;
import android.support.v4.wf0;
import android.support.v4.yf0;
import android.support.v4.zf0;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends Cif {

    /* renamed from: for, reason: not valid java name */
    public int f31184for = 1024;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f31185if;

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
        zf0 zf0Var = new zf0();
        SecureRandom secureRandom = this.f31185if;
        if (secureRandom != null) {
            zf0Var.m10172if(this.f31184for, 2, secureRandom);
        } else {
            zf0Var.m10172if(this.f31184for, 2, Cfor.m33599case());
        }
        yf0 yf0VarM10171do = zf0Var.m10171do();
        try {
            AlgorithmParameters algorithmParametersM34749do = m34749do("GOST3410");
            algorithmParametersM34749do.init(new wf0(new dg0(yf0VarM10171do.m9829if(), yf0VarM10171do.m9828for(), yf0VarM10171do.m9827do())));
            return algorithmParametersM34749do;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        this.f31184for = i;
        this.f31185if = secureRandom;
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for GOST3410 parameter generation.");
    }
}

package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.ff1;
import android.support.v4.gv;
import android.support.v4.hv;
import android.support.v4.iv;
import android.support.v4.yp1;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif {

    /* renamed from: for, reason: not valid java name */
    public int f31032for = 2048;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f31033if;

    /* renamed from: new, reason: not valid java name */
    public gv f31034new;

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException {
        iv ivVar = this.f31032for <= 1024 ? new iv() : new iv(new yp1());
        if (this.f31033if == null) {
            this.f31033if = Cfor.m33599case();
        }
        int iM2267do = ff1.m2267do(this.f31032for);
        int i = this.f31032for;
        if (i == 1024) {
            gv gvVar = new gv(1024, 160, iM2267do, this.f31033if);
            this.f31034new = gvVar;
            ivVar.m3602class(gvVar);
        } else if (i > 1024) {
            gv gvVar2 = new gv(i, 256, iM2267do, this.f31033if);
            this.f31034new = gvVar2;
            ivVar.m3602class(gvVar2);
        } else {
            ivVar.m3601catch(i, iM2267do, this.f31033if);
        }
        hv hvVarM3603new = ivVar.m3603new();
        try {
            AlgorithmParameters algorithmParametersM34749do = m34749do("DSA");
            algorithmParametersM34749do.init(new DSAParameterSpec(hvVarM3603new.m3129if(), hvVarM3603new.m3128for(), hvVarM3603new.m3127do()));
            return algorithmParametersM34749do;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        if (i < 512 || i > 3072) {
            throw new InvalidParameterException("strength must be from 512 - 3072");
        }
        if (i <= 1024 && i % 64 != 0) {
            throw new InvalidParameterException("strength must be a multiple of 64 below 1024 bits.");
        }
        if (i > 1024 && i % 1024 != 0) {
            throw new InvalidParameterException("strength must be a multiple of 1024 above 1024 bits.");
        }
        this.f31032for = i;
        this.f31033if = secureRandom;
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
    }
}

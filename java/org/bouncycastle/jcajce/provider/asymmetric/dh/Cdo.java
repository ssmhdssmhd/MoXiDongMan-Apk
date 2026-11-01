package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.ff1;
import android.support.v4.ou;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.generators.Celse;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cif {

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f31004if;

    /* renamed from: for, reason: not valid java name */
    public int f31003for = 2048;

    /* renamed from: new, reason: not valid java name */
    private int f31005new = 0;

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException, IllegalArgumentException {
        Celse celse = new Celse();
        int iM2267do = ff1.m2267do(this.f31003for);
        SecureRandom secureRandom = this.f31004if;
        if (secureRandom != null) {
            celse.m33668if(this.f31003for, iM2267do, secureRandom);
        } else {
            celse.m33668if(this.f31003for, iM2267do, Cfor.m33599case());
        }
        ou ouVarM33667do = celse.m33667do();
        try {
            AlgorithmParameters algorithmParametersM34749do = m34749do("DH");
            algorithmParametersM34749do.init(new DHParameterSpec(ouVarM33667do.m5757case(), ouVarM33667do.m5761if(), this.f31005new));
            return algorithmParametersM34749do;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        this.f31003for = i;
        this.f31004if = secureRandom;
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
        DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
        this.f31003for = dHGenParameterSpec.getPrimeSize();
        this.f31005new = dHGenParameterSpec.getExponentSize();
        this.f31004if = secureRandom;
    }
}

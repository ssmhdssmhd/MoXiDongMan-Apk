package android.support.v4;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.generators.Cbreak;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cif;

/* loaded from: classes3.dex */
public class c1 extends Cif {

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f575if;

    /* renamed from: for, reason: not valid java name */
    public int f574for = 1024;

    /* renamed from: new, reason: not valid java name */
    private int f576new = 0;

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public AlgorithmParameters engineGenerateParameters() throws InvalidParameterSpecException, IllegalArgumentException {
        Cbreak cbreak = new Cbreak();
        SecureRandom secureRandom = this.f575if;
        if (secureRandom != null) {
            cbreak.m33617if(this.f574for, 20, secureRandom);
        } else {
            cbreak.m33617if(this.f574for, 20, Cfor.m33599case());
        }
        l60 l60VarM33616do = cbreak.m33616do();
        try {
            AlgorithmParameters algorithmParametersM34749do = m34749do("ElGamal");
            algorithmParametersM34749do.init(new DHParameterSpec(l60VarM33616do.m4600for(), l60VarM33616do.m4599do(), this.f576new));
            return algorithmParametersM34749do;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        this.f574for = i;
        this.f575if = secureRandom;
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
        }
        DHGenParameterSpec dHGenParameterSpec = (DHGenParameterSpec) algorithmParameterSpec;
        this.f574for = dHGenParameterSpec.getPrimeSize();
        this.f576new = dHGenParameterSpec.getExponentSize();
        this.f575if = secureRandom;
    }
}

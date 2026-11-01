package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.generators.Cbreak;
import org.bouncycastle.crypto.generators.Cthis;
import org.bouncycastle.jce.provider.Cdo;

/* loaded from: classes3.dex */
public class er0 extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    public boolean f1567case;

    /* renamed from: do, reason: not valid java name */
    public g60 f1568do;

    /* renamed from: for, reason: not valid java name */
    public int f1569for;

    /* renamed from: if, reason: not valid java name */
    public Cthis f1570if;

    /* renamed from: new, reason: not valid java name */
    public int f1571new;

    /* renamed from: try, reason: not valid java name */
    public SecureRandom f1572try;

    public er0() {
        super("ElGamal");
        this.f1570if = new Cthis();
        this.f1569for = 1024;
        this.f1571new = 20;
        this.f1572try = Cfor.m33599case();
        this.f1567case = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        g60 g60Var;
        if (!this.f1567case) {
            DHParameterSpec dHDefaultParameters = Cdo.CONFIGURATION.getDHDefaultParameters(this.f1569for);
            if (dHDefaultParameters != null) {
                g60Var = new g60(this.f1572try, new l60(dHDefaultParameters.getP(), dHDefaultParameters.getG(), dHDefaultParameters.getL()));
            } else {
                Cbreak cbreak = new Cbreak();
                cbreak.m33617if(this.f1569for, this.f1571new, this.f1572try);
                g60Var = new g60(this.f1572try, cbreak.m33616do());
            }
            this.f1568do = g60Var;
            this.f1570if.init(this.f1568do);
            this.f1567case = true;
        }
        y3 y3VarGenerateKeyPair = this.f1570if.generateKeyPair();
        return new KeyPair(new s5((o60) y3VarGenerateKeyPair.m9727if()), new r5((m60) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f1569for = i;
        this.f1572try = secureRandom;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        g60 g60Var;
        boolean z = algorithmParameterSpec instanceof k60;
        if (!z && !(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec or an ElGamalParameterSpec");
        }
        if (z) {
            k60 k60Var = (k60) algorithmParameterSpec;
            g60Var = new g60(secureRandom, new l60(k60Var.m4265if(), k60Var.m4264do()));
        } else {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            g60Var = new g60(secureRandom, new l60(dHParameterSpec.getP(), dHParameterSpec.getG(), dHParameterSpec.getL()));
        }
        this.f1568do = g60Var;
        this.f1570if.init(this.f1568do);
        this.f1567case = true;
    }
}

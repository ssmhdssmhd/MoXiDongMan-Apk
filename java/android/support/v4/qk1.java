package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public class qk1 extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    public ok1 f5462do;

    /* renamed from: for, reason: not valid java name */
    public int f5463for;

    /* renamed from: if, reason: not valid java name */
    public pk1 f5464if;

    /* renamed from: new, reason: not valid java name */
    public SecureRandom f5465new;

    /* renamed from: try, reason: not valid java name */
    public boolean f5466try;

    public qk1() {
        super("Rainbow");
        this.f5464if = new pk1();
        this.f5463for = 1024;
        this.f5465new = Cfor.m33599case();
        this.f5466try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f5466try) {
            ok1 ok1Var = new ok1(this.f5465new, new uk1(new tk1().m7989new()));
            this.f5462do = ok1Var;
            this.f5464if.init(ok1Var);
            this.f5466try = true;
        }
        y3 y3VarGenerateKeyPair = this.f5464if.generateKeyPair();
        return new KeyPair(new f6((zk1) y3VarGenerateKeyPair.m9727if()), new e6((wk1) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f5463for = i;
        this.f5465new = secureRandom;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof tk1)) {
            throw new InvalidAlgorithmParameterException("parameter object not a RainbowParameterSpec");
        }
        ok1 ok1Var = new ok1(secureRandom, new uk1(((tk1) algorithmParameterSpec).m7989new()));
        this.f5462do = ok1Var;
        this.f5464if.init(ok1Var);
        this.f5466try = true;
    }
}

package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.pqc.crypto.newhope.Ctry;

/* loaded from: classes3.dex */
public class p11 extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    public Ctry f4823do;

    /* renamed from: for, reason: not valid java name */
    public boolean f4824for;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f4825if;

    public p11() {
        super("NH");
        this.f4823do = new Ctry();
        this.f4825if = Cfor.m33599case();
        this.f4824for = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f4824for) {
            this.f4823do.init(new dr0(this.f4825if, 1024));
            this.f4824for = true;
        }
        y3 y3VarGenerateKeyPair = this.f4823do.generateKeyPair();
        return new KeyPair(new c6((s11) y3VarGenerateKeyPair.m9727if()), new b6((r11) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        if (i != 1024) {
            throw new IllegalArgumentException("strength must be 1024 bits");
        }
        this.f4823do.init(new dr0(secureRandom, 1024));
        this.f4824for = true;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("parameter object not recognised");
    }
}

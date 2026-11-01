package android.support.v4;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.pqc.crypto.sphincs.Ctry;

/* loaded from: classes3.dex */
public class x02 extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    public Ccatch f7738do;

    /* renamed from: for, reason: not valid java name */
    public Ctry f7739for;

    /* renamed from: if, reason: not valid java name */
    public xq1 f7740if;

    /* renamed from: new, reason: not valid java name */
    public SecureRandom f7741new;

    /* renamed from: try, reason: not valid java name */
    public boolean f7742try;

    public x02() {
        super("SPHINCS256");
        this.f7738do = NISTObjectIdentifiers.id_sha512_256;
        this.f7739for = new Ctry();
        this.f7741new = Cfor.m33599case();
        this.f7742try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f7742try) {
            xq1 xq1Var = new xq1(this.f7741new, new cq1(256));
            this.f7740if = xq1Var;
            this.f7739for.init(xq1Var);
            this.f7742try = true;
        }
        y3 y3VarGenerateKeyPair = this.f7739for.generateKeyPair();
        return new KeyPair(new h6(this.f7738do, (br1) y3VarGenerateKeyPair.m9727if()), new g6(this.f7738do, (ar1) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        xq1 xq1Var;
        if (!(algorithmParameterSpec instanceof wq1)) {
            throw new InvalidAlgorithmParameterException("parameter object not a SPHINCS256KeyGenParameterSpec");
        }
        wq1 wq1Var = (wq1) algorithmParameterSpec;
        if (!wq1Var.m9262do().equals(wq1.f7677if)) {
            if (wq1Var.m9262do().equals("SHA3-256")) {
                this.f7738do = NISTObjectIdentifiers.id_sha3_256;
                xq1Var = new xq1(secureRandom, new aq1(256));
            }
            this.f7739for.init(this.f7740if);
            this.f7742try = true;
        }
        this.f7738do = NISTObjectIdentifiers.id_sha512_256;
        xq1Var = new xq1(secureRandom, new cq1(256));
        this.f7740if = xq1Var;
        this.f7739for.init(this.f7740if);
        this.f7742try = true;
    }
}

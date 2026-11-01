package android.support.v4;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ProviderConfiguration;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class fr0 extends KeyPairGenerator {

    /* renamed from: case, reason: not valid java name */
    public boolean f1964case;

    /* renamed from: do, reason: not valid java name */
    public Object f1965do;

    /* renamed from: for, reason: not valid java name */
    public String f1966for;

    /* renamed from: if, reason: not valid java name */
    public r40 f1967if;

    /* renamed from: new, reason: not valid java name */
    public q40 f1968new;

    /* renamed from: try, reason: not valid java name */
    public SecureRandom f1969try;

    public fr0() {
        super("DSTU4145");
        this.f1965do = null;
        this.f1967if = new qv();
        this.f1966for = "DSTU4145";
        this.f1969try = null;
        this.f1964case = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f1964case) {
            throw new IllegalStateException("DSTU Key Pair Generator not initialised");
        }
        y3 y3VarGenerateKeyPair = this.f1967if.generateKeyPair();
        k50 k50Var = (k50) y3VarGenerateKeyPair.m9727if();
        h50 h50Var = (h50) y3VarGenerateKeyPair.m9726do();
        Object obj = this.f1965do;
        if (obj instanceof d50) {
            d50 d50Var = (d50) obj;
            q5 q5Var = new q5(this.f1966for, k50Var, d50Var);
            return new KeyPair(q5Var, new p5(this.f1966for, h50Var, q5Var, d50Var));
        }
        if (obj == null) {
            return new KeyPair(new q5(this.f1966for, k50Var), new p5(this.f1966for, h50Var));
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        q5 q5Var2 = new q5(this.f1966for, k50Var, eCParameterSpec);
        return new KeyPair(q5Var2, new p5(this.f1966for, h50Var, q5Var2, eCParameterSpec));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        this.f1969try = secureRandom;
        Object obj = this.f1965do;
        if (obj == null) {
            throw new InvalidParameterException("unknown key size.");
        }
        try {
            initialize((ECGenParameterSpec) obj, secureRandom);
        } catch (InvalidAlgorithmParameterException unused) {
            throw new InvalidParameterException("key size not configurable.");
        }
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        q40 q40Var;
        if (!(algorithmParameterSpec instanceof d50)) {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                ECParameterSpec eCParameterSpec = (ECParameterSpec) algorithmParameterSpec;
                this.f1965do = algorithmParameterSpec;
                Cif cifM7705if = t30.m7705if(eCParameterSpec.getCurve());
                Cnew cnewM7697case = t30.m7697case(cifM7705if, eCParameterSpec.getGenerator(), false);
                if (eCParameterSpec instanceof sv) {
                    this.f1968new = new q40(new tv(new e40(cifM7705if, cnewM7697case, eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), ((sv) eCParameterSpec).m7611do()), secureRandom);
                } else {
                    this.f1968new = new q40(new e40(cifM7705if, cnewM7697case, eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor())), secureRandom);
                }
                this.f1967if.init(this.f1968new);
            } else {
                boolean z = algorithmParameterSpec instanceof ECGenParameterSpec;
                if (!z && !(algorithmParameterSpec instanceof w40)) {
                    if (algorithmParameterSpec == null) {
                        ProviderConfiguration providerConfiguration = Cdo.CONFIGURATION;
                        if (providerConfiguration.getEcImplicitlyCa() != null) {
                            d50 ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
                            this.f1965do = algorithmParameterSpec;
                            q40Var = new q40(new e40(ecImplicitlyCa.m1142do(), ecImplicitlyCa.m1144if(), ecImplicitlyCa.m1145new(), ecImplicitlyCa.m1143for()), secureRandom);
                        }
                    }
                    if (algorithmParameterSpec == null && Cdo.CONFIGURATION.getEcImplicitlyCa() == null) {
                        throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                    }
                    throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
                }
                String name = z ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((w40) algorithmParameterSpec).m9047do();
                e40 e40VarM7144do = rv.m7144do(new Ccatch(name));
                if (e40VarM7144do == null) {
                    throw new InvalidAlgorithmParameterException("unknown curve name: " + name);
                }
                y40 y40Var = new y40(name, e40VarM7144do.m1646do(), e40VarM7144do.m1648if(), e40VarM7144do.m1650try(), e40VarM7144do.m1647for(), e40VarM7144do.m1645case());
                this.f1965do = y40Var;
                y40 y40Var2 = y40Var;
                Cif cifM7705if2 = t30.m7705if(y40Var2.getCurve());
                q40 q40Var2 = new q40(new e40(cifM7705if2, t30.m7697case(cifM7705if2, y40Var2.getGenerator(), false), y40Var2.getOrder(), BigInteger.valueOf(y40Var2.getCofactor())), secureRandom);
                this.f1968new = q40Var2;
                this.f1967if.init(q40Var2);
            }
            this.f1964case = true;
        }
        d50 d50Var = (d50) algorithmParameterSpec;
        this.f1965do = algorithmParameterSpec;
        q40Var = new q40(new e40(d50Var.m1142do(), d50Var.m1144if(), d50Var.m1145new(), d50Var.m1143for()), secureRandom);
        this.f1968new = q40Var;
        this.f1967if.init(q40Var);
        this.f1964case = true;
    }
}

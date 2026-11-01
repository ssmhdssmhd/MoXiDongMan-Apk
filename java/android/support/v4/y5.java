package android.support.v4;

import java.io.IOException;
import java.security.PrivateKey;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class y5 implements CipherParameters, PrivateKey {
    private static final long serialVersionUID = 1;
    private gz0 params;

    public y5(gz0 gz0Var) {
        this.params = gz0Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof y5)) {
            return false;
        }
        y5 y5Var = (y5) obj;
        return getN() == y5Var.getN() && getK() == y5Var.getK() && getField().equals(y5Var.getField()) && getGoppaPoly().equals(y5Var.getGoppaPoly()) && getSInv().equals(y5Var.getSInv()) && getP1().equals(y5Var.getP1()) && getP2().equals(y5Var.getP2());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Cdo(new b1(PQCObjectIdentifiers.mcEliece), new fz0(this.params.m2832else(), this.params.m2830case(), this.params.m2833for(), this.params.m2835new(), this.params.m2834goto(), this.params.m2836this(), this.params.m2831catch())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public se0 getField() {
        return this.params.m2833for();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public pe1 getGoppaPoly() {
        return this.params.m2835new();
    }

    public qe0 getH() {
        return this.params.m2837try();
    }

    public int getK() {
        return this.params.m2830case();
    }

    public a4 getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.m2832else();
    }

    public fd1 getP1() {
        return this.params.m2834goto();
    }

    public fd1 getP2() {
        return this.params.m2836this();
    }

    public pe1[] getQInv() {
        return this.params.m2829break();
    }

    public qe0 getSInv() {
        return this.params.m2831catch();
    }

    public int hashCode() {
        return (((((((((((this.params.m2830case() * 37) + this.params.m2832else()) * 37) + this.params.m2833for().hashCode()) * 37) + this.params.m2835new().hashCode()) * 37) + this.params.m2834goto().hashCode()) * 37) + this.params.m2836this().hashCode()) * 37) + this.params.m2831catch().hashCode();
    }
}

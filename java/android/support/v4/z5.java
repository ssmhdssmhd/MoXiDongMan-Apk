package android.support.v4;

import java.io.IOException;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class z5 implements PublicKey {
    private static final long serialVersionUID = 1;
    private iz0 params;

    public z5(iz0 iz0Var) {
        this.params = iz0Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z5)) {
            return false;
        }
        z5 z5Var = (z5) obj;
        return this.params.m3642try() == z5Var.getN() && this.params.m3639case() == z5Var.getT() && this.params.m3640for().equals(z5Var.getG());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Ctry(new b1(PQCObjectIdentifiers.mcEliece), new hz0(this.params.m3642try(), this.params.m3639case(), this.params.m3640for())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public qe0 getG() {
        return this.params.m3640for();
    }

    public int getK() {
        return this.params.m3641new();
    }

    public a4 getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.m3642try();
    }

    public int getT() {
        return this.params.m3639case();
    }

    public int hashCode() {
        return ((this.params.m3642try() + (this.params.m3639case() * 37)) * 37) + this.params.m3640for().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.m3642try() + "\n") + " error correction capability: " + this.params.m3639case() + "\n") + " generator matrix           : " + this.params.m3640for();
    }
}

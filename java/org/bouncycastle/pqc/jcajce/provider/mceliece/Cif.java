package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.qe0;
import android.support.v4.yy0;
import android.support.v4.zy0;
import java.io.IOException;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements CipherParameters, PublicKey {
    private static final long serialVersionUID = 1;
    private zy0 params;

    public Cif(zy0 zy0Var) {
        this.params = zy0Var;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.params.m10330try() == cif.getN() && this.params.m10327case() == cif.getT() && this.params.m10328for().equals(cif.getG());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Ctry(new b1(PQCObjectIdentifiers.mcElieceCca2), new yy0(this.params.m10330try(), this.params.m10327case(), this.params.m10328for(), Cconst.m36092do(this.params.m8159if()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public qe0 getG() {
        return this.params.m10328for();
    }

    public int getK() {
        return this.params.m10329new();
    }

    public a4 getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.m10330try();
    }

    public int getT() {
        return this.params.m10327case();
    }

    public int hashCode() {
        return ((this.params.m10330try() + (this.params.m10327case() * 37)) * 37) + this.params.m10328for().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.m10330try() + "\n") + " error correction capability: " + this.params.m10327case() + "\n") + " generator matrix           : " + this.params.m10328for().toString();
    }
}

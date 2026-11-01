package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.fd1;
import android.support.v4.pe1;
import android.support.v4.qe0;
import android.support.v4.se0;
import android.support.v4.wy0;
import android.support.v4.xy0;
import java.io.IOException;
import java.security.PrivateKey;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements PrivateKey {
    private static final long serialVersionUID = 1;
    private xy0 params;

    public Cdo(xy0 xy0Var) {
        this.params = xy0Var;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        return getN() == cdo.getN() && getK() == cdo.getK() && getField().equals(cdo.getField()) && getGoppaPoly().equals(cdo.getGoppaPoly()) && getP().equals(cdo.getP()) && getH().equals(cdo.getH());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new org.bouncycastle.asn1.pkcs.Cdo(new b1(PQCObjectIdentifiers.mcElieceCca2), new wy0(getN(), getK(), getField(), getGoppaPoly(), getP(), Cconst.m36092do(this.params.m8159if()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public se0 getField() {
        return this.params.m9622for();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public pe1 getGoppaPoly() {
        return this.params.m9624new();
    }

    public qe0 getH() {
        return this.params.m9626try();
    }

    public int getK() {
        return this.params.m9620case();
    }

    public a4 getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.m9621else();
    }

    public fd1 getP() {
        return this.params.m9623goto();
    }

    public pe1[] getQInv() {
        return this.params.m9625this();
    }

    public int getT() {
        return this.params.m9624new().m5983final();
    }

    public int hashCode() {
        return (((((((((this.params.m9620case() * 37) + this.params.m9621else()) * 37) + this.params.m9622for().hashCode()) * 37) + this.params.m9624new().hashCode()) * 37) + this.params.m9623goto().hashCode()) * 37) + this.params.m9626try().hashCode();
    }
}

package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.b1;
import android.support.v4.ck1;
import android.support.v4.gk1;
import android.support.v4.kk1;
import android.support.v4.nr0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements RSAPublicKey {

    /* renamed from: if, reason: not valid java name */
    private static final b1 f31225if = new b1(PKCSObjectIdentifiers.rsaEncryption, h.f29080do);
    public static final long serialVersionUID = 2675817738516720772L;

    /* renamed from: do, reason: not valid java name */
    private transient b1 f31226do;
    private BigInteger modulus;
    private BigInteger publicExponent;

    public Cnew(ck1 ck1Var) {
        this.f31226do = f31225if;
        this.modulus = ck1Var.m954for();
        this.publicExponent = ck1Var.m955if();
    }

    public Cnew(RSAPublicKey rSAPublicKey) {
        this.f31226do = f31225if;
        this.modulus = rSAPublicKey.getModulus();
        this.publicExponent = rSAPublicKey.getPublicExponent();
    }

    public Cnew(RSAPublicKeySpec rSAPublicKeySpec) {
        this.f31226do = f31225if;
        this.modulus = rSAPublicKeySpec.getModulus();
        this.publicExponent = rSAPublicKeySpec.getPublicExponent();
    }

    public Cnew(Ctry ctry) {
        m34722do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m34722do(Ctry ctry) {
        try {
            gk1 gk1VarM2719new = gk1.m2719new(ctry.m33293break());
            this.f31226do = ctry.m33295new();
            this.modulus = gk1VarM2719new.m2721case();
            this.publicExponent = gk1VarM2719new.m2722else();
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        try {
            this.f31226do = b1.m418try(objectInputStream.readObject());
        } catch (Exception unused) {
            this.f31226do = f31225if;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.f31226do.equals(f31225if)) {
            return;
        }
        objectOutputStream.writeObject(this.f31226do.getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPublicKey)) {
            return false;
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
        return getModulus().equals(rSAPublicKey.getModulus()) && getPublicExponent().equals(rSAPublicKey.getPublicExponent());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "RSA";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return nr0.m5357for(this.f31226do, new gk1(getModulus(), getPublicExponent()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override // java.security.interfaces.RSAPublicKey
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("RSA Public Key [");
        stringBuffer.append(kk1.m4431if(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(kk1.m4429do(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("        modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(strM36360new);
        stringBuffer.append("public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}

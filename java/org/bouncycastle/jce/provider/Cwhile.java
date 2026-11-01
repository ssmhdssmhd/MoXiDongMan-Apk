package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.ck1;
import android.support.v4.ek1;
import android.support.v4.nr0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jce.provider.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile implements RSAPrivateKey, PKCS12BagAttributeCarrier {

    /* renamed from: if, reason: not valid java name */
    private static BigInteger f31707if = BigInteger.valueOf(0);
    public static final long serialVersionUID = 5110188922551353628L;

    /* renamed from: do, reason: not valid java name */
    private transient Cthis f31708do = new Cthis();
    public BigInteger modulus;
    public BigInteger privateExponent;

    public Cwhile() {
    }

    public Cwhile(ck1 ck1Var) {
        this.modulus = ck1Var.m954for();
        this.privateExponent = ck1Var.m955if();
    }

    public Cwhile(RSAPrivateKey rSAPrivateKey) {
        this.modulus = rSAPrivateKey.getModulus();
        this.privateExponent = rSAPrivateKey.getPrivateExponent();
    }

    public Cwhile(RSAPrivateKeySpec rSAPrivateKeySpec) {
        this.modulus = rSAPrivateKeySpec.getModulus();
        this.privateExponent = rSAPrivateKeySpec.getPrivateExponent();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.modulus = (BigInteger) objectInputStream.readObject();
        Cthis cthis = new Cthis();
        this.f31708do = cthis;
        cthis.m34751for(objectInputStream);
        this.privateExponent = (BigInteger) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.modulus);
        this.f31708do.m34754try(objectOutputStream);
        objectOutputStream.writeObject(this.privateExponent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RSAPrivateKey)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) obj;
        return getModulus().equals(rSAPrivateKey.getModulus()) && getPrivateExponent().equals(rSAPrivateKey.getPrivateExponent());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "RSA";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31708do.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31708do.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        b1 b1Var = new b1(PKCSObjectIdentifiers.rsaEncryption, h.f29080do);
        BigInteger modulus = getModulus();
        BigInteger bigInteger = f31707if;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = f31707if;
        return nr0.m5356do(b1Var, new ek1(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override // java.security.interfaces.RSAPrivateKey
    public BigInteger getPrivateExponent() {
        return this.privateExponent;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPrivateExponent().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31708do.setBagAttribute(ccatch, aSN1Encodable);
    }
}

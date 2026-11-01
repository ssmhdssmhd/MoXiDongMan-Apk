package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.b1;
import android.support.v4.fv;
import android.support.v4.jv;
import android.support.v4.nr0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements DSAPrivateKey, PKCS12BagAttributeCarrier {
    private static final long serialVersionUID = -4677259546958385734L;

    /* renamed from: do, reason: not valid java name */
    private transient DSAParams f31035do;

    /* renamed from: if, reason: not valid java name */
    private transient Cthis f31036if = new Cthis();
    private BigInteger x;

    public Cfor() {
    }

    public Cfor(jv jvVar) {
        this.x = jvVar.m4110for();
        this.f31035do = new DSAParameterSpec(jvVar.m2025if().m3129if(), jvVar.m2025if().m3128for(), jvVar.m2025if().m3127do());
    }

    public Cfor(DSAPrivateKey dSAPrivateKey) {
        this.x = dSAPrivateKey.getX();
        this.f31035do = dSAPrivateKey.getParams();
    }

    public Cfor(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.x = dSAPrivateKeySpec.getX();
        this.f31035do = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }

    public Cfor(Cdo cdo) throws IOException {
        fv fvVarM2433try = fv.m2433try(cdo.m33104else().m419else());
        this.x = ((Cgoto) cdo.m33102catch()).m33044final();
        this.f31035do = new DSAParameterSpec(fvVarM2433try.m2434else(), fvVarM2433try.m2435goto(), fvVarM2433try.m2436new());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f31035do = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.f31036if = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f31035do.getP());
        objectOutputStream.writeObject(this.f31035do.getQ());
        objectOutputStream.writeObject(this.f31035do.getG());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPrivateKey)) {
            return false;
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
        return getX().equals(dSAPrivateKey.getX()) && getParams().getG().equals(dSAPrivateKey.getParams().getG()) && getParams().getP().equals(dSAPrivateKey.getParams().getP()) && getParams().getQ().equals(dSAPrivateKey.getParams().getQ());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DSA";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31036if.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31036if.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return nr0.m5356do(new b1(X9ObjectIdentifiers.id_dsa, new fv(this.f31035do.getP(), this.f31035do.getQ(), this.f31035do.getG()).toASN1Primitive()), new Cgoto(getX()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.DSAKey
    public DSAParams getParams() {
        return this.f31035do;
    }

    @Override // java.security.interfaces.DSAPrivateKey
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31036if.setBagAttribute(ccatch, aSN1Encodable);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = org.bouncycastle.util.Cfor.m36360new();
        BigInteger bigIntegerModPow = getParams().getG().modPow(this.x, getParams().getP());
        stringBuffer.append("DSA Private Key [");
        stringBuffer.append(Ccase.m34646do(bigIntegerModPow, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("            Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}

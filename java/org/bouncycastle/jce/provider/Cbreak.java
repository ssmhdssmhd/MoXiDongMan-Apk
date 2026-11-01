package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.fu;
import android.support.v4.nu;
import android.support.v4.pu;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jce.provider.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak implements DHPrivateKey, PKCS12BagAttributeCarrier {
    public static final long serialVersionUID = 311058815616901812L;
    private PKCS12BagAttributeCarrier attrCarrier = new Cthis();
    private DHParameterSpec dhSpec;
    private Cdo info;
    public BigInteger x;

    public Cbreak() {
    }

    public Cbreak(pu puVar) {
        this.x = puVar.m6221for();
        this.dhSpec = new DHParameterSpec(puVar.m4512if().m5757case(), puVar.m4512if().m5761if(), puVar.m4512if().m5762new());
    }

    public Cbreak(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.dhSpec = dHPrivateKey.getParams();
    }

    public Cbreak(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.dhSpec = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public Cbreak(Cdo cdo) throws IOException {
        DHParameterSpec dHParameterSpec;
        Csuper csuperM33129catch = Csuper.m33129catch(cdo.m33104else().m419else());
        Cgoto cgotoM33040catch = Cgoto.m33040catch(cdo.m33102catch());
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        this.info = cdo;
        this.x = cgotoM33040catch.m33044final();
        if (ccatchM420new.equals(PKCSObjectIdentifiers.dhKeyAgreement)) {
            nu nuVarM5370try = nu.m5370try(csuperM33129catch);
            dHParameterSpec = nuVarM5370try.m5371case() != null ? new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), nuVarM5370try.m5371case().intValue()) : new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new());
        } else {
            if (!ccatchM420new.equals(X9ObjectIdentifiers.dhpublicnumber)) {
                throw new IllegalArgumentException("unknown algorithm type: " + ccatchM420new);
            }
            fu fuVarM2409try = fu.m2409try(csuperM33129catch);
            dHParameterSpec = new DHParameterSpec(fuVarM2409try.m2414this().m33044final(), fuVarM2409try.m2413new().m33044final());
        }
        this.dhSpec = dHParameterSpec;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.x = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.attrCarrier.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            Cdo cdo = this.info;
            return cdo != null ? cdo.m32764do(ASN1Encoding.DER) : new Cdo(new b1(PKCSObjectIdentifiers.dhKeyAgreement, new nu(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new Cgoto(getX())).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.x;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.setBagAttribute(ccatch, aSN1Encodable);
    }
}

package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.j60;
import android.support.v4.k60;
import android.support.v4.m60;
import android.support.v4.n60;
import android.support.v4.nr0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jce.provider.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal implements ElGamalPrivateKey, DHPrivateKey, PKCS12BagAttributeCarrier {
    public static final long serialVersionUID = 4819350091141529678L;
    private Cthis attrCarrier = new Cthis();
    public k60 elSpec;
    public BigInteger x;

    public Cfinal() {
    }

    public Cfinal(m60 m60Var) {
        this.x = m60Var.m4853for();
        this.elSpec = new k60(m60Var.m2951if().m4600for(), m60Var.m2951if().m4599do());
    }

    public Cfinal(n60 n60Var) {
        this.x = n60Var.m5107if();
        this.elSpec = new k60(n60Var.m3280do().m4265if(), n60Var.m3280do().m4264do());
    }

    public Cfinal(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.elSpec = new k60(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    public Cfinal(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.elSpec = new k60(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public Cfinal(Cdo cdo) throws IOException {
        j60 j60VarM3733try = j60.m3733try(cdo.m33104else().m419else());
        this.x = Cgoto.m33040catch(cdo.m33102catch()).m33044final();
        this.elSpec = new k60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new());
    }

    public Cfinal(ElGamalPrivateKey elGamalPrivateKey) {
        this.x = elGamalPrivateKey.getX();
        this.elSpec = elGamalPrivateKey.getParameters();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.x = (BigInteger) objectInputStream.readObject();
        this.elSpec = new k60((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.elSpec.m4265if());
        objectOutputStream.writeObject(this.elSpec.m4264do());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
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
        return nr0.m5356do(new b1(OIWObjectIdentifiers.elGamalAlgorithm, new j60(this.elSpec.m4265if(), this.elSpec.m4264do())), new Cgoto(getX()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalKey
    public k60 getParameters() {
        return this.elSpec;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.m4265if(), this.elSpec.m4264do());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPrivateKey, javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.x;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.setBagAttribute(ccatch, aSN1Encodable);
    }
}

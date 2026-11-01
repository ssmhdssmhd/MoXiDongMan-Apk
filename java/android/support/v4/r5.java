package android.support.v4;

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
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* loaded from: classes3.dex */
public class r5 implements ElGamalPrivateKey, DHPrivateKey, PKCS12BagAttributeCarrier {
    public static final long serialVersionUID = 4819350091141529678L;

    /* renamed from: do, reason: not valid java name */
    private transient k60 f5654do;

    /* renamed from: if, reason: not valid java name */
    private transient Cthis f5655if = new Cthis();
    private BigInteger x;

    public r5() {
    }

    public r5(m60 m60Var) {
        this.x = m60Var.m4853for();
        this.f5654do = new k60(m60Var.m2951if().m4600for(), m60Var.m2951if().m4599do());
    }

    public r5(n60 n60Var) {
        this.x = n60Var.m5107if();
        this.f5654do = new k60(n60Var.m3280do().m4265if(), n60Var.m3280do().m4264do());
    }

    public r5(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.f5654do = new k60(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    public r5(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.f5654do = new k60(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public r5(Cdo cdo) throws IOException {
        j60 j60VarM3733try = j60.m3733try(cdo.m33104else().m419else());
        this.x = Cgoto.m33040catch(cdo.m33102catch()).m33044final();
        this.f5654do = new k60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new());
    }

    public r5(ElGamalPrivateKey elGamalPrivateKey) {
        this.x = elGamalPrivateKey.getX();
        this.f5654do = elGamalPrivateKey.getParameters();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f5654do = new k60((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.f5655if = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f5654do.m4265if());
        objectOutputStream.writeObject(this.f5654do.m4264do());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKey)) {
            return false;
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
        return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f5655if.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f5655if.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Cdo(new b1(OIWObjectIdentifiers.elGamalAlgorithm, new j60(this.f5654do.m4265if(), this.f5654do.m4264do())), new Cgoto(getX())).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalKey
    public k60 getParameters() {
        return this.f5654do;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f5654do.m4265if(), this.f5654do.m4264do());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPrivateKey, javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f5655if.setBagAttribute(ccatch, aSN1Encodable);
    }
}

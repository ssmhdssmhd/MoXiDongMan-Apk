package android.support.v4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;

/* loaded from: classes3.dex */
public class s5 implements ElGamalPublicKey, DHPublicKey {
    public static final long serialVersionUID = 8712728417091216948L;

    /* renamed from: do, reason: not valid java name */
    private transient k60 f6013do;
    private BigInteger y;

    public s5(o60 o60Var) {
        this.y = o60Var.m5492for();
        this.f6013do = new k60(o60Var.m2951if().m4600for(), o60Var.m2951if().m4599do());
    }

    public s5(p60 p60Var) {
        this.y = p60Var.m5897if();
        this.f6013do = new k60(p60Var.m3280do().m4265if(), p60Var.m3280do().m4264do());
    }

    public s5(BigInteger bigInteger, k60 k60Var) {
        this.y = bigInteger;
        this.f6013do = k60Var;
    }

    public s5(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.f6013do = new k60(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    public s5(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.f6013do = new k60(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    public s5(Ctry ctry) {
        j60 j60VarM3733try = j60.m3733try(ctry.m33295new().m419else());
        try {
            this.y = ((Cgoto) ctry.m33293break()).m33044final();
            this.f6013do = new k60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public s5(ElGamalPublicKey elGamalPublicKey) {
        this.y = elGamalPublicKey.getY();
        this.f6013do = elGamalPublicKey.getParameters();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f6013do = new k60((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f6013do.m4265if());
        objectOutputStream.writeObject(this.f6013do.m4264do());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Ctry(new b1(OIWObjectIdentifiers.elGamalAlgorithm, new j60(this.f6013do.m4265if(), this.f6013do.m4264do())), new Cgoto(this.y)).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalKey
    public k60 getParameters() {
        return this.f6013do;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.f6013do.m4265if(), this.f6013do.m4264do());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPublicKey, javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }
}

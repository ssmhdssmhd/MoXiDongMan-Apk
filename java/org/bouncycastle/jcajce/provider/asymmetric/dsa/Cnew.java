package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.b1;
import android.support.v4.fv;
import android.support.v4.kv;
import android.support.v4.nr0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements DSAPublicKey {

    /* renamed from: for, reason: not valid java name */
    private static BigInteger f31045for = BigInteger.valueOf(0);
    private static final long serialVersionUID = 1752452449903495175L;

    /* renamed from: do, reason: not valid java name */
    private transient kv f31046do;

    /* renamed from: if, reason: not valid java name */
    private transient DSAParams f31047if;
    private BigInteger y;

    public Cnew(kv kvVar) {
        this.y = kvVar.m4514for();
        this.f31047if = new DSAParameterSpec(kvVar.m2025if().m3129if(), kvVar.m2025if().m3128for(), kvVar.m2025if().m3127do());
        this.f31046do = kvVar;
    }

    public Cnew(DSAPublicKey dSAPublicKey) {
        this.y = dSAPublicKey.getY();
        this.f31047if = dSAPublicKey.getParams();
        this.f31046do = new kv(this.y, Ccase.m34650try(this.f31047if));
    }

    public Cnew(DSAPublicKeySpec dSAPublicKeySpec) {
        this.y = dSAPublicKeySpec.getY();
        this.f31047if = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
        this.f31046do = new kv(this.y, Ccase.m34650try(this.f31047if));
    }

    public Cnew(Ctry ctry) {
        try {
            this.y = ((Cgoto) ctry.m33293break()).m33044final();
            if (m34653do(ctry.m33295new().m419else())) {
                fv fvVarM2433try = fv.m2433try(ctry.m33295new().m419else());
                this.f31047if = new DSAParameterSpec(fvVarM2433try.m2434else(), fvVarM2433try.m2435goto(), fvVarM2433try.m2436new());
            } else {
                this.f31047if = null;
            }
            this.f31046do = new kv(this.y, Ccase.m34650try(this.f31047if));
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m34653do(ASN1Encodable aSN1Encodable) {
        return (aSN1Encodable == null || h.f29080do.equals(aSN1Encodable.toASN1Primitive())) ? false : true;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        BigInteger bigInteger = (BigInteger) objectInputStream.readObject();
        if (bigInteger.equals(f31045for)) {
            this.f31047if = null;
        } else {
            this.f31047if = new DSAParameterSpec(bigInteger, (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        }
        this.f31046do = new kv(this.y, Ccase.m34650try(this.f31047if));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        BigInteger g;
        objectOutputStream.defaultWriteObject();
        DSAParams dSAParams = this.f31047if;
        if (dSAParams == null) {
            g = f31045for;
        } else {
            objectOutputStream.writeObject(dSAParams.getP());
            objectOutputStream.writeObject(this.f31047if.getQ());
            g = this.f31047if.getG();
        }
        objectOutputStream.writeObject(g);
    }

    public kv engineGetKeyParameters() {
        return this.f31046do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPublicKey)) {
            return false;
        }
        DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
        return this.f31047if != null ? getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() != null && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ()) : getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() == null;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DSA";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        DSAParams dSAParams = this.f31047if;
        return dSAParams == null ? nr0.m5357for(new b1(X9ObjectIdentifiers.id_dsa), new Cgoto(this.y)) : nr0.m5357for(new b1(X9ObjectIdentifiers.id_dsa, new fv(dSAParams.getP(), this.f31047if.getQ(), this.f31047if.getG()).toASN1Primitive()), new Cgoto(this.y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.interfaces.DSAKey
    public DSAParams getParams() {
        return this.f31047if;
    }

    @Override // java.security.interfaces.DSAPublicKey
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return this.f31047if != null ? ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode() : getY().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("DSA Public Key [");
        stringBuffer.append(Ccase.m34646do(this.y, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(strM36360new);
        stringBuffer.append("            Y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(strM36360new);
        return stringBuffer.toString();
    }
}

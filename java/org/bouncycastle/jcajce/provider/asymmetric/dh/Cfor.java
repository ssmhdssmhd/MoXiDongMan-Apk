package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.b1;
import android.support.v4.eu;
import android.support.v4.fe2;
import android.support.v4.nu;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.xu;
import android.support.v4.z10;
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

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements DHPrivateKey, PKCS12BagAttributeCarrier {
    public static final long serialVersionUID = 311058815616901812L;

    /* renamed from: do, reason: not valid java name */
    private transient DHParameterSpec f31016do;

    /* renamed from: for, reason: not valid java name */
    private transient pu f31017for;

    /* renamed from: if, reason: not valid java name */
    private transient Cdo f31018if;

    /* renamed from: new, reason: not valid java name */
    private transient Cthis f31019new = new Cthis();
    private BigInteger x;

    public Cfor() {
    }

    public Cfor(pu puVar) {
        this.x = puVar.m6221for();
        this.f31016do = new eu(puVar.m4512if());
    }

    public Cfor(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.f31016do = dHPrivateKey.getParams();
    }

    public Cfor(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.f31016do = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public Cfor(Cdo cdo) throws IOException {
        pu puVar;
        Csuper csuperM33129catch = Csuper.m33129catch(cdo.m33104else().m419else());
        Cgoto cgoto = (Cgoto) cdo.m33102catch();
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        this.f31018if = cdo;
        this.x = cgoto.m33044final();
        if (ccatchM420new.equals(PKCSObjectIdentifiers.dhKeyAgreement)) {
            nu nuVarM5370try = nu.m5370try(csuperM33129catch);
            if (nuVarM5370try.m5371case() != null) {
                this.f31016do = new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), nuVarM5370try.m5371case().intValue());
                puVar = new pu(this.x, new ou(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), null, nuVarM5370try.m5371case().intValue()));
            } else {
                this.f31016do = new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new());
                puVar = new pu(this.x, new ou(nuVarM5370try.m5372else(), nuVarM5370try.m5373new()));
            }
        } else {
            if (!ccatchM420new.equals(X9ObjectIdentifiers.dhpublicnumber)) {
                throw new IllegalArgumentException("unknown algorithm type: " + ccatchM420new);
            }
            z10 z10VarM10013try = z10.m10013try(csuperM33129catch);
            this.f31016do = new eu(z10VarM10013try.m10018this(), z10VarM10013try.m10014break(), z10VarM10013try.m10017new(), z10VarM10013try.m10016else(), 0);
            puVar = new pu(this.x, new ou(z10VarM10013try.m10018this(), z10VarM10013try.m10017new(), z10VarM10013try.m10014break(), z10VarM10013try.m10016else(), (xu) null));
        }
        this.f31017for = puVar;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f31016do = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.f31018if = null;
        this.f31019new = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f31016do.getP());
        objectOutputStream.writeObject(this.f31016do.getG());
        objectOutputStream.writeInt(this.f31016do.getL());
    }

    public pu engineGetKeyParameters() {
        pu puVar = this.f31017for;
        if (puVar != null) {
            return puVar;
        }
        DHParameterSpec dHParameterSpec = this.f31016do;
        return dHParameterSpec instanceof eu ? new pu(this.x, ((eu) dHParameterSpec).m2021do()) : new pu(this.x, new ou(dHParameterSpec.getP(), this.f31016do.getG(), null, this.f31016do.getL()));
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
        return "DH";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31019new.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31019new.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        Cdo cdo;
        try {
            Cdo cdo2 = this.f31018if;
            if (cdo2 != null) {
                return cdo2.m32764do(ASN1Encoding.DER);
            }
            DHParameterSpec dHParameterSpec = this.f31016do;
            if (!(dHParameterSpec instanceof eu) || ((eu) dHParameterSpec).m2024new() == null) {
                cdo = new Cdo(new b1(PKCSObjectIdentifiers.dhKeyAgreement, new nu(this.f31016do.getP(), this.f31016do.getG(), this.f31016do.getL()).toASN1Primitive()), new Cgoto(getX()));
            } else {
                ou ouVarM2021do = ((eu) this.f31016do).m2021do();
                xu xuVarM5760goto = ouVarM2021do.m5760goto();
                cdo = new Cdo(new b1(X9ObjectIdentifiers.dhpublicnumber, new z10(ouVarM2021do.m5757case(), ouVarM2021do.m5761if(), ouVarM2021do.m5758else(), ouVarM2021do.m5759for(), xuVarM5760goto != null ? new fe2(xuVarM5760goto.m9568if(), xuVarM5760goto.m9567do()) : null).toASN1Primitive()), new Cgoto(getX()));
            }
            return cdo.m32764do(ASN1Encoding.DER);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.f31016do;
    }

    @Override // javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31019new.setBagAttribute(ccatch, aSN1Encodable);
    }

    public String toString() {
        return Ctry.m34645if("DH", this.x, new ou(this.f31016do.getP(), this.f31016do.getG()));
    }
}

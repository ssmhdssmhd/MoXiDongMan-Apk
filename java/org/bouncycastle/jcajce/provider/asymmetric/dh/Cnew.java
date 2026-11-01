package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.b1;
import android.support.v4.eu;
import android.support.v4.fe2;
import android.support.v4.nr0;
import android.support.v4.nu;
import android.support.v4.ou;
import android.support.v4.ru;
import android.support.v4.xu;
import android.support.v4.z10;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements DHPublicKey {
    public static final long serialVersionUID = -216691575254424324L;

    /* renamed from: do, reason: not valid java name */
    private transient ru f31021do;

    /* renamed from: for, reason: not valid java name */
    private transient Ctry f31022for;

    /* renamed from: if, reason: not valid java name */
    private transient DHParameterSpec f31023if;
    private BigInteger y;

    public Cnew(ru ruVar) {
        this.y = ruVar.m7126for();
        this.f31023if = new eu(ruVar.m4512if());
        this.f31021do = ruVar;
    }

    public Cnew(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.y = bigInteger;
        this.f31023if = dHParameterSpec;
        this.f31021do = dHParameterSpec instanceof eu ? new ru(bigInteger, ((eu) dHParameterSpec).m2021do()) : new ru(bigInteger, new ou(dHParameterSpec.getP(), dHParameterSpec.getG()));
    }

    public Cnew(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.f31023if = dHPublicKey.getParams();
        this.f31021do = new ru(this.y, new ou(this.f31023if.getP(), this.f31023if.getG()));
    }

    public Cnew(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.f31023if = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
        this.f31021do = new ru(this.y, new ou(dHPublicKeySpec.getP(), dHPublicKeySpec.getG()));
    }

    public Cnew(Ctry ctry) {
        this.f31022for = ctry;
        try {
            this.y = ((Cgoto) ctry.m33293break()).m33044final();
            Csuper csuperM33129catch = Csuper.m33129catch(ctry.m33295new().m419else());
            Ccatch ccatchM420new = ctry.m33295new().m420new();
            if (ccatchM420new.equals(PKCSObjectIdentifiers.dhKeyAgreement) || m34641do(csuperM33129catch)) {
                nu nuVarM5370try = nu.m5370try(csuperM33129catch);
                this.f31023if = nuVarM5370try.m5371case() != null ? new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), nuVarM5370try.m5371case().intValue()) : new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new());
                this.f31021do = new ru(this.y, new ou(this.f31023if.getP(), this.f31023if.getG()));
            } else {
                if (!ccatchM420new.equals(X9ObjectIdentifiers.dhpublicnumber)) {
                    throw new IllegalArgumentException("unknown algorithm type: " + ccatchM420new);
                }
                z10 z10VarM10013try = z10.m10013try(csuperM33129catch);
                fe2 fe2VarM10015catch = z10VarM10013try.m10015catch();
                if (fe2VarM10015catch != null) {
                    this.f31021do = new ru(this.y, new ou(z10VarM10013try.m10018this(), z10VarM10013try.m10017new(), z10VarM10013try.m10014break(), z10VarM10013try.m10016else(), new xu(fe2VarM10015catch.m2264else(), fe2VarM10015catch.m2263case().intValue())));
                } else {
                    this.f31021do = new ru(this.y, new ou(z10VarM10013try.m10018this(), z10VarM10013try.m10017new(), z10VarM10013try.m10014break(), z10VarM10013try.m10016else(), (xu) null));
                }
                this.f31023if = new eu(this.f31021do.m4512if());
            }
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m34641do(Csuper csuper) {
        if (csuper.size() == 2) {
            return true;
        }
        if (csuper.size() > 3) {
            return false;
        }
        return Cgoto.m33040catch(csuper.mo33075final(2)).m33044final().compareTo(BigInteger.valueOf((long) Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f31023if = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.f31022for = null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f31023if.getP());
        objectOutputStream.writeObject(this.f31023if.getG());
        objectOutputStream.writeInt(this.f31023if.getL());
    }

    public ru engineGetKeyParameters() {
        return this.f31021do;
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
        return "DH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        Ctry ctry = this.f31022for;
        if (ctry != null) {
            return nr0.m5360try(ctry);
        }
        DHParameterSpec dHParameterSpec = this.f31023if;
        if (!(dHParameterSpec instanceof eu) || ((eu) dHParameterSpec).m2024new() == null) {
            return nr0.m5357for(new b1(PKCSObjectIdentifiers.dhKeyAgreement, new nu(this.f31023if.getP(), this.f31023if.getG(), this.f31023if.getL()).toASN1Primitive()), new Cgoto(this.y));
        }
        ou ouVarM2021do = ((eu) this.f31023if).m2021do();
        xu xuVarM5760goto = ouVarM2021do.m5760goto();
        return nr0.m5357for(new b1(X9ObjectIdentifiers.dhpublicnumber, new z10(ouVarM2021do.m5757case(), ouVarM2021do.m5761if(), ouVarM2021do.m5758else(), ouVarM2021do.m5759for(), xuVarM5760goto != null ? new fe2(xuVarM5760goto.m9568if(), xuVarM5760goto.m9567do()) : null).toASN1Primitive()), new Cgoto(this.y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.f31023if;
    }

    @Override // javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public String toString() {
        return Ctry.m34644for("DH", this.y, new ou(this.f31023if.getP(), this.f31023if.getG()));
    }
}

package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.fu;
import android.support.v4.nr0;
import android.support.v4.nu;
import android.support.v4.ru;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

/* renamed from: org.bouncycastle.jce.provider.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements DHPublicKey {
    public static final long serialVersionUID = -216691575254424324L;
    private DHParameterSpec dhSpec;
    private Ctry info;
    private BigInteger y;

    public Ccatch(ru ruVar) {
        this.y = ruVar.m7126for();
        this.dhSpec = new DHParameterSpec(ruVar.m4512if().m5757case(), ruVar.m4512if().m5761if(), ruVar.m4512if().m5762new());
    }

    public Ccatch(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.y = bigInteger;
        this.dhSpec = dHParameterSpec;
    }

    public Ccatch(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.dhSpec = dHPublicKey.getParams();
    }

    public Ccatch(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.dhSpec = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    public Ccatch(Ctry ctry) {
        DHParameterSpec dHParameterSpec;
        this.info = ctry;
        try {
            this.y = ((Cgoto) ctry.m33293break()).m33044final();
            Csuper csuperM33129catch = Csuper.m33129catch(ctry.m33297try().m419else());
            org.bouncycastle.asn1.Ccatch ccatchM420new = ctry.m33297try().m420new();
            if (ccatchM420new.equals(PKCSObjectIdentifiers.dhKeyAgreement) || m35004do(csuperM33129catch)) {
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
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m35004do(Csuper csuper) {
        if (csuper.size() == 2) {
            return true;
        }
        if (csuper.size() > 3) {
            return false;
        }
        return Cgoto.m33040catch(csuper.mo33075final(2)).m33044final().compareTo(BigInteger.valueOf((long) Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.y = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        Ctry ctry = this.info;
        return ctry != null ? nr0.m5360try(ctry) : nr0.m5357for(new b1(PKCSObjectIdentifiers.dhKeyAgreement, new nu(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new Cgoto(this.y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.y;
    }
}

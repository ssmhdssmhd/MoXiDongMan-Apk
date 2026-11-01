package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.b1;
import android.support.v4.cg0;
import android.support.v4.dg0;
import android.support.v4.eg0;
import android.support.v4.fg0;
import android.support.v4.nr0;
import android.support.v4.wf0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cgoto;
import org.bouncycastle.jce.interfaces.GOST3410Params;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements GOST3410PublicKey {
    public static final long serialVersionUID = -6251023343619275990L;

    /* renamed from: do, reason: not valid java name */
    private transient GOST3410Params f31198do;
    private BigInteger y;

    public Cnew(eg0 eg0Var, wf0 wf0Var) {
        this.y = eg0Var.m1876for();
        this.f31198do = wf0Var;
    }

    public Cnew(fg0 fg0Var) {
        this.y = fg0Var.m2277new();
        this.f31198do = new wf0(new dg0(fg0Var.m2276if(), fg0Var.m2275for(), fg0Var.m2274do()));
    }

    public Cnew(BigInteger bigInteger, wf0 wf0Var) {
        this.y = bigInteger;
        this.f31198do = wf0Var;
    }

    public Cnew(Ctry ctry) {
        cg0 cg0VarM909case = cg0.m909case(ctry.m33295new().m419else());
        try {
            byte[] bArrMo5490const = ((j) ctry.m33293break()).mo5490const();
            byte[] bArr = new byte[bArrMo5490const.length];
            for (int i = 0; i != bArrMo5490const.length; i++) {
                bArr[i] = bArrMo5490const[(bArrMo5490const.length - 1) - i];
            }
            this.y = new BigInteger(1, bArr);
            this.f31198do = wf0.m9137do(cg0VarM909case);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in GOST3410 public key");
        }
    }

    public Cnew(GOST3410PublicKey gOST3410PublicKey) {
        this.y = gOST3410PublicKey.getY();
        this.f31198do = gOST3410PublicKey.getParameters();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.f31198do = new wf0(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
            return;
        }
        this.f31198do = new wf0(new dg0((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
        objectInputStream.readObject();
        objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object objM1334do;
        objectOutputStream.defaultWriteObject();
        if (this.f31198do.getPublicKeyParamSetOID() != null) {
            objM1334do = this.f31198do.getPublicKeyParamSetOID();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.f31198do.getPublicKeyParameters().m1336if());
            objectOutputStream.writeObject(this.f31198do.getPublicKeyParameters().m1335for());
            objM1334do = this.f31198do.getPublicKeyParameters().m1334do();
        }
        objectOutputStream.writeObject(objM1334do);
        objectOutputStream.writeObject(this.f31198do.getDigestParamSetOID());
        objectOutputStream.writeObject(this.f31198do.getEncryptionParamSetOID());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.y.equals(cnew.y) && this.f31198do.equals(cnew.f31198do);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        byte[] byteArray = getY().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = byteArray[(byteArray.length - 1) - i];
        }
        try {
            GOST3410Params gOST3410Params = this.f31198do;
            return nr0.m5360try(gOST3410Params instanceof wf0 ? gOST3410Params.getEncryptionParamSetOID() != null ? new Ctry(new b1(CryptoProObjectIdentifiers.gostR3410_94, new cg0(new Ccatch(this.f31198do.getPublicKeyParamSetOID()), new Ccatch(this.f31198do.getDigestParamSetOID()), new Ccatch(this.f31198do.getEncryptionParamSetOID()))), new j(bArr)) : new Ctry(new b1(CryptoProObjectIdentifiers.gostR3410_94, new cg0(new Ccatch(this.f31198do.getPublicKeyParamSetOID()), new Ccatch(this.f31198do.getDigestParamSetOID()))), new j(bArr)) : new Ctry(new b1(CryptoProObjectIdentifiers.gostR3410_94), new j(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Key
    public GOST3410Params getParameters() {
        return this.f31198do;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PublicKey
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return this.y.hashCode() ^ this.f31198do.hashCode();
    }

    public String toString() {
        try {
            return Ctry.m34714for("GOST3410", this.y, ((eg0) Cgoto.m34748if(this)).m7866if());
        } catch (InvalidKeyException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}

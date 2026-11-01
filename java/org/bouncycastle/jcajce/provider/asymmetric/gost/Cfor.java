package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.ag0;
import android.support.v4.b1;
import android.support.v4.bg0;
import android.support.v4.cg0;
import android.support.v4.dg0;
import android.support.v4.wf0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.interfaces.GOST3410Params;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements GOST3410PrivateKey, PKCS12BagAttributeCarrier {
    public static final long serialVersionUID = 8581661527592305464L;

    /* renamed from: do, reason: not valid java name */
    private transient GOST3410Params f31192do;

    /* renamed from: if, reason: not valid java name */
    private transient PKCS12BagAttributeCarrier f31193if = new Cthis();
    private BigInteger x;

    public Cfor() {
    }

    public Cfor(ag0 ag0Var, wf0 wf0Var) {
        this.x = ag0Var.m242for();
        this.f31192do = wf0Var;
        if (wf0Var == null) {
            throw new IllegalArgumentException("spec is null");
        }
    }

    public Cfor(bg0 bg0Var) {
        this.x = bg0Var.m536new();
        this.f31192do = new wf0(new dg0(bg0Var.m535if(), bg0Var.m534for(), bg0Var.m533do()));
    }

    public Cfor(Cdo cdo) throws IOException {
        BigInteger bigInteger;
        cg0 cg0VarM909case = cg0.m909case(cdo.m33104else().m419else());
        ASN1Encodable aSN1EncodableM33102catch = cdo.m33102catch();
        if (aSN1EncodableM33102catch instanceof Cgoto) {
            bigInteger = Cgoto.m33040catch(aSN1EncodableM33102catch).m33043const();
        } else {
            byte[] bArrMo5490const = Cclass.m32796catch(cdo.m33102catch()).mo5490const();
            byte[] bArr = new byte[bArrMo5490const.length];
            for (int i = 0; i != bArrMo5490const.length; i++) {
                bArr[i] = bArrMo5490const[(bArrMo5490const.length - 1) - i];
            }
            bigInteger = new BigInteger(1, bArr);
        }
        this.x = bigInteger;
        this.f31192do = wf0.m9137do(cg0VarM909case);
    }

    public Cfor(GOST3410PrivateKey gOST3410PrivateKey) {
        this.x = gOST3410PrivateKey.getX();
        this.f31192do = gOST3410PrivateKey.getParameters();
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m34710do(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.f31192do = new wf0(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
        } else {
            this.f31192do = new wf0(new dg0((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
            objectInputStream.readObject();
            objectInputStream.readObject();
        }
        this.f31193if = new Cthis();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object objM1334do;
        objectOutputStream.defaultWriteObject();
        if (this.f31192do.getPublicKeyParamSetOID() != null) {
            objM1334do = this.f31192do.getPublicKeyParamSetOID();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.f31192do.getPublicKeyParameters().m1336if());
            objectOutputStream.writeObject(this.f31192do.getPublicKeyParameters().m1335for());
            objM1334do = this.f31192do.getPublicKeyParameters().m1334do();
        }
        objectOutputStream.writeObject(objM1334do);
        objectOutputStream.writeObject(this.f31192do.getDigestParamSetOID());
        objectOutputStream.writeObject(this.f31192do.getEncryptionParamSetOID());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PrivateKey)) {
            return false;
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) obj;
        return getX().equals(gOST3410PrivateKey.getX()) && getParameters().getPublicKeyParameters().equals(gOST3410PrivateKey.getParameters().getPublicKeyParameters()) && getParameters().getDigestParamSetOID().equals(gOST3410PrivateKey.getParameters().getDigestParamSetOID()) && m34710do(getParameters().getEncryptionParamSetOID(), gOST3410PrivateKey.getParameters().getEncryptionParamSetOID());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.f31193if.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31193if.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        byte[] byteArray = getX().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = byteArray[(byteArray.length - 1) - i];
        }
        try {
            return (this.f31192do instanceof wf0 ? new Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_94, new cg0(new Ccatch(this.f31192do.getPublicKeyParamSetOID()), new Ccatch(this.f31192do.getDigestParamSetOID()))), new j(bArr)) : new Cdo(new b1(CryptoProObjectIdentifiers.gostR3410_94), new j(bArr))).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410Key
    public GOST3410Params getParameters() {
        return this.f31192do;
    }

    @Override // org.bouncycastle.jce.interfaces.GOST3410PrivateKey
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return getX().hashCode() ^ this.f31192do.hashCode();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f31193if.setBagAttribute(ccatch, aSN1Encodable);
    }

    public String toString() {
        try {
            return Ctry.m34715if("GOST3410", this.x, ((ag0) org.bouncycastle.jcajce.provider.asymmetric.util.Cgoto.m34747do(this)).m7866if());
        } catch (InvalidKeyException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}

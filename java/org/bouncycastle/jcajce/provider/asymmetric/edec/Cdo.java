package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.q3;
import android.support.v4.y50;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.crypto.params.Cif;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.jcajce.interfaces.EdDSAKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements EdDSAKey, PrivateKey {
    public static final long serialVersionUID = 1;
    private final byte[] attributes;

    /* renamed from: do, reason: not valid java name */
    private transient a4 f31164do;
    private final boolean hasPublicKey;

    public Cdo(a4 a4Var) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.f31164do = a4Var;
    }

    public Cdo(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        this.hasPublicKey = cdo.m33101break();
        this.attributes = cdo.m33106new() != null ? cdo.m33106new().getEncoded() : null;
        m34697do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m34697do(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        ASN1Encodable aSN1EncodableM33102catch = cdo.m33102catch();
        this.f31164do = EdECObjectIdentifiers.id_Ed448.equals(cdo.m33104else().m420new()) ? new Cnew(Cclass.m32796catch(aSN1EncodableM33102catch).mo5490const(), 0) : new Cif(Cclass.m32796catch(aSN1EncodableM33102catch).mo5490const(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34697do(org.bouncycastle.asn1.pkcs.Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a4 engineGetKeyParameters() {
        return this.f31164do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cdo) {
            return q3.m6362case(((Cdo) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.f31164do instanceof Cnew ? y50.f8137for : y50.f8138if;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            Cthrow cthrowM33151class = Cthrow.m33151class(this.attributes);
            org.bouncycastle.asn1.pkcs.Cdo cdoM34472if = org.bouncycastle.crypto.util.Cclass.m34472if(this.f31164do, cthrowM33151class);
            return this.hasPublicKey ? cdoM34472if.getEncoded() : new org.bouncycastle.asn1.pkcs.Cdo(cdoM34472if.m33104else(), cdoM34472if.m33102catch(), cthrowM33151class).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return q3.n(getEncoded());
    }

    public String toString() {
        a4 a4Var = this.f31164do;
        return Cthis.m34706for("Private Key", getAlgorithm(), a4Var instanceof Cnew ? ((Cnew) a4Var).m33853for() : ((Cif) a4Var).m33849for());
    }
}

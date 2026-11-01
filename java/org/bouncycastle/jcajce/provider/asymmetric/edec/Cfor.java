package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.q3;
import android.support.v4.zh2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.crypto.params.Celse;
import org.bouncycastle.crypto.params.Cthis;
import org.bouncycastle.jcajce.interfaces.XDHKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements XDHKey, PrivateKey {
    public static final long serialVersionUID = 1;
    private final byte[] attributes;

    /* renamed from: do, reason: not valid java name */
    private transient a4 f31175do;
    private final boolean hasPublicKey;

    public Cfor(a4 a4Var) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.f31175do = a4Var;
    }

    public Cfor(Cdo cdo) throws IOException {
        this.hasPublicKey = cdo.m33101break();
        this.attributes = cdo.m33106new() != null ? cdo.m33106new().getEncoded() : null;
        m34701do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m34701do(Cdo cdo) throws IOException {
        ASN1Encodable aSN1EncodableM33102catch = cdo.m33102catch();
        this.f31175do = EdECObjectIdentifiers.id_X448.equals(cdo.m33104else().m420new()) ? new Cthis(Cclass.m32796catch(aSN1EncodableM33102catch).mo5490const(), 0) : new Celse(Cclass.m32796catch(aSN1EncodableM33102catch).mo5490const(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34701do(Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a4 engineGetKeyParameters() {
        return this.f31175do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cfor) {
            return q3.m6362case(((Cfor) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.f31175do instanceof Cthis ? zh2.f8561for : zh2.f8562if;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            Cthrow cthrowM33151class = Cthrow.m33151class(this.attributes);
            Cdo cdoM34472if = org.bouncycastle.crypto.util.Cclass.m34472if(this.f31175do, cthrowM33151class);
            return this.hasPublicKey ? cdoM34472if.getEncoded() : new Cdo(cdoM34472if.m33104else(), cdoM34472if.m33102catch(), cthrowM33151class).getEncoded();
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
        a4 a4Var = this.f31175do;
        return Cthis.m34706for("Private Key", getAlgorithm(), a4Var instanceof Cthis ? ((Cthis) a4Var).m33857for() : ((Celse) a4Var).m33841for());
    }
}

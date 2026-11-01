package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.q3;
import android.support.v4.y50;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.params.Cfor;
import org.bouncycastle.jcajce.interfaces.EdDSAKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements EdDSAKey, PublicKey {
    public static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient a4 f31179do;

    public Cif(a4 a4Var) {
        this.f31179do = a4Var;
    }

    public Cif(Ctry ctry) {
        m34703do(ctry);
    }

    public Cif(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        a4 cfor;
        int length = bArr.length;
        if (!Cthis.m34707if(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 57) {
            cfor = new org.bouncycastle.crypto.params.Ctry(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            cfor = new Cfor(bArr2, length);
        }
        this.f31179do = cfor;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34703do(Ctry ctry) {
        this.f31179do = EdECObjectIdentifiers.id_Ed448.equals(ctry.m33295new().m420new()) ? new org.bouncycastle.crypto.params.Ctry(ctry.m33296this().m33059super(), 0) : new Cfor(ctry.m33296this().m33059super(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34703do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a4 engineGetKeyParameters() {
        return this.f31179do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cif) {
            return q3.m6362case(((Cif) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.f31179do instanceof org.bouncycastle.crypto.params.Ctry ? y50.f8137for : y50.f8138if;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        if (this.f31179do instanceof org.bouncycastle.crypto.params.Ctry) {
            byte[] bArr = Ccase.f31154case;
            byte[] bArr2 = new byte[bArr.length + 57];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((org.bouncycastle.crypto.params.Ctry) this.f31179do).m33862if(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = Ccase.f31156else;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((Cfor) this.f31179do).m33846if(bArr4, bArr3.length);
        return bArr4;
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return q3.n(getEncoded());
    }

    public String toString() {
        return Cthis.m34706for("Public Key", getAlgorithm(), this.f31179do);
    }
}

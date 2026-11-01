package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.q3;
import android.support.v4.zh2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Cgoto;
import org.bouncycastle.jcajce.interfaces.XDHKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements XDHKey, PublicKey {
    public static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient a4 f31180do;

    public Cnew(a4 a4Var) {
        this.f31180do = a4Var;
    }

    public Cnew(Ctry ctry) {
        m34704do(ctry);
    }

    public Cnew(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        a4 cgoto;
        int length = bArr.length;
        if (!Cthis.m34707if(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 56) {
            cgoto = new Cbreak(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            cgoto = new Cgoto(bArr2, length);
        }
        this.f31180do = cgoto;
    }

    /* renamed from: do, reason: not valid java name */
    private void m34704do(Ctry ctry) {
        this.f31180do = EdECObjectIdentifiers.id_X448.equals(ctry.m33295new().m420new()) ? new Cbreak(ctry.m33296this().m33059super(), 0) : new Cgoto(ctry.m33296this().m33059super(), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m34704do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a4 engineGetKeyParameters() {
        return this.f31180do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cnew) {
            return q3.m6362case(((Cnew) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.f31180do instanceof Cbreak ? zh2.f8561for : zh2.f8562if;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        if (this.f31180do instanceof Cbreak) {
            byte[] bArr = Ccase.f31158new;
            byte[] bArr2 = new byte[bArr.length + 56];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((Cbreak) this.f31180do).m33803if(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = Ccase.f31160try;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((Cgoto) this.f31180do).m33848if(bArr4, bArr3.length);
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
        return Cthis.m34706for("Public Key", getAlgorithm(), this.f31180do);
    }
}

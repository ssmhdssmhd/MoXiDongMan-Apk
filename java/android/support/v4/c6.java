package android.support.v4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cfor;
import org.bouncycastle.pqc.crypto.util.Cnew;
import org.bouncycastle.pqc.jcajce.interfaces.NHPublicKey;

/* loaded from: classes3.dex */
public class c6 implements NHPublicKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient s11 f608do;

    public c6(s11 s11Var) {
        this.f608do = s11Var;
    }

    public c6(Ctry ctry) throws IOException {
        m753do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m753do(Ctry ctry) throws IOException {
        this.f608do = (s11) Cfor.m35809if(ctry);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m753do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c6)) {
            return false;
        }
        return q3.m6362case(this.f608do.m7234if(), ((c6) obj).f608do.m7234if());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cnew.m35816do(this.f608do).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public CipherParameters getKeyParams() {
        return this.f608do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.NHPublicKey
    public byte[] getPublicData() {
        return this.f608do.m7234if();
    }

    public int hashCode() {
        return q3.n(this.f608do.m7234if());
    }
}

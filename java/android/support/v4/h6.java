package android.support.v4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.util.Cfor;
import org.bouncycastle.pqc.crypto.util.Cnew;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;

/* loaded from: classes3.dex */
public class h6 implements PublicKey, SPHINCSKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient Ccatch f2316do;

    /* renamed from: if, reason: not valid java name */
    private transient br1 f2317if;

    public h6(Ccatch ccatch, br1 br1Var) {
        this.f2316do = ccatch;
        this.f2317if = br1Var;
    }

    public h6(Ctry ctry) throws IOException {
        m2950do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m2950do(Ctry ctry) throws IOException {
        this.f2316do = yq1.m9929new(ctry.m33295new().m419else()).m9930try().m420new();
        this.f2317if = (br1) Cfor.m35809if(ctry);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m2950do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h6)) {
            return false;
        }
        h6 h6Var = (h6) obj;
        return this.f2316do.equals(h6Var.f2316do) && q3.m6362case(this.f2317if.m616for(), h6Var.f2317if.m616for());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return (this.f2317if.m10264if() != null ? Cnew.m35816do(this.f2317if) : new Ctry(new b1(PQCObjectIdentifiers.sphincs256, new yq1(new b1(this.f2316do))), this.f2317if.m616for())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey
    public byte[] getKeyData() {
        return this.f2317if.m616for();
    }

    public CipherParameters getKeyParams() {
        return this.f2317if;
    }

    public Ccatch getTreeDigest() {
        return this.f2316do;
    }

    public int hashCode() {
        return this.f2316do.hashCode() + (q3.n(this.f2317if.m616for()) * 37);
    }
}

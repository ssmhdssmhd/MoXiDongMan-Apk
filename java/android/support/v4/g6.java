package android.support.v4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.util.Cif;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;

/* loaded from: classes3.dex */
public class g6 implements PrivateKey, SPHINCSKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient Ccatch f2060do;

    /* renamed from: for, reason: not valid java name */
    private transient Cthrow f2061for;

    /* renamed from: if, reason: not valid java name */
    private transient ar1 f2062if;

    public g6(Ccatch ccatch, ar1 ar1Var) {
        this.f2060do = ccatch;
        this.f2062if = ar1Var;
    }

    public g6(Cdo cdo) throws IOException {
        m2587do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m2587do(Cdo cdo) throws IOException {
        this.f2061for = cdo.m33106new();
        this.f2060do = yq1.m9929new(cdo.m33104else().m419else()).m9930try().m420new();
        this.f2062if = (ar1) org.bouncycastle.pqc.crypto.util.Cdo.m35804for(cdo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m2587do(Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g6)) {
            return false;
        }
        g6 g6Var = (g6) obj;
        return this.f2060do.equals(g6Var.f2060do) && q3.m6362case(this.f2062if.m317for(), g6Var.f2062if.m317for());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return (this.f2062if.m10264if() != null ? Cif.m35814if(this.f2062if, this.f2061for) : new Cdo(new b1(PQCObjectIdentifiers.sphincs256, new yq1(new b1(this.f2060do))), new org.bouncycastle.asn1.j(this.f2062if.m317for()), this.f2061for)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey
    public byte[] getKeyData() {
        return this.f2062if.m317for();
    }

    public CipherParameters getKeyParams() {
        return this.f2062if;
    }

    public Ccatch getTreeDigest() {
        return this.f2060do;
    }

    public int hashCode() {
        return this.f2060do.hashCode() + (q3.n(this.f2062if.m317for()) * 37);
    }
}

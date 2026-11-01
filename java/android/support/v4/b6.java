package android.support.v4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cif;
import org.bouncycastle.pqc.jcajce.interfaces.NHPrivateKey;

/* loaded from: classes3.dex */
public class b6 implements NHPrivateKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient r11 f364do;

    /* renamed from: if, reason: not valid java name */
    private transient Cthrow f365if;

    public b6(r11 r11Var) {
        this.f364do = r11Var;
    }

    public b6(Cdo cdo) throws IOException {
        m454do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m454do(Cdo cdo) throws IOException {
        this.f365if = cdo.m33106new();
        this.f364do = (r11) org.bouncycastle.pqc.crypto.util.Cdo.m35804for(cdo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m454do(Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj instanceof b6) {
            return q3.m6363catch(this.f364do.m6732if(), ((b6) obj).f364do.m6732if());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cif.m35814if(this.f364do, this.f365if).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public CipherParameters getKeyParams() {
        return this.f364do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.NHPrivateKey
    public short[] getSecretData() {
        return this.f364do.m6732if();
    }

    public int hashCode() {
        return q3.v(this.f364do.m6732if());
    }
}

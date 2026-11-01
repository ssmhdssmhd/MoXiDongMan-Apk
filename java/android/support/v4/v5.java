package android.support.v4;

import java.security.PublicKey;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.gmss.Cdo;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class v5 implements CipherParameters, PublicKey {
    private static final long serialVersionUID = 1;
    private Cdo gmssParameterSet;
    private Cdo gmssParams;
    private byte[] publicKeyBytes;

    public v5(gf0 gf0Var) {
        this(gf0Var.m2656for(), gf0Var.m527if());
    }

    public v5(byte[] bArr, Cdo cdo) {
        this.gmssParameterSet = cdo;
        this.publicKeyBytes = bArr;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GMSS";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return mr0.m4985for(new b1(PQCObjectIdentifiers.gmss, new rb1(this.gmssParameterSet.m35591for(), this.gmssParameterSet.m35590do(), this.gmssParameterSet.m35593new(), this.gmssParameterSet.m35592if()).toASN1Primitive()), new ff0(this.publicKeyBytes));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public Cdo getParameterSet() {
        return this.gmssParameterSet;
    }

    public byte[] getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public String toString() {
        String str = "GMSS public key : " + new String(Cfor.m36327case(this.publicKeyBytes)) + "\nHeight of Trees: \n";
        for (int i = 0; i < this.gmssParameterSet.m35590do().length; i++) {
            str = str + "Layer " + i + " : " + this.gmssParameterSet.m35590do()[i] + " WinternitzParameter: " + this.gmssParameterSet.m35593new()[i] + " K: " + this.gmssParameterSet.m35592if()[i] + "\n";
        }
        return str;
    }
}

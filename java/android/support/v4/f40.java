package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.ec.ECDecryptor;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class f40 implements ECDecryptor {

    /* renamed from: do, reason: not valid java name */
    private h50 f1683do;

    @Override // org.bouncycastle.crypto.ec.ECDecryptor
    public Cnew decrypt(c50 c50Var) {
        h50 h50Var = this.f1683do;
        if (h50Var == null) {
            throw new IllegalStateException("ECElGamalDecryptor not initialised");
        }
        Cif cifM1646do = h50Var.m7258if().m1646do();
        return Cdo.m35358do(cifM1646do, c50Var.m750for()).mo35480transient(Cdo.m35358do(cifM1646do, c50Var.m751if()).m35470package(this.f1683do.m2948for())).m35454abstract();
    }

    @Override // org.bouncycastle.crypto.ec.ECDecryptor
    public void init(CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof h50)) {
            throw new IllegalArgumentException("ECPrivateKeyParameters are required for decryption.");
        }
        this.f1683do = (h50) cipherParameters;
    }
}

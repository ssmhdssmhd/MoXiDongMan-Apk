package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.tls.Cbreak;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class vy extends g {

    /* renamed from: do, reason: not valid java name */
    public Cbreak f7356do;

    /* renamed from: for, reason: not valid java name */
    public BasicAgreement f7357for;

    /* renamed from: if, reason: not valid java name */
    public a4 f7358if;

    /* renamed from: new, reason: not valid java name */
    public boolean f7359new;

    public vy(Cbreak cbreak, a4 a4Var) {
        boolean z;
        if (cbreak == null) {
            throw new IllegalArgumentException("'certificate' cannot be null");
        }
        if (cbreak.m34013case()) {
            throw new IllegalArgumentException("'certificate' cannot be empty");
        }
        if (a4Var == null) {
            throw new IllegalArgumentException("'privateKey' cannot be null");
        }
        if (!a4Var.m33do()) {
            throw new IllegalArgumentException("'privateKey' must be private");
        }
        if (a4Var instanceof pu) {
            this.f7357for = new du();
            z = true;
        } else {
            if (!(a4Var instanceof h50)) {
                throw new IllegalArgumentException("'privateKey' type not supported: " + a4Var.getClass().getName());
            }
            this.f7357for = new x30();
            z = false;
        }
        this.f7359new = z;
        this.f7356do = cbreak;
        this.f7358if = a4Var;
    }

    @Override // org.bouncycastle.crypto.tls.TlsAgreementCredentials
    public byte[] generateAgreement(a4 a4Var) {
        this.f7357for.init(this.f7358if);
        BigInteger bigIntegerCalculateAgreement = this.f7357for.calculateAgreement(a4Var);
        return this.f7359new ? Cdo.m36313if(bigIntegerCalculateAgreement) : Cdo.m36309do(this.f7357for.getFieldSize(), bigIntegerCalculateAgreement);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCredentials
    public Cbreak getCertificate() {
        return this.f7356do;
    }
}

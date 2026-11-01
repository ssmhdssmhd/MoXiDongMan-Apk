package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class b50 extends e40 {

    /* renamed from: else, reason: not valid java name */
    private Ccatch f342else;

    public b50(Ccatch ccatch, e40 e40Var) {
        super(e40Var.m1646do(), e40Var.m1648if(), e40Var.m1650try(), e40Var.m1647for(), e40Var.m1645case());
        this.f342else = ccatch;
    }

    public b50(Ccatch ccatch, Cif cif, Cnew cnew, BigInteger bigInteger) {
        this(ccatch, cif, cnew, bigInteger, ECConstants.ONE, null);
    }

    public b50(Ccatch ccatch, Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2) {
        this(ccatch, cif, cnew, bigInteger, bigInteger2, null);
    }

    public b50(Ccatch ccatch, Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        super(cif, cnew, bigInteger, bigInteger2, bArr);
        this.f342else = ccatch;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccatch m446goto() {
        return this.f342else;
    }
}

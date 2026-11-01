package android.support.v4;

import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.tls.TlsSRPGroupVerifier;

/* loaded from: classes3.dex */
public class xy implements TlsSRPGroupVerifier {

    /* renamed from: if, reason: not valid java name */
    public static final Vector f8053if;

    /* renamed from: do, reason: not valid java name */
    public Vector f8054do;

    static {
        Vector vector = new Vector();
        f8053if = vector;
        vector.addElement(ir1.f2840for);
        vector.addElement(ir1.f2833case);
        vector.addElement(ir1.f2849this);
        vector.addElement(ir1.f2835class);
        vector.addElement(ir1.f2848super);
        vector.addElement(ir1.f2843import);
        vector.addElement(ir1.f2847return);
    }

    public xy() {
        this(f8053if);
    }

    public xy(Vector vector) {
        this.f8054do = vector;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSRPGroupVerifier
    public boolean accept(gr1 gr1Var) {
        for (int i = 0; i < this.f8054do.size(); i++) {
            if (m9617do(gr1Var, (gr1) this.f8054do.elementAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m9617do(gr1 gr1Var, gr1 gr1Var2) {
        return gr1Var == gr1Var2 || (m9618if(gr1Var.m2772if(), gr1Var2.m2772if()) && m9618if(gr1Var.m2771do(), gr1Var2.m2771do()));
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m9618if(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger == bigInteger2 || bigInteger.equals(bigInteger2);
    }
}

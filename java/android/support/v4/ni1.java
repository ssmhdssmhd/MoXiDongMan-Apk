package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.pqc.crypto.qtesla.Cthis;

/* loaded from: classes3.dex */
public final class ni1 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private int f4233do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f4234if;

    /* renamed from: do, reason: not valid java name */
    private byte[] m5250do(int i) {
        return new byte[ri1.m6995if(i)];
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m5251if(int i) {
        return new byte[ri1.m6994for(i)];
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        byte[] bArrM5250do = m5250do(this.f4233do);
        byte[] bArrM5251if = m5251if(this.f4233do);
        int i = this.f4233do;
        if (i == 0) {
            Cthis.m35751else(bArrM5251if, bArrM5250do, this.f4234if);
        } else if (i == 1) {
            Cthis.m35769this(bArrM5251if, bArrM5250do, this.f4234if);
        } else if (i == 2) {
            Cthis.m35743break(bArrM5251if, bArrM5250do, this.f4234if);
        } else if (i == 3) {
            Cthis.m35745catch(bArrM5251if, bArrM5250do, this.f4234if);
        } else {
            if (i != 4) {
                throw new IllegalArgumentException("unknown security category: " + this.f4233do);
            }
            Cthis.m35756goto(bArrM5251if, bArrM5250do, this.f4234if);
        }
        return new y3((a4) new qi1(this.f4233do, bArrM5251if), (a4) new pi1(this.f4233do, bArrM5250do));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        mi1 mi1Var = (mi1) dr0Var;
        this.f4234if = mi1Var.m1497do();
        this.f4233do = mi1Var.m4928for();
    }
}

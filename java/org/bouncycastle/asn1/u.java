package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes3.dex */
public class u extends Cimport {

    /* renamed from: try, reason: not valid java name */
    private static final byte[] f29209try = new byte[0];

    public u(int i, ASN1Encodable aSN1Encodable) {
        super(true, i, aSN1Encodable);
    }

    public u(boolean z, int i, ASN1Encodable aSN1Encodable) {
        super(z, i, aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM33084if;
        if (this.f29096if) {
            return m0.m33084if(this.f29094do) + 1;
        }
        int iMo32748case = this.f29097new.toASN1Primitive().mo32780this().mo32748case();
        if (this.f29095for) {
            iM33084if = m0.m33084if(this.f29094do) + m0.m33082do(iMo32748case);
        } else {
            iMo32748case--;
            iM33084if = m0.m33084if(this.f29094do);
        }
        return iM33084if + iMo32748case;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        if (this.f29096if || this.f29095for) {
            return true;
        }
        return this.f29097new.toASN1Primitive().mo32780this().mo32749goto();
    }

    @Override // org.bouncycastle.asn1.Cimport, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        if (this.f29096if) {
            cconst.m32906goto(160, this.f29094do, f29209try);
            return;
        }
        Cfinal cfinalMo32780this = this.f29097new.toASN1Primitive().mo32780this();
        if (!this.f29095for) {
            cconst.m32904final(cfinalMo32780this.mo32749goto() ? 160 : 128, this.f29094do);
            cconst.m32898break(cfinalMo32780this);
        } else {
            cconst.m32904final(160, this.f29094do);
            cconst.m32900catch(cfinalMo32780this.mo32748case());
            cconst.mo32770const(cfinalMo32780this);
        }
    }
}

package org.bouncycastle.asn1;

import android.support.v4.Cnative;
import java.io.IOException;
import java.util.Enumeration;

/* renamed from: org.bouncycastle.asn1.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cvolatile extends Cimport {
    public Cvolatile(int i) {
        super(false, i, new Cpackage());
    }

    public Cvolatile(int i, ASN1Encodable aSN1Encodable) {
        super(true, i, aSN1Encodable);
    }

    public Cvolatile(boolean z, int i, ASN1Encodable aSN1Encodable) {
        super(z, i, aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM33084if;
        if (this.f29096if) {
            return m0.m33084if(this.f29094do) + 1;
        }
        int iMo32748case = this.f29097new.toASN1Primitive().mo32748case();
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
        Enumeration enumerationM33159throw;
        cconst.m32904final(160, this.f29094do);
        cconst.mo32910try(128);
        if (!this.f29096if) {
            if (this.f29095for) {
                cconst.mo32770const(this.f29097new);
            } else {
                ASN1Encodable aSN1Encodable = this.f29097new;
                if (aSN1Encodable instanceof Cclass) {
                    enumerationM33159throw = aSN1Encodable instanceof Cthrows ? ((Cthrows) aSN1Encodable).mo5491import() : new Cthrows(((Cclass) aSN1Encodable).mo5490const()).mo5491import();
                } else if (aSN1Encodable instanceof Csuper) {
                    enumerationM33159throw = ((Csuper) aSN1Encodable).mo33076super();
                } else {
                    if (!(aSN1Encodable instanceof Cthrow)) {
                        throw new Cnative("not implemented: " + this.f29097new.getClass().getName());
                    }
                    enumerationM33159throw = ((Cthrow) aSN1Encodable).m33159throw();
                }
                while (enumerationM33159throw.hasMoreElements()) {
                    cconst.mo32770const((ASN1Encodable) enumerationM33159throw.nextElement());
                }
            }
        }
        cconst.mo32910try(0);
        cconst.mo32910try(0);
    }
}

package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
public class n extends Csuper {

    /* renamed from: if, reason: not valid java name */
    private int f29109if;

    public n() {
        this.f29109if = -1;
    }

    public n(Cimport cimport) {
        super(cimport);
        this.f29109if = -1;
    }

    public n(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f29109if = -1;
    }

    public n(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
        this.f29109if = -1;
    }

    /* renamed from: import, reason: not valid java name */
    private int m33085import() throws IOException {
        if (this.f29109if < 0) {
            int iMo32748case = 0;
            Enumeration enumerationMo33076super = mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                iMo32748case += ((ASN1Encodable) enumerationMo33076super.nextElement()).toASN1Primitive().mo32780this().mo32748case();
            }
            this.f29109if = iMo32748case;
        }
        return this.f29109if;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM33085import = m33085import();
        return m0.m33082do(iM33085import) + 1 + iM33085import;
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        Cconst cconstMo32905for = cconst.mo32905for();
        int iM33085import = m33085import();
        cconst.mo32910try(48);
        cconst.m32900catch(iM33085import);
        Enumeration enumerationMo33076super = mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            cconstMo32905for.mo32770const((ASN1Encodable) enumerationMo33076super.nextElement());
        }
    }
}

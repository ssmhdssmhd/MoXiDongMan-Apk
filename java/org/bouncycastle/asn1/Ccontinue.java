package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* renamed from: org.bouncycastle.asn1.continue, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccontinue extends Cthrow {
    public Ccontinue() {
    }

    public Ccontinue(Cimport cimport) {
        super(cimport, false);
    }

    public Ccontinue(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public Ccontinue(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        Enumeration enumerationM33159throw = m33159throw();
        int iMo32748case = 0;
        while (enumerationM33159throw.hasMoreElements()) {
            iMo32748case += ((ASN1Encodable) enumerationM33159throw.nextElement()).toASN1Primitive().mo32748case();
        }
        return iMo32748case + 2 + 2;
    }

    @Override // org.bouncycastle.asn1.Cthrow, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.mo32910try(49);
        cconst.mo32910try(128);
        Enumeration enumerationM33159throw = m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            cconst.mo32770const((ASN1Encodable) enumerationM33159throw.nextElement());
        }
        cconst.mo32910try(0);
        cconst.mo32910try(0);
    }
}

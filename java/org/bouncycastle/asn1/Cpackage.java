package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* renamed from: org.bouncycastle.asn1.package, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpackage extends Csuper {
    public Cpackage() {
    }

    public Cpackage(Cimport cimport) {
        super(cimport);
    }

    public Cpackage(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public Cpackage(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        Enumeration enumerationMo33076super = mo33076super();
        int iMo32748case = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            iMo32748case += ((ASN1Encodable) enumerationMo33076super.nextElement()).toASN1Primitive().mo32748case();
        }
        return iMo32748case + 2 + 2;
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.mo32910try(48);
        cconst.mo32910try(128);
        Enumeration enumerationMo33076super = mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            cconst.mo32770const((ASN1Encodable) enumerationMo33076super.nextElement());
        }
        cconst.mo32910try(0);
        cconst.mo32910try(0);
    }
}

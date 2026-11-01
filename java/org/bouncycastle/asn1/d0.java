package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
public class d0 extends Csuper {

    /* renamed from: if, reason: not valid java name */
    private int f28984if;

    public d0() {
        this.f28984if = -1;
    }

    public d0(Cimport cimport) {
        super(cimport);
        this.f28984if = -1;
    }

    public d0(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f28984if = -1;
    }

    public d0(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
        this.f28984if = -1;
    }

    /* renamed from: import, reason: not valid java name */
    private int m32912import() throws IOException {
        if (this.f28984if < 0) {
            int iMo32748case = 0;
            Enumeration enumerationMo33076super = mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                iMo32748case += ((ASN1Encodable) enumerationMo33076super.nextElement()).toASN1Primitive().mo32798break().mo32748case();
            }
            this.f28984if = iMo32748case;
        }
        return this.f28984if;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM32912import = m32912import();
        return m0.m33082do(iM32912import) + 1 + iM32912import;
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        Cconst cconstMo32908new = cconst.mo32908new();
        int iM32912import = m32912import();
        cconst.mo32910try(48);
        cconst.m32900catch(iM32912import);
        Enumeration enumerationMo33076super = mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            cconstMo32908new.mo32770const((ASN1Encodable) enumerationMo33076super.nextElement());
        }
    }
}

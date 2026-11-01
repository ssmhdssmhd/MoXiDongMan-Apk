package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
public class e0 extends Cthrow {

    /* renamed from: for, reason: not valid java name */
    private int f28995for;

    public e0() {
        this.f28995for = -1;
    }

    public e0(Cimport cimport) {
        super(cimport, false);
        this.f28995for = -1;
    }

    public e0(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f28995for = -1;
    }

    public e0(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
        this.f28995for = -1;
    }

    /* renamed from: return, reason: not valid java name */
    private int m32925return() throws IOException {
        if (this.f28995for < 0) {
            int iMo32748case = 0;
            Enumeration enumerationM33159throw = m33159throw();
            while (enumerationM33159throw.hasMoreElements()) {
                iMo32748case += ((ASN1Encodable) enumerationM33159throw.nextElement()).toASN1Primitive().mo32798break().mo32748case();
            }
            this.f28995for = iMo32748case;
        }
        return this.f28995for;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM32925return = m32925return();
        return m0.m33082do(iM32925return) + 1 + iM32925return;
    }

    @Override // org.bouncycastle.asn1.Cthrow, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        Cconst cconstMo32908new = cconst.mo32908new();
        int iM32925return = m32925return();
        cconst.mo32910try(49);
        cconst.m32900catch(iM32925return);
        Enumeration enumerationM33159throw = m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            cconstMo32908new.mo32770const((ASN1Encodable) enumerationM33159throw.nextElement());
        }
    }
}

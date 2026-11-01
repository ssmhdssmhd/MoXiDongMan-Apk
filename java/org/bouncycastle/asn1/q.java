package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
public class q extends Cthrow {

    /* renamed from: for, reason: not valid java name */
    private int f29123for;

    public q() {
        this.f29123for = -1;
    }

    public q(Cimport cimport) {
        super(cimport, true);
        this.f29123for = -1;
    }

    public q(Cimport cimport, boolean z) {
        super(cimport, z);
        this.f29123for = -1;
    }

    public q(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f29123for = -1;
    }

    public q(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, true);
        this.f29123for = -1;
    }

    /* renamed from: return, reason: not valid java name */
    private int m33111return() throws IOException {
        if (this.f29123for < 0) {
            int iMo32748case = 0;
            Enumeration enumerationM33159throw = m33159throw();
            while (enumerationM33159throw.hasMoreElements()) {
                iMo32748case += ((ASN1Encodable) enumerationM33159throw.nextElement()).toASN1Primitive().mo32780this().mo32748case();
            }
            this.f29123for = iMo32748case;
        }
        return this.f29123for;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int iM33111return = m33111return();
        return m0.m33082do(iM33111return) + 1 + iM33111return;
    }

    @Override // org.bouncycastle.asn1.Cthrow, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        Cconst cconstMo32905for = cconst.mo32905for();
        int iM33111return = m33111return();
        cconst.mo32910try(49);
        cconst.m32900catch(iM33111return);
        Enumeration enumerationM33159throw = m33159throw();
        while (enumerationM33159throw.hasMoreElements()) {
            cconstMo32905for.mo32770const((ASN1Encodable) enumerationM33159throw.nextElement());
        }
    }
}

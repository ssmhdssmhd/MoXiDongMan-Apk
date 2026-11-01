package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class vh2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cclass f7218do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f7219for;

    /* renamed from: if, reason: not valid java name */
    private Cif f7220if;

    public vh2(Cif cif, Cclass cclass) {
        this(cif, cclass.mo5490const());
    }

    public vh2(Cif cif, byte[] bArr) {
        this.f7220if = cif;
        this.f7218do = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
    }

    public vh2(Cnew cnew) {
        this(cnew, false);
    }

    public vh2(Cnew cnew, boolean z) {
        this.f7219for = cnew.m35454abstract();
        this.f7218do = new org.bouncycastle.asn1.j(cnew.m35459const(z));
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m8867case() {
        byte[] bArrMo5490const = this.f7218do.mo5490const();
        if (bArrMo5490const == null || bArrMo5490const.length <= 0) {
            return false;
        }
        return bArrMo5490const[0] == 2 || bArrMo5490const[0] == 3;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized Cnew m8868new() {
        if (this.f7219for == null) {
            this.f7219for = this.f7220if.m35421class(this.f7218do.mo5490const()).m35454abstract();
        }
        return this.f7219for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7218do;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m8869try() {
        return q3.m6371final(this.f7218do.mo5490const());
    }
}

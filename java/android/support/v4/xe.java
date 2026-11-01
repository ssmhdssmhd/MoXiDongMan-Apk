package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xe extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f7889do;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f7890if;

    public xe(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.f7889do = ccatch;
        this.f7890if = aSN1Encodable;
    }

    private xe(Csuper csuper) {
        this.f7889do = (Ccatch) csuper.mo33075final(0);
        this.f7890if = ((Cimport) csuper.mo33075final(1)).m33065const();
    }

    /* renamed from: case, reason: not valid java name */
    public static xe m9471case(Object obj) {
        if (obj instanceof xe) {
            return (xe) obj;
        }
        if (obj != null) {
            return new xe(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m9472new() {
        return this.f7889do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7889do);
        cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f7890if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m9473try() {
        return this.f7890if;
    }
}

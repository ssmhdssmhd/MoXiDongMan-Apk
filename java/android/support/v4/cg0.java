package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cg0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f773do;

    /* renamed from: for, reason: not valid java name */
    private Ccatch f774for;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f775if;

    public cg0(Ccatch ccatch, Ccatch ccatch2) {
        this.f773do = ccatch;
        this.f775if = ccatch2;
        this.f774for = null;
    }

    public cg0(Ccatch ccatch, Ccatch ccatch2, Ccatch ccatch3) {
        this.f773do = ccatch;
        this.f775if = ccatch2;
        this.f774for = ccatch3;
    }

    public cg0(Csuper csuper) {
        this.f773do = (Ccatch) csuper.mo33075final(0);
        this.f775if = (Ccatch) csuper.mo33075final(1);
        if (csuper.size() > 2) {
            this.f774for = (Ccatch) csuper.mo33075final(2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static cg0 m909case(Object obj) {
        if (obj instanceof cg0) {
            return (cg0) obj;
        }
        if (obj != null) {
            return new cg0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static cg0 m910else(Cimport cimport, boolean z) {
        return m909case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccatch m911goto() {
        return this.f773do;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m912new() {
        return this.f775if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f773do);
        cimport.m3516do(this.f775if);
        Ccatch ccatch = this.f774for;
        if (ccatch != null) {
            cimport.m3516do(ccatch);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m913try() {
        return this.f774for;
    }
}

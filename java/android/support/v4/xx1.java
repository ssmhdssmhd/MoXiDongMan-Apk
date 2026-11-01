package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public b1 f8050do;

    /* renamed from: for, reason: not valid java name */
    public Csuper f8051for;

    /* renamed from: if, reason: not valid java name */
    public Cinstanceof f8052if;

    public xx1(b1 b1Var, Cinstanceof cinstanceof) {
        this.f8050do = b1Var;
        this.f8052if = cinstanceof;
    }

    public xx1(b1 b1Var, Cinstanceof cinstanceof, Csuper csuper) {
        this.f8050do = b1Var;
        this.f8052if = cinstanceof;
        this.f8051for = csuper;
    }

    private xx1(Csuper csuper) {
        this.f8050do = b1.m418try(csuper.mo33075final(0));
        this.f8052if = (Cinstanceof) csuper.mo33075final(1);
        if (csuper.size() == 3) {
            this.f8051for = Csuper.m33130class((Cimport) csuper.mo33075final(2), true);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static xx1 m9612case(Cimport cimport, boolean z) {
        return m9613try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static xx1 m9613try(Object obj) {
        if (obj instanceof xx1) {
            return (xx1) obj;
        }
        if (obj != null) {
            return new xx1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m9614else() {
        return this.f8052if;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m9615goto() {
        return this.f8050do;
    }

    /* renamed from: new, reason: not valid java name */
    public Csuper m9616new() {
        return this.f8051for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8050do);
        cimport.m3516do(this.f8052if);
        if (this.f8051for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f8051for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}

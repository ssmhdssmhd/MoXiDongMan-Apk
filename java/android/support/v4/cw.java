package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class cw extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private dw f877do;

    /* renamed from: for, reason: not valid java name */
    private tg0 f878for;

    /* renamed from: if, reason: not valid java name */
    private iw f879if;

    public cw(dw dwVar, iw iwVar) {
        this(dwVar, iwVar, null);
    }

    public cw(dw dwVar, iw iwVar, tg0 tg0Var) {
        this.f877do = dwVar;
        this.f879if = iwVar;
        this.f878for = tg0Var;
    }

    private cw(Csuper csuper) {
        this.f877do = dw.m1551else(csuper.mo33075final(0));
        this.f879if = iw.m3623try(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            this.f878for = tg0.m7877try(csuper.mo33075final(2));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static cw m1033case(Cimport cimport, boolean z) {
        return m1034try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static cw m1034try(Object obj) {
        if (obj instanceof cw) {
            return (cw) obj;
        }
        if (obj != null) {
            return new cw(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public dw m1035else() {
        return this.f877do;
    }

    /* renamed from: goto, reason: not valid java name */
    public tg0 m1036goto() {
        return this.f878for;
    }

    /* renamed from: new, reason: not valid java name */
    public iw m1037new() {
        return this.f879if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f877do);
        cimport.m3516do(this.f879if);
        tg0 tg0Var = this.f878for;
        if (tg0Var != null) {
            cimport.m3516do(tg0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("DVCSRequest {\nrequestInformation: ");
        sb.append(this.f877do);
        sb.append("\ndata: ");
        sb.append(this.f879if);
        sb.append("\n");
        if (this.f878for != null) {
            str = "transactionIdentifier: " + this.f878for + "\n";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("}\n");
        return sb.toString();
    }
}

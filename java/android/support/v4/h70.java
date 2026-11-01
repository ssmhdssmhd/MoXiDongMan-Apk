package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cvolatile;

/* loaded from: classes3.dex */
public class h70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2331do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f2332for;

    /* renamed from: if, reason: not valid java name */
    private b1 f2333if;

    public h70(Ccatch ccatch, b1 b1Var, Cclass cclass) {
        this.f2331do = ccatch;
        this.f2333if = b1Var;
        this.f2332for = cclass;
    }

    private h70(Csuper csuper) {
        if (csuper.size() < 2) {
            throw new IllegalArgumentException("Truncated Sequence Found");
        }
        this.f2331do = (Ccatch) csuper.mo33075final(0);
        this.f2333if = b1.m418try(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            this.f2332for = Cclass.m32797class((Cimport) csuper.mo33075final(2), false);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static h70 m2959else(Object obj) {
        if (obj instanceof h70) {
            return (h70) obj;
        }
        if (obj != null) {
            return new h70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cclass m2960case() {
        return this.f2332for;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m2961new() {
        return this.f2333if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2331do);
        cimport.m3516do(this.f2333if);
        Cclass cclass = this.f2332for;
        if (cclass != null) {
            cimport.m3516do(new Cvolatile(false, 0, cclass));
        }
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m2962try() {
        return this.f2331do;
    }
}

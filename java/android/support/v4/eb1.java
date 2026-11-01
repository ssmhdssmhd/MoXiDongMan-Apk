package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class eb1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private fb1 f1349do;

    /* renamed from: for, reason: not valid java name */
    private Cinstanceof f1350for;

    /* renamed from: if, reason: not valid java name */
    private b1 f1351if;

    public eb1(fb1 fb1Var, b1 b1Var, Cinstanceof cinstanceof) {
        this.f1349do = fb1Var;
        this.f1351if = b1Var;
        this.f1350for = cinstanceof;
    }

    private eb1(Csuper csuper) {
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cimport) {
            Cimport cimport = (Cimport) csuper.mo33075final(0);
            if (cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("Unknown POPOSigningKeyInput tag: " + cimport.getTagNo());
            }
            this.f1349do = fb1.m2239new(cimport.m33065const());
            i = 1;
        }
        this.f1351if = b1.m418try(csuper.mo33075final(i));
        this.f1350for = Cinstanceof.m33068public(csuper.mo33075final(i + 1));
    }

    /* renamed from: case, reason: not valid java name */
    public static eb1 m1763case(Cimport cimport, boolean z) {
        return m1764try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static eb1 m1764try(Object obj) {
        if (obj instanceof eb1) {
            return (eb1) obj;
        }
        if (obj != null) {
            return new eb1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public fb1 m1765else() {
        return this.f1349do;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cinstanceof m1766goto() {
        return this.f1350for;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m1767new() {
        return this.f1351if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f1349do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f1349do));
        }
        cimport.m3516do(this.f1351if);
        cimport.m3516do(this.f1350for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}

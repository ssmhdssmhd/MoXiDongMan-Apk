package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class q4 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public r4 f5243do;

    /* renamed from: for, reason: not valid java name */
    public Cinstanceof f5244for;

    /* renamed from: if, reason: not valid java name */
    public b1 f5245if;

    public q4(r4 r4Var, b1 b1Var, Cinstanceof cinstanceof) {
        this.f5243do = r4Var;
        this.f5245if = b1Var;
        this.f5244for = cinstanceof;
    }

    public q4(Csuper csuper) {
        if (csuper.size() == 3) {
            this.f5243do = r4.m6738goto(csuper.mo33075final(0));
            this.f5245if = b1.m418try(csuper.mo33075final(1));
            this.f5244for = Cinstanceof.m33068public(csuper.mo33075final(2));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static q4 m6399try(Object obj) {
        if (obj instanceof q4) {
            return (q4) obj;
        }
        if (obj != null) {
            return new q4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m6400case() {
        return this.f5245if;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m6401else() {
        return this.f5244for;
    }

    /* renamed from: new, reason: not valid java name */
    public r4 m6402new() {
        return this.f5243do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5243do);
        cimport.m3516do(this.f5245if);
        cimport.m3516do(this.f5244for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}

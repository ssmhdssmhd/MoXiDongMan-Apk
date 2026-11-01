package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public zg f8213do;

    /* renamed from: for, reason: not valid java name */
    public Cinstanceof f8214for;

    /* renamed from: if, reason: not valid java name */
    public b1 f8215if;

    public yg() {
        this.f8213do = null;
        this.f8215if = null;
        this.f8214for = null;
    }

    public yg(zg zgVar, b1 b1Var, Cinstanceof cinstanceof) {
        this.f8213do = null;
        this.f8215if = null;
        this.f8214for = null;
        this.f8213do = zgVar;
        this.f8215if = b1Var;
        this.f8214for = cinstanceof;
    }

    public yg(Csuper csuper) {
        this.f8213do = null;
        this.f8215if = null;
        this.f8214for = null;
        this.f8213do = zg.m10182try(csuper.mo33075final(0));
        this.f8215if = b1.m418try(csuper.mo33075final(1));
        this.f8214for = (Cinstanceof) csuper.mo33075final(2);
    }

    /* renamed from: try, reason: not valid java name */
    public static yg m9835try(Object obj) {
        if (obj instanceof yg) {
            return (yg) obj;
        }
        if (obj != null) {
            return new yg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cinstanceof m9836case() {
        return this.f8214for;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m9837else() {
        return this.f8215if;
    }

    /* renamed from: new, reason: not valid java name */
    public zg m9838new() {
        return this.f8213do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8213do);
        cimport.m3516do(this.f8215if);
        cimport.m3516do(this.f8214for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}

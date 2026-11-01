package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class m extends Cbreak {

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f3809for = new Ccatch("1.3.6.1.5.5.7.48.2");

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f3810new = new Ccatch("1.3.6.1.5.5.7.48.1");

    /* renamed from: do, reason: not valid java name */
    public Ccatch f3811do;

    /* renamed from: if, reason: not valid java name */
    public tg0 f3812if;

    public m(Ccatch ccatch, tg0 tg0Var) {
        this.f3811do = null;
        this.f3812if = null;
        this.f3811do = ccatch;
        this.f3812if = tg0Var;
    }

    private m(Csuper csuper) {
        this.f3811do = null;
        this.f3812if = null;
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("wrong number of elements in sequence");
        }
        this.f3811do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f3812if = tg0.m7877try(csuper.mo33075final(1));
    }

    /* renamed from: case, reason: not valid java name */
    public static m m4813case(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public tg0 m4814new() {
        return this.f3812if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3811do);
        cimport.m3516do(this.f3812if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        return "AccessDescription: Oid(" + this.f3811do.m32795super() + ")";
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m4815try() {
        return this.f3811do;
    }
}

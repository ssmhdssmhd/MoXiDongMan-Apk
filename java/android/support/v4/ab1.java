package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmp.CMPObjectIdentifiers;

/* loaded from: classes3.dex */
public class ab1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f77do;

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof f78if;

    public ab1(b1 b1Var, Cinstanceof cinstanceof) {
        this.f77do = b1Var;
        this.f78if = cinstanceof;
    }

    public ab1(v91 v91Var, Cinstanceof cinstanceof) {
        this(new b1(CMPObjectIdentifiers.passwordBasedMac, v91Var), cinstanceof);
    }

    private ab1(Csuper csuper) {
        this.f77do = b1.m418try(csuper.mo33075final(0));
        this.f78if = Cinstanceof.m33068public(csuper.mo33075final(1));
    }

    /* renamed from: case, reason: not valid java name */
    public static ab1 m122case(Cimport cimport, boolean z) {
        return m123try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static ab1 m123try(Object obj) {
        if (obj instanceof ab1) {
            return (ab1) obj;
        }
        if (obj != null) {
            return new ab1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m124else() {
        return this.f78if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m125new() {
        return this.f77do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f77do);
        cimport.m3516do(this.f78if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}

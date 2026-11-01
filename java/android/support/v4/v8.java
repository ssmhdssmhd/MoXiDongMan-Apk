package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v8 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private m92 f7109do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f7110for;

    /* renamed from: if, reason: not valid java name */
    private b1 f7111if;

    /* renamed from: new, reason: not valid java name */
    private org.bouncycastle.asn1.g f7112new;

    public v8(m92 m92Var, b1 b1Var, Cclass cclass) {
        this.f7109do = m92Var;
        this.f7111if = b1Var;
        this.f7110for = cclass;
        this.f7112new = null;
    }

    public v8(m92 m92Var, b1 b1Var, Cclass cclass, org.bouncycastle.asn1.g gVar) {
        this.f7109do = m92Var;
        this.f7111if = b1Var;
        this.f7110for = cclass;
        this.f7112new = gVar;
    }

    private v8(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f7109do = m92.m4873try(enumerationMo33076super.nextElement());
        this.f7111if = b1.m418try(enumerationMo33076super.nextElement());
        this.f7110for = Cclass.m32796catch(enumerationMo33076super.nextElement());
        if (enumerationMo33076super.hasMoreElements()) {
            this.f7112new = org.bouncycastle.asn1.g.m33023catch(enumerationMo33076super.nextElement());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static v8 m8770case(Object obj) {
        if (obj instanceof v8) {
            return (v8) obj;
        }
        if (obj != null) {
            return new v8(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public org.bouncycastle.asn1.g m8771else() {
        return this.f7112new;
    }

    /* renamed from: goto, reason: not valid java name */
    public m92 m8772goto() {
        return this.f7109do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m8773new() {
        return this.f7110for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7109do);
        cimport.m3516do(this.f7111if);
        cimport.m3516do(this.f7110for);
        org.bouncycastle.asn1.g gVar = this.f7112new;
        if (gVar != null) {
            cimport.m3516do(gVar);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m8774try() {
        return this.f7111if;
    }
}

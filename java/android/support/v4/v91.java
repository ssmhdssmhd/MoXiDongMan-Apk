package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v91 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f7125do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f7126for;

    /* renamed from: if, reason: not valid java name */
    private b1 f7127if;

    /* renamed from: new, reason: not valid java name */
    private b1 f7128new;

    public v91(Cclass cclass, b1 b1Var, Cgoto cgoto, b1 b1Var2) {
        this.f7125do = cclass;
        this.f7127if = b1Var;
        this.f7126for = cgoto;
        this.f7128new = b1Var2;
    }

    private v91(Csuper csuper) {
        this.f7125do = Cclass.m32796catch(csuper.mo33075final(0));
        this.f7127if = b1.m418try(csuper.mo33075final(1));
        this.f7126for = Cgoto.m33040catch(csuper.mo33075final(2));
        this.f7128new = b1.m418try(csuper.mo33075final(3));
    }

    public v91(byte[] bArr, b1 b1Var, int i, b1 b1Var2) {
        this(new org.bouncycastle.asn1.j(bArr), b1Var, new Cgoto(i), b1Var2);
    }

    /* renamed from: new, reason: not valid java name */
    public static v91 m8810new(Object obj) {
        if (obj instanceof v91) {
            return (v91) obj;
        }
        if (obj != null) {
            return new v91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m8811case() {
        return this.f7128new;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m8812else() {
        return this.f7127if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cclass m8813goto() {
        return this.f7125do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7125do);
        cimport.m3516do(this.f7127if);
        cimport.m3516do(this.f7126for);
        cimport.m3516do(this.f7128new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m8814try() {
        return this.f7126for;
    }
}

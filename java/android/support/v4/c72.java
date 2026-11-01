package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class c72 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f626do;

    /* renamed from: for, reason: not valid java name */
    private wz0 f627for;

    /* renamed from: if, reason: not valid java name */
    private org.bouncycastle.asn1.g f628if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f629new;

    /* renamed from: try, reason: not valid java name */
    private n80 f630try;

    public c72(org.bouncycastle.asn1.g gVar, wz0 wz0Var, Cclass cclass, n80 n80Var) {
        this.f626do = new Cgoto(1L);
        this.f628if = gVar;
        this.f627for = wz0Var;
        this.f629new = cclass;
        this.f630try = n80Var;
    }

    private c72(Csuper csuper) {
        this.f626do = Cgoto.m33040catch(csuper.mo33075final(0));
        int i = 1;
        if (csuper.mo33075final(1) instanceof org.bouncycastle.asn1.g) {
            this.f628if = org.bouncycastle.asn1.g.m33023catch(csuper.mo33075final(1));
            i = 2;
        }
        if ((csuper.mo33075final(i) instanceof wz0) || (csuper.mo33075final(i) instanceof Csuper)) {
            this.f627for = wz0.m9314try(csuper.mo33075final(i));
            i++;
        }
        if (csuper.mo33075final(i) instanceof Cclass) {
            this.f629new = Cclass.m32796catch(csuper.mo33075final(i));
            i++;
        }
        this.f630try = n80.m5121new(csuper.mo33075final(i));
    }

    /* renamed from: case, reason: not valid java name */
    public static c72 m785case(Object obj) {
        return (obj == null || (obj instanceof c72)) ? (c72) obj : new c72(Csuper.m33129catch(obj));
    }

    /* renamed from: else, reason: not valid java name */
    public wz0 m786else() {
        return this.f627for;
    }

    /* renamed from: goto, reason: not valid java name */
    public n80 m787goto() {
        return this.f630try;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m788new() {
        return this.f629new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f626do);
        org.bouncycastle.asn1.g gVar = this.f628if;
        if (gVar != null) {
            cimport.m3516do(gVar);
        }
        wz0 wz0Var = this.f627for;
        if (wz0Var != null) {
            cimport.m3516do(wz0Var);
        }
        Cclass cclass = this.f629new;
        if (cclass != null) {
            cimport.m3516do(cclass);
        }
        cimport.m3516do(this.f630try);
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public org.bouncycastle.asn1.g m789try() {
        return this.f628if;
    }
}

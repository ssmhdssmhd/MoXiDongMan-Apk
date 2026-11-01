package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ko1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private org.bouncycastle.asn1.v f3446case;

    /* renamed from: do, reason: not valid java name */
    private final tg2 f3447do;

    /* renamed from: for, reason: not valid java name */
    private final af f3448for;

    /* renamed from: if, reason: not valid java name */
    private final Cgoto f3449if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f3450new;

    /* renamed from: try, reason: not valid java name */
    private Cclass f3451try;

    public ko1(tg2 tg2Var, Cgoto cgoto, af afVar, Ccase ccase, Cclass cclass, org.bouncycastle.asn1.v vVar) {
        this.f3447do = tg2Var;
        this.f3449if = cgoto;
        this.f3448for = afVar;
        this.f3450new = ccase;
        this.f3451try = cclass;
        this.f3446case = vVar;
    }

    private ko1(Csuper csuper) {
        int i = 3;
        if (csuper.size() < 3 || csuper.size() > 6) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f3447do = tg2.m7884else(csuper.mo33075final(0));
        this.f3449if = Cgoto.m33040catch(csuper.mo33075final(1));
        this.f3448for = af.m191new(csuper.mo33075final(2));
        if (csuper.size() > 3 && (csuper.mo33075final(3).toASN1Primitive() instanceof Ccase)) {
            this.f3450new = Ccase.m32773final(csuper.mo33075final(3));
            i = 4;
        }
        if (csuper.size() > i && (csuper.mo33075final(i).toASN1Primitive() instanceof Cclass)) {
            this.f3451try = Cclass.m32796catch(csuper.mo33075final(i));
            i++;
        }
        if (csuper.size() <= i || !(csuper.mo33075final(i).toASN1Primitive() instanceof org.bouncycastle.asn1.v)) {
            return;
        }
        this.f3446case = org.bouncycastle.asn1.v.m33177catch(csuper.mo33075final(i));
    }

    /* renamed from: try, reason: not valid java name */
    public static ko1 m4447try(Object obj) {
        if (obj instanceof ko1) {
            return (ko1) obj;
        }
        if (obj != null) {
            return new ko1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public af m4448break() {
        return this.f3448for;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m4449case() {
        return this.f3450new;
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m4450catch() {
        return this.f3449if.m33044final();
    }

    /* renamed from: class, reason: not valid java name */
    public void m4451class(org.bouncycastle.asn1.v vVar) {
        this.f3446case = vVar;
    }

    /* renamed from: const, reason: not valid java name */
    public void m4452const(Ccase ccase) {
        this.f3450new = ccase;
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m4453else() {
        return this.f3447do;
    }

    /* renamed from: final, reason: not valid java name */
    public void m4454final(Cclass cclass) {
        this.f3451try = cclass;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m4455goto() {
        Cclass cclass = this.f3451try;
        if (cclass != null) {
            return q3.m6371final(cclass.mo5490const());
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public org.bouncycastle.asn1.v m4456new() {
        return this.f3446case;
    }

    /* renamed from: this, reason: not valid java name */
    public Cclass m4457this() {
        return this.f3451try;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3447do);
        cimport.m3516do(this.f3449if);
        cimport.m3516do(this.f3448for);
        Ccase ccase = this.f3450new;
        if (ccase != null) {
            cimport.m3516do(ccase);
        }
        Cclass cclass = this.f3451try;
        if (cclass != null) {
            cimport.m3516do(cclass);
        }
        org.bouncycastle.asn1.v vVar = this.f3446case;
        if (vVar != null) {
            cimport.m3516do(vVar);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}

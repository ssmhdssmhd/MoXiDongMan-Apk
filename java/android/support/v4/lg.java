package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class lg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3646do;

    /* renamed from: for, reason: not valid java name */
    private ah f3647for;

    /* renamed from: if, reason: not valid java name */
    private xa1 f3648if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f3649new;

    public lg(Cgoto cgoto, xa1 xa1Var) {
        this(cgoto, xa1Var, null, null);
    }

    public lg(Cgoto cgoto, xa1 xa1Var, ah ahVar, Cclass cclass) {
        if (cgoto == null) {
            throw new IllegalArgumentException("'certReqId' cannot be null");
        }
        if (xa1Var == null) {
            throw new IllegalArgumentException("'status' cannot be null");
        }
        this.f3646do = cgoto;
        this.f3648if = xa1Var;
        this.f3647for = ahVar;
        this.f3649new = cclass;
    }

    private lg(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        this.f3646do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f3648if = xa1.m9444try(csuper.mo33075final(1));
        if (csuper.size() >= 3) {
            if (csuper.size() == 3) {
                aSN1EncodableMo33075final = csuper.mo33075final(2);
                if (!(aSN1EncodableMo33075final instanceof Cclass)) {
                    this.f3647for = ah.m245try(aSN1EncodableMo33075final);
                    return;
                }
            } else {
                this.f3647for = ah.m245try(csuper.mo33075final(2));
                aSN1EncodableMo33075final = csuper.mo33075final(3);
            }
            this.f3649new = Cclass.m32796catch(aSN1EncodableMo33075final);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static lg m4648case(Object obj) {
        if (obj instanceof lg) {
            return (lg) obj;
        }
        if (obj != null) {
            return new lg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public xa1 m4649else() {
        return this.f3648if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m4650new() {
        return this.f3646do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3646do);
        cimport.m3516do(this.f3648if);
        ah ahVar = this.f3647for;
        if (ahVar != null) {
            cimport.m3516do(ahVar);
        }
        Cclass cclass = this.f3649new;
        if (cclass != null) {
            cimport.m3516do(cclass);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ah m4651try() {
        return this.f3647for;
    }
}

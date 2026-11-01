package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class xa1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f7852do;

    /* renamed from: for, reason: not valid java name */
    public Cinstanceof f7853for;

    /* renamed from: if, reason: not valid java name */
    public pa1 f7854if;

    public xa1(wa1 wa1Var) {
        this.f7852do = Cgoto.m33040catch(wa1Var.toASN1Primitive());
    }

    public xa1(wa1 wa1Var, pa1 pa1Var) {
        this.f7852do = Cgoto.m33040catch(wa1Var.toASN1Primitive());
        this.f7854if = pa1Var;
    }

    public xa1(wa1 wa1Var, pa1 pa1Var, oa1 oa1Var) {
        this.f7852do = Cgoto.m33040catch(wa1Var.toASN1Primitive());
        this.f7854if = pa1Var;
        this.f7853for = oa1Var;
    }

    private xa1(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        this.f7852do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f7854if = null;
        this.f7853for = null;
        if (csuper.size() > 2) {
            this.f7854if = pa1.m5928new(csuper.mo33075final(1));
            aSN1EncodableMo33075final = csuper.mo33075final(2);
        } else {
            if (csuper.size() <= 1) {
                return;
            }
            aSN1EncodableMo33075final = csuper.mo33075final(1);
            if (!(aSN1EncodableMo33075final instanceof Cinstanceof)) {
                this.f7854if = pa1.m5928new(aSN1EncodableMo33075final);
                return;
            }
        }
        this.f7853for = Cinstanceof.m33068public(aSN1EncodableMo33075final);
    }

    /* renamed from: case, reason: not valid java name */
    public static xa1 m9443case(Cimport cimport, boolean z) {
        return m9444try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static xa1 m9444try(Object obj) {
        if (obj instanceof xa1) {
            return (xa1) obj;
        }
        if (obj != null) {
            return new xa1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m9445else() {
        return this.f7852do.m33044final();
    }

    /* renamed from: goto, reason: not valid java name */
    public pa1 m9446goto() {
        return this.f7854if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cinstanceof m9447new() {
        return this.f7853for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7852do);
        pa1 pa1Var = this.f7854if;
        if (pa1Var != null) {
            cimport.m3516do(pa1Var);
        }
        Cinstanceof cinstanceof = this.f7853for;
        if (cinstanceof != null) {
            cimport.m3516do(cinstanceof);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}

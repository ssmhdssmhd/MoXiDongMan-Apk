package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class je1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto[] f3067do;

    /* renamed from: for, reason: not valid java name */
    private pa1[] f3068for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto[] f3069if;

    public je1(Cgoto cgoto, Cgoto cgoto2) {
        this(cgoto, cgoto2, null);
    }

    public je1(Cgoto cgoto, Cgoto cgoto2, pa1 pa1Var) {
        this.f3067do = new Cgoto[]{cgoto};
        this.f3069if = new Cgoto[]{cgoto2};
        this.f3068for = new pa1[]{pa1Var};
    }

    private je1(Csuper csuper) {
        this.f3067do = new Cgoto[csuper.size()];
        this.f3069if = new Cgoto[csuper.size()];
        this.f3068for = new pa1[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(i));
            this.f3067do[i] = Cgoto.m33040catch(csuperM33129catch.mo33075final(0));
            this.f3069if[i] = Cgoto.m33040catch(csuperM33129catch.mo33075final(1));
            if (csuperM33129catch.size() > 2) {
                this.f3068for[i] = pa1.m5928new(csuperM33129catch.mo33075final(2));
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static je1 m3848case(Object obj) {
        if (obj instanceof je1) {
            return (je1) obj;
        }
        if (obj != null) {
            return new je1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public pa1 m3849else(int i) {
        return this.f3068for[i];
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m3850new(int i) {
        return this.f3067do[i];
    }

    public int size() {
        return this.f3067do.length;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        for (int i = 0; i != this.f3067do.length; i++) {
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(this.f3067do[i]);
            cimport2.m3516do(this.f3069if[i]);
            pa1[] pa1VarArr = this.f3068for;
            if (pa1VarArr[i] != null) {
                cimport2.m3516do(pa1VarArr[i]);
            }
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m3851try(int i) {
        return this.f3069if[i];
    }
}

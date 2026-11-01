package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class do1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private wa1 f1095do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f1096for;

    /* renamed from: if, reason: not valid java name */
    private dg f1097if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f1098new;

    /* renamed from: try, reason: not valid java name */
    private y90 f1099try;

    private do1(Csuper csuper) {
        this.f1095do = wa1.m9110new(csuper.mo33075final(0));
        this.f1097if = dg.m1330new(csuper.mo33075final(1));
        this.f1096for = Ccase.m32773final(csuper.mo33075final(2));
        this.f1098new = Ccase.m32773final(csuper.mo33075final(3));
        if (csuper.size() > 4) {
            this.f1099try = y90.m9782break(csuper.mo33075final(4));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static do1 m1470else(Object obj) {
        if (obj instanceof do1) {
            return (do1) obj;
        }
        if (obj != null) {
            return new do1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public y90 m1471case() {
        return this.f1099try;
    }

    /* renamed from: goto, reason: not valid java name */
    public wa1 m1472goto() {
        return this.f1095do;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m1473new() {
        return this.f1098new;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccase m1474this() {
        return this.f1096for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1095do);
        cimport.m3516do(this.f1097if);
        cimport.m3516do(this.f1096for);
        cimport.m3516do(this.f1098new);
        y90 y90Var = this.f1099try;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public dg m1475try() {
        return this.f1097if;
    }
}

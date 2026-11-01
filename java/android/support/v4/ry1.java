package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ry1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private g10 f5963do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f5964for;

    /* renamed from: if, reason: not valid java name */
    private g10 f5965if;

    private ry1(g10 g10Var, g10 g10Var2, Csuper csuper) {
        if (csuper != null && csuper.size() > 6) {
            throw new IllegalArgumentException("postal address must contain less than 6 strings");
        }
        this.f5963do = g10Var;
        this.f5965if = g10Var2;
        this.f5964for = csuper;
    }

    public ry1(g10 g10Var, g10 g10Var2, g10[] g10VarArr) {
        this(g10Var, g10Var2, new org.bouncycastle.asn1.n(g10VarArr));
    }

    private ry1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f5963do = g10.m2503try(cimport, true);
            } else if (tagNo == 1) {
                this.f5965if = g10.m2503try(cimport, true);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f5964for = cimport.m33066final() ? Csuper.m33130class(cimport, true) : Csuper.m33130class(cimport, false);
                Csuper csuper2 = this.f5964for;
                if (csuper2 != null && csuper2.size() > 6) {
                    throw new IllegalArgumentException("postal address must contain less than 6 strings");
                }
            }
        }
    }

    public ry1(org.bouncycastle.asn1.v vVar, org.bouncycastle.asn1.v vVar2, Csuper csuper) {
        this(g10.m2502new(vVar), g10.m2502new(vVar2), csuper);
    }

    /* renamed from: case, reason: not valid java name */
    public static ry1 m7201case(Object obj) {
        return (obj == null || (obj instanceof ry1)) ? (ry1) obj : new ry1(Csuper.m33129catch(obj));
    }

    /* renamed from: break, reason: not valid java name */
    public Csuper m7202break() {
        return this.f5964for;
    }

    /* renamed from: else, reason: not valid java name */
    public g10 m7203else() {
        return this.f5965if;
    }

    /* renamed from: goto, reason: not valid java name */
    public org.bouncycastle.asn1.v m7204goto() {
        if (this.f5965if == null) {
            return null;
        }
        return new org.bouncycastle.asn1.v(m7203else().getString());
    }

    /* renamed from: new, reason: not valid java name */
    public g10 m7205new() {
        return this.f5963do;
    }

    /* renamed from: this, reason: not valid java name */
    public g10[] m7206this() {
        Csuper csuper = this.f5964for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        g10[] g10VarArr = new g10[size];
        for (int i = 0; i != size; i++) {
            g10VarArr[i] = g10.m2502new(this.f5964for.mo33075final(i));
        }
        return g10VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5963do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f5963do));
        }
        if (this.f5965if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f5965if));
        }
        if (this.f5964for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f5964for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public org.bouncycastle.asn1.v m7207try() {
        if (this.f5963do == null) {
            return null;
        }
        return new org.bouncycastle.asn1.v(m7205new().getString());
    }
}

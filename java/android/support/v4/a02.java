package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class a02 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private cg f4do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f5for;

    /* renamed from: if, reason: not valid java name */
    private mg f6if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f7new;

    /* renamed from: try, reason: not valid java name */
    private y90 f8try;

    public a02(cg cgVar, mg mgVar, Ccase ccase, Ccase ccase2, fh2 fh2Var) {
        this(cgVar, mgVar, ccase, ccase2, y90.m9782break(fh2Var));
    }

    public a02(cg cgVar, mg mgVar, Ccase ccase, Ccase ccase2, y90 y90Var) {
        this.f4do = cgVar;
        this.f6if = mgVar;
        this.f5for = ccase;
        this.f7new = ccase2;
        this.f8try = y90Var;
    }

    private a02(Csuper csuper) {
        Cimport cimport;
        this.f4do = cg.m904try(csuper.mo33075final(0));
        this.f6if = mg.m4925new(csuper.mo33075final(1));
        this.f5for = Ccase.m32773final(csuper.mo33075final(2));
        if (csuper.size() > 4) {
            this.f7new = Ccase.m32775super((Cimport) csuper.mo33075final(3), true);
            cimport = (Cimport) csuper.mo33075final(4);
        } else {
            if (csuper.size() <= 3) {
                return;
            }
            cimport = (Cimport) csuper.mo33075final(3);
            if (cimport.getTagNo() == 0) {
                this.f7new = Ccase.m32775super(cimport, true);
                return;
            }
        }
        this.f8try = y90.m9783catch(cimport, true);
    }

    /* renamed from: case, reason: not valid java name */
    public static a02 m4case(Object obj) {
        if (obj instanceof a02) {
            return (a02) obj;
        }
        if (obj != null) {
            return new a02(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static a02 m5else(Cimport cimport, boolean z) {
        return m4case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Ccase m6break() {
        return this.f5for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccase m7goto() {
        return this.f7new;
    }

    /* renamed from: new, reason: not valid java name */
    public cg m8new() {
        return this.f4do;
    }

    /* renamed from: this, reason: not valid java name */
    public y90 m9this() {
        return this.f8try;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4do);
        cimport.m3516do(this.f6if);
        cimport.m3516do(this.f5for);
        if (this.f7new != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f7new));
        }
        if (this.f8try != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f8try));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public mg m10try() {
        return this.f6if;
    }
}

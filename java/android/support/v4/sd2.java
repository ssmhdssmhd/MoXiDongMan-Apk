package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class sd2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public ug0 f6127do;

    /* renamed from: for, reason: not valid java name */
    public q51 f6128for;

    /* renamed from: if, reason: not valid java name */
    public co0 f6129if;

    public sd2(ug0 ug0Var) {
        this(ug0Var, null, null);
    }

    public sd2(ug0 ug0Var, co0 co0Var) {
        this(ug0Var, co0Var, null);
    }

    public sd2(ug0 ug0Var, co0 co0Var, q51 q51Var) {
        this.f6127do = ug0Var;
        this.f6129if = co0Var;
        this.f6128for = q51Var;
    }

    public sd2(ug0 ug0Var, q51 q51Var) {
        this(ug0Var, null, q51Var);
    }

    public sd2(Csuper csuper) {
        int i;
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        if (csuper.mo33075final(0) instanceof Cimport) {
            i = 0;
        } else {
            this.f6127do = ug0.m8436case(csuper.mo33075final(0));
            i = 1;
        }
        while (i != csuper.size()) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            if (cimportM33063catch.getTagNo() == 0) {
                this.f6129if = co0.m981try(cimportM33063catch, false);
            } else {
                if (cimportM33063catch.getTagNo() != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + cimportM33063catch.getTagNo());
                }
                this.f6128for = q51.m6414else(cimportM33063catch, false);
            }
            i++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static sd2 m7366case(Cimport cimport, boolean z) {
        return m7367try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static sd2 m7367try(Object obj) {
        if (obj instanceof sd2) {
            return (sd2) obj;
        }
        if (obj != null) {
            return new sd2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public ug0 m7368else() {
        return this.f6127do;
    }

    /* renamed from: goto, reason: not valid java name */
    public q51 m7369goto() {
        return this.f6128for;
    }

    /* renamed from: new, reason: not valid java name */
    public co0 m7370new() {
        return this.f6129if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        ug0 ug0Var = this.f6127do;
        if (ug0Var != null) {
            cimport.m3516do(ug0Var);
        }
        if (this.f6129if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f6129if));
        }
        if (this.f6128for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f6128for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}

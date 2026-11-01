package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class rj0 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f5832case = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f5833try = 0;

    /* renamed from: do, reason: not valid java name */
    public co0 f5834do;

    /* renamed from: for, reason: not valid java name */
    public q51 f5835for;

    /* renamed from: if, reason: not valid java name */
    public ug0 f5836if;

    /* renamed from: new, reason: not valid java name */
    private int f5837new;

    public rj0(co0 co0Var) {
        this(co0Var, 1);
    }

    public rj0(co0 co0Var, int i) {
        this.f5837new = 1;
        this.f5834do = co0Var;
        this.f5837new = i;
    }

    public rj0(q51 q51Var) {
        this.f5837new = 1;
        this.f5835for = q51Var;
    }

    public rj0(ug0 ug0Var) {
        this(ug0Var, 1);
    }

    public rj0(ug0 ug0Var, int i) {
        this.f5837new = 1;
        this.f5836if = ug0Var;
        this.f5837new = i;
    }

    private rj0(Cimport cimport) {
        this.f5837new = 1;
        int tagNo = cimport.getTagNo();
        if (tagNo == 0) {
            this.f5834do = co0.m981try(cimport, true);
        } else {
            if (tagNo != 1) {
                throw new IllegalArgumentException("unknown tag in Holder");
            }
            this.f5836if = ug0.m8437else(cimport, true);
        }
        this.f5837new = 0;
    }

    private rj0(Csuper csuper) {
        this.f5837new = 1;
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f5834do = co0.m981try(cimportM33063catch, false);
            } else if (tagNo == 1) {
                this.f5836if = ug0.m8437else(cimportM33063catch, false);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("unknown tag in Holder");
                }
                this.f5835for = q51.m6414else(cimportM33063catch, false);
            }
        }
        this.f5837new = 1;
    }

    /* renamed from: case, reason: not valid java name */
    public static rj0 m6998case(Object obj) {
        if (obj instanceof rj0) {
            return (rj0) obj;
        }
        if (obj instanceof Cimport) {
            return new rj0(Cimport.m33063catch(obj));
        }
        if (obj != null) {
            return new rj0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public q51 m6999else() {
        return this.f5835for;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m7000goto() {
        return this.f5837new;
    }

    /* renamed from: new, reason: not valid java name */
    public co0 m7001new() {
        return this.f5834do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        if (this.f5837new != 1) {
            return this.f5836if != null ? new org.bouncycastle.asn1.u(true, 1, this.f5836if) : new org.bouncycastle.asn1.u(true, 0, this.f5834do);
        }
        Cimport cimport = new Cimport();
        if (this.f5834do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f5834do));
        }
        if (this.f5836if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f5836if));
        }
        if (this.f5835for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f5835for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m7002try() {
        return this.f5836if;
    }
}

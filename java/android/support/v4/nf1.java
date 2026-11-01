package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class nf1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private String f4202do;

    /* renamed from: for, reason: not valid java name */
    private tg0 f4203for;

    /* renamed from: if, reason: not valid java name */
    private g10 f4204if;

    /* renamed from: new, reason: not valid java name */
    private co0 f4205new;

    public nf1(String str, g10 g10Var, co0 co0Var) {
        this.f4202do = str;
        this.f4204if = g10Var;
        this.f4203for = null;
        this.f4205new = co0Var;
    }

    public nf1(String str, g10 g10Var, tg0 tg0Var) {
        this.f4202do = str;
        this.f4204if = g10Var;
        this.f4203for = tg0Var;
        this.f4205new = null;
    }

    private nf1(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 1) {
                this.f4202do = org.bouncycastle.asn1.m.m33079class(cimportM33063catch, true).getString();
            } else if (tagNo == 2) {
                this.f4204if = g10.m2503try(cimportM33063catch, true);
            } else {
                if (tagNo != 3) {
                    throw new IllegalArgumentException("Bad tag number: " + cimportM33063catch.getTagNo());
                }
                Cfinal cfinalM33065const = cimportM33063catch.m33065const();
                if (cfinalM33065const instanceof Cimport) {
                    this.f4203for = tg0.m7877try(cfinalM33065const);
                } else {
                    this.f4205new = co0.m980new(cfinalM33065const);
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static nf1 m5198case(Object obj) {
        if (obj == null || (obj instanceof nf1)) {
            return (nf1) obj;
        }
        if (obj instanceof Csuper) {
            return new nf1((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public tg0 m5199else() {
        return this.f4203for;
    }

    /* renamed from: goto, reason: not valid java name */
    public g10 m5200goto() {
        return this.f4204if;
    }

    /* renamed from: new, reason: not valid java name */
    public co0 m5201new() {
        return this.f4205new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f4202do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, new org.bouncycastle.asn1.m(this.f4202do, true)));
        }
        if (this.f4204if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f4204if));
        }
        cimport.m3516do(this.f4203for != null ? new org.bouncycastle.asn1.u(true, 3, this.f4203for) : new org.bouncycastle.asn1.u(true, 3, this.f4205new));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public String m5202try() {
        return this.f4202do;
    }
}

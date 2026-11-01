package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class qf1 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f5363break;

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f5364case;

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f5365catch;

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f5366class;

    /* renamed from: const, reason: not valid java name */
    public static final Ccatch f5367const;

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f5368else;

    /* renamed from: final, reason: not valid java name */
    public static final Ccatch f5369final;

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f5370goto;

    /* renamed from: import, reason: not valid java name */
    public static final Ccatch f5371import;

    /* renamed from: native, reason: not valid java name */
    public static final Ccatch f5372native;

    /* renamed from: public, reason: not valid java name */
    public static final Ccatch f5373public;

    /* renamed from: return, reason: not valid java name */
    public static final Ccatch f5374return;

    /* renamed from: static, reason: not valid java name */
    public static final Ccatch f5375static;

    /* renamed from: super, reason: not valid java name */
    public static final Ccatch f5376super;

    /* renamed from: switch, reason: not valid java name */
    public static final Ccatch f5377switch;

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f5378this;

    /* renamed from: throw, reason: not valid java name */
    public static final Ccatch f5379throw;

    /* renamed from: throws, reason: not valid java name */
    public static final Ccatch f5380throws;

    /* renamed from: while, reason: not valid java name */
    public static final Ccatch f5381while;

    /* renamed from: do, reason: not valid java name */
    private f21 f5382do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f5383for;

    /* renamed from: if, reason: not valid java name */
    private Csuper f5384if;

    /* renamed from: new, reason: not valid java name */
    private String f5385new;

    /* renamed from: try, reason: not valid java name */
    private Cclass f5386try;

    static {
        StringBuilder sb = new StringBuilder();
        Ccatch ccatch = f21.f1674new;
        sb.append(ccatch);
        sb.append(".1");
        f5364case = new Ccatch(sb.toString());
        f5368else = new Ccatch(ccatch + ".2");
        f5370goto = new Ccatch(ccatch + ".3");
        f5378this = new Ccatch(ccatch + ".4");
        f5363break = new Ccatch(ccatch + ".5");
        f5365catch = new Ccatch(ccatch + ".6");
        f5366class = new Ccatch(ccatch + ".7");
        f5367const = new Ccatch(ccatch + ".8");
        f5369final = new Ccatch(ccatch + ".9");
        f5376super = new Ccatch(ccatch + ".10");
        f5379throw = new Ccatch(ccatch + ".11");
        f5381while = new Ccatch(ccatch + ".12");
        f5371import = new Ccatch(ccatch + ".13");
        f5372native = new Ccatch(ccatch + ".14");
        f5373public = new Ccatch(ccatch + ".15");
        f5374return = new Ccatch(ccatch + ".16");
        f5375static = new Ccatch(ccatch + ".17");
        f5377switch = new Ccatch(ccatch + ".18");
        f5380throws = new Ccatch(ccatch + ".19");
    }

    public qf1(f21 f21Var, g10[] g10VarArr, Ccatch[] ccatchArr, String str, Cclass cclass) {
        this.f5382do = f21Var;
        Cimport cimport = new Cimport();
        for (int i = 0; i != g10VarArr.length; i++) {
            cimport.m3516do(g10VarArr[i]);
        }
        this.f5384if = new org.bouncycastle.asn1.n(cimport);
        if (ccatchArr != null) {
            Cimport cimport2 = new Cimport();
            for (int i2 = 0; i2 != ccatchArr.length; i2++) {
                cimport2.m3516do(ccatchArr[i2]);
            }
            this.f5383for = new org.bouncycastle.asn1.n(cimport2);
        }
        this.f5385new = str;
        this.f5386try = cclass;
    }

    private qf1(Csuper csuper) {
        if (csuper.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
        if (aSN1Encodable instanceof Cimport) {
            Cimport cimport = (Cimport) aSN1Encodable;
            if (cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("Bad tag number: " + cimport.getTagNo());
            }
            this.f5382do = f21.m2121try(cimport, true);
            aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
        }
        this.f5384if = Csuper.m33129catch(aSN1Encodable);
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable2 = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable2 instanceof Csuper) {
                this.f5383for = Csuper.m33129catch(aSN1Encodable2);
            } else if (aSN1Encodable2 instanceof org.bouncycastle.asn1.m) {
                this.f5385new = org.bouncycastle.asn1.m.m33078catch(aSN1Encodable2).getString();
            } else {
                if (!(aSN1Encodable2 instanceof Cclass)) {
                    throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable2.getClass());
                }
                this.f5386try = Cclass.m32796catch(aSN1Encodable2);
            }
        }
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable3 = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable3 instanceof org.bouncycastle.asn1.m) {
                this.f5385new = org.bouncycastle.asn1.m.m33078catch(aSN1Encodable3).getString();
            } else {
                if (!(aSN1Encodable3 instanceof org.bouncycastle.asn1.j)) {
                    throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable3.getClass());
                }
                this.f5386try = (org.bouncycastle.asn1.j) aSN1Encodable3;
            }
        }
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable4 = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable4 instanceof org.bouncycastle.asn1.j) {
                this.f5386try = (org.bouncycastle.asn1.j) aSN1Encodable4;
                return;
            }
            throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable4.getClass());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static qf1 m6548try(Object obj) {
        if (obj == null || (obj instanceof qf1)) {
            return (qf1) obj;
        }
        if (obj instanceof Csuper) {
            return new qf1((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public f21 m6549case() {
        return this.f5382do;
    }

    /* renamed from: else, reason: not valid java name */
    public g10[] m6550else() {
        g10[] g10VarArr = new g10[this.f5384if.size()];
        Enumeration enumerationMo33076super = this.f5384if.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            g10VarArr[i] = g10.m2502new(enumerationMo33076super.nextElement());
            i++;
        }
        return g10VarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccatch[] m6551goto() {
        Csuper csuper = this.f5383for;
        int i = 0;
        if (csuper == null) {
            return new Ccatch[0];
        }
        Ccatch[] ccatchArr = new Ccatch[csuper.size()];
        Enumeration enumerationMo33076super = this.f5383for.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ccatchArr[i] = Ccatch.m32790throw(enumerationMo33076super.nextElement());
            i++;
        }
        return ccatchArr;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m6552new() {
        return this.f5386try;
    }

    /* renamed from: this, reason: not valid java name */
    public String m6553this() {
        return this.f5385new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5382do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f5382do));
        }
        cimport.m3516do(this.f5384if);
        Csuper csuper = this.f5383for;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        String str = this.f5385new;
        if (str != null) {
            cimport.m3516do(new org.bouncycastle.asn1.m(str, true));
        }
        Cclass cclass = this.f5386try;
        if (cclass != null) {
            cimport.m3516do(cclass);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}

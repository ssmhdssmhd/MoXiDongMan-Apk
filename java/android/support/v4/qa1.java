package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class qa1 extends Cbreak {

    /* renamed from: const, reason: not valid java name */
    public static final tg0 f5306const = new tg0(tg2.m7884else(new org.bouncycastle.asn1.n()));

    /* renamed from: final, reason: not valid java name */
    public static final int f5307final = 1;

    /* renamed from: super, reason: not valid java name */
    public static final int f5308super = 2;

    /* renamed from: break, reason: not valid java name */
    private Cclass f5309break;

    /* renamed from: case, reason: not valid java name */
    private Cclass f5310case;

    /* renamed from: catch, reason: not valid java name */
    private pa1 f5311catch;

    /* renamed from: class, reason: not valid java name */
    private Csuper f5312class;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5313do;

    /* renamed from: else, reason: not valid java name */
    private Cclass f5314else;

    /* renamed from: for, reason: not valid java name */
    private tg0 f5315for;

    /* renamed from: goto, reason: not valid java name */
    private Cclass f5316goto;

    /* renamed from: if, reason: not valid java name */
    private tg0 f5317if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f5318new;

    /* renamed from: this, reason: not valid java name */
    private Cclass f5319this;

    /* renamed from: try, reason: not valid java name */
    private b1 f5320try;

    public qa1(int i, tg0 tg0Var, tg0 tg0Var2) {
        this(new Cgoto(i), tg0Var, tg0Var2);
    }

    private qa1(Cgoto cgoto, tg0 tg0Var, tg0 tg0Var2) {
        this.f5313do = cgoto;
        this.f5317if = tg0Var;
        this.f5315for = tg0Var2;
    }

    private qa1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f5313do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f5317if = tg0.m7877try(enumerationMo33076super.nextElement());
        this.f5315for = tg0.m7877try(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            switch (cimport.getTagNo()) {
                case 0:
                    this.f5318new = Ccase.m32775super(cimport, true);
                    break;
                case 1:
                    this.f5320try = b1.m417case(cimport, true);
                    break;
                case 2:
                    this.f5310case = Cclass.m32797class(cimport, true);
                    break;
                case 3:
                    this.f5314else = Cclass.m32797class(cimport, true);
                    break;
                case 4:
                    this.f5316goto = Cclass.m32797class(cimport, true);
                    break;
                case 5:
                    this.f5319this = Cclass.m32797class(cimport, true);
                    break;
                case 6:
                    this.f5309break = Cclass.m32797class(cimport, true);
                    break;
                case 7:
                    this.f5311catch = pa1.m5929try(cimport, true);
                    break;
                case 8:
                    this.f5312class = Csuper.m33130class(cimport, true);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag number: " + cimport.getTagNo());
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static qa1 m6450else(Object obj) {
        if (obj instanceof qa1) {
            return (qa1) obj;
        }
        if (obj != null) {
            return new qa1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m6451new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m6452break() {
        return this.f5313do;
    }

    /* renamed from: case, reason: not valid java name */
    public pm0[] m6453case() {
        Csuper csuper = this.f5312class;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        pm0[] pm0VarArr = new pm0[size];
        for (int i = 0; i < size; i++) {
            pm0VarArr[i] = pm0.m6117case(this.f5312class.mo33075final(i));
        }
        return pm0VarArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cclass m6454catch() {
        return this.f5314else;
    }

    /* renamed from: class, reason: not valid java name */
    public Cclass m6455class() {
        return this.f5309break;
    }

    /* renamed from: const, reason: not valid java name */
    public tg0 m6456const() {
        return this.f5315for;
    }

    /* renamed from: final, reason: not valid java name */
    public tg0 m6457final() {
        return this.f5317if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccase m6458goto() {
        return this.f5318new;
    }

    /* renamed from: super, reason: not valid java name */
    public Cclass m6459super() {
        return this.f5310case;
    }

    /* renamed from: this, reason: not valid java name */
    public b1 m6460this() {
        return this.f5320try;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cclass m6461throw() {
        return this.f5319this;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5313do);
        cimport.m3516do(this.f5317if);
        cimport.m3516do(this.f5315for);
        m6451new(cimport, 0, this.f5318new);
        m6451new(cimport, 1, this.f5320try);
        m6451new(cimport, 2, this.f5310case);
        m6451new(cimport, 3, this.f5314else);
        m6451new(cimport, 4, this.f5316goto);
        m6451new(cimport, 5, this.f5319this);
        m6451new(cimport, 6, this.f5309break);
        m6451new(cimport, 7, this.f5311catch);
        m6451new(cimport, 8, this.f5312class);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public pa1 m6462try() {
        return this.f5311catch;
    }

    /* renamed from: while, reason: not valid java name */
    public Cclass m6463while() {
        return this.f5316goto;
    }
}

package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class og extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private Cinstanceof f4590break;

    /* renamed from: case, reason: not valid java name */
    private e81 f4591case;

    /* renamed from: catch, reason: not valid java name */
    private y90 f4592catch;

    /* renamed from: do, reason: not valid java name */
    private Csuper f4593do;

    /* renamed from: else, reason: not valid java name */
    private tg2 f4594else;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f4595for;

    /* renamed from: goto, reason: not valid java name */
    private Ctry f4596goto;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f4597if;

    /* renamed from: new, reason: not valid java name */
    private b1 f4598new;

    /* renamed from: this, reason: not valid java name */
    private Cinstanceof f4599this;

    /* renamed from: try, reason: not valid java name */
    private tg2 f4600try;

    private og(Csuper csuper) {
        this.f4593do = csuper;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            switch (cimport.getTagNo()) {
                case 0:
                    this.f4597if = Cgoto.m33041class(cimport, false);
                    break;
                case 1:
                    this.f4595for = Cgoto.m33041class(cimport, false);
                    break;
                case 2:
                    this.f4598new = b1.m417case(cimport, false);
                    break;
                case 3:
                    this.f4600try = tg2.m7885goto(cimport, true);
                    break;
                case 4:
                    this.f4591case = e81.m1687new(Csuper.m33130class(cimport, false));
                    break;
                case 5:
                    this.f4594else = tg2.m7885goto(cimport, true);
                    break;
                case 6:
                    this.f4596goto = Ctry.m33292else(cimport, false);
                    break;
                case 7:
                    this.f4599this = Cinstanceof.m33069return(cimport, false);
                    break;
                case 8:
                    this.f4590break = Cinstanceof.m33069return(cimport, false);
                    break;
                case 9:
                    this.f4592catch = y90.m9783catch(cimport, false);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag: " + cimport.getTagNo());
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static og m5627try(Object obj) {
        if (obj instanceof og) {
            return (og) obj;
        }
        if (obj != null) {
            return new og(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public b1 m5628break() {
        return this.f4598new;
    }

    /* renamed from: case, reason: not valid java name */
    public tg2 m5629case() {
        return this.f4600try;
    }

    /* renamed from: catch, reason: not valid java name */
    public tg2 m5630catch() {
        return this.f4594else;
    }

    /* renamed from: class, reason: not valid java name */
    public Cinstanceof m5631class() {
        return this.f4590break;
    }

    /* renamed from: const, reason: not valid java name */
    public e81 m5632const() {
        return this.f4591case;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m5633else() {
        return this.f4599this;
    }

    /* renamed from: final, reason: not valid java name */
    public int m5634final() {
        Cgoto cgoto = this.f4597if;
        if (cgoto != null) {
            return cgoto.m33044final().intValue();
        }
        return -1;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ctry m5635goto() {
        return this.f4596goto;
    }

    /* renamed from: new, reason: not valid java name */
    public y90 m5636new() {
        return this.f4592catch;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m5637this() {
        return this.f4595for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4593do;
    }
}

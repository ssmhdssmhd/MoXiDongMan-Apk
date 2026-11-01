package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class c42 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private y90 f591break;

    /* renamed from: case, reason: not valid java name */
    private p f592case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f593do;

    /* renamed from: else, reason: not valid java name */
    private Cfor f594else;

    /* renamed from: for, reason: not valid java name */
    private uz0 f595for;

    /* renamed from: goto, reason: not valid java name */
    private Cgoto f596goto;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f597if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f598new;

    /* renamed from: this, reason: not valid java name */
    private tg0 f599this;

    /* renamed from: try, reason: not valid java name */
    private Ccase f600try;

    public c42(Ccatch ccatch, uz0 uz0Var, Cgoto cgoto, Ccase ccase, p pVar, Cfor cfor, Cgoto cgoto2, tg0 tg0Var, y90 y90Var) {
        this.f593do = new Cgoto(1L);
        this.f597if = ccatch;
        this.f595for = uz0Var;
        this.f598new = cgoto;
        this.f600try = ccase;
        this.f592case = pVar;
        this.f594else = cfor;
        this.f596goto = cgoto2;
        this.f599this = tg0Var;
        this.f591break = y90Var;
    }

    private c42(Csuper csuper) {
        Cbreak cbreak;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f593do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f597if = Ccatch.m32790throw(enumerationMo33076super.nextElement());
        this.f595for = uz0.m8703case(enumerationMo33076super.nextElement());
        this.f598new = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f600try = Ccase.m32773final(enumerationMo33076super.nextElement());
        Cfor cforM33021super = Cfor.m33021super(false);
        while (true) {
            this.f594else = cforM33021super;
            while (enumerationMo33076super.hasMoreElements()) {
                cbreak = (Cbreak) enumerationMo33076super.nextElement();
                if (cbreak instanceof Cimport) {
                    Cimport cimport = (Cimport) cbreak;
                    int tagNo = cimport.getTagNo();
                    if (tagNo == 0) {
                        this.f599this = tg0.m7871case(cimport, true);
                    } else {
                        if (tagNo != 1) {
                            throw new IllegalArgumentException("Unknown tag value " + cimport.getTagNo());
                        }
                        this.f591break = y90.m9783catch(cimport, false);
                    }
                } else if ((cbreak instanceof Csuper) || (cbreak instanceof p)) {
                    this.f592case = p.m5823new(cbreak);
                } else if (cbreak instanceof Cfor) {
                    break;
                } else if (cbreak instanceof Cgoto) {
                    this.f596goto = Cgoto.m33040catch(cbreak);
                }
            }
            return;
            cforM33021super = Cfor.m33019const(cbreak);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static c42 m732else(Object obj) {
        if (obj instanceof c42) {
            return (c42) obj;
        }
        if (obj != null) {
            return new c42(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cfor m733break() {
        return this.f594else;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccase m734case() {
        return this.f600try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch m735catch() {
        return this.f597if;
    }

    /* renamed from: class, reason: not valid java name */
    public Cgoto m736class() {
        return this.f598new;
    }

    /* renamed from: const, reason: not valid java name */
    public tg0 m737const() {
        return this.f599this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cgoto m738final() {
        return this.f593do;
    }

    /* renamed from: goto, reason: not valid java name */
    public uz0 m739goto() {
        return this.f595for;
    }

    /* renamed from: new, reason: not valid java name */
    public p m740new() {
        return this.f592case;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m741this() {
        return this.f596goto;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f593do);
        cimport.m3516do(this.f597if);
        cimport.m3516do(this.f595for);
        cimport.m3516do(this.f598new);
        cimport.m3516do(this.f600try);
        p pVar = this.f592case;
        if (pVar != null) {
            cimport.m3516do(pVar);
        }
        Cfor cfor = this.f594else;
        if (cfor != null && cfor.m33022throw()) {
            cimport.m3516do(this.f594else);
        }
        Cgoto cgoto = this.f596goto;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        if (this.f599this != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f599this));
        }
        if (this.f591break != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f591break));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public y90 m742try() {
        return this.f591break;
    }
}

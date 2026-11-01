package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class pg {

    /* renamed from: break, reason: not valid java name */
    private y90 f4952break;

    /* renamed from: case, reason: not valid java name */
    private tg2 f4953case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f4954do;

    /* renamed from: else, reason: not valid java name */
    private Ctry f4955else;

    /* renamed from: for, reason: not valid java name */
    private b1 f4956for;

    /* renamed from: goto, reason: not valid java name */
    private Cinstanceof f4957goto;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f4958if;

    /* renamed from: new, reason: not valid java name */
    private tg2 f4959new;

    /* renamed from: this, reason: not valid java name */
    private Cinstanceof f4960this;

    /* renamed from: try, reason: not valid java name */
    private e81 f4961try;

    /* renamed from: do, reason: not valid java name */
    private void m6005do(Cimport cimport, int i, boolean z, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(z, i, aSN1Encodable));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public pg m6006break(tg2 tg2Var) {
        this.f4953case = tg2Var;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public pg m6007case(Cinstanceof cinstanceof) {
        this.f4957goto = cinstanceof;
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public pg m6008catch(Cinstanceof cinstanceof) {
        this.f4960this = cinstanceof;
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public pg m6009class(e81 e81Var) {
        this.f4961try = e81Var;
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public pg m6010const(int i) {
        this.f4954do = new Cgoto(i);
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public pg m6011else(Ctry ctry) {
        this.f4955else = ctry;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public pg m6012for(y90 y90Var) {
        this.f4952break = y90Var;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public pg m6013goto(Cgoto cgoto) {
        this.f4958if = cgoto;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public og m6014if() {
        Cimport cimport = new Cimport();
        m6005do(cimport, 0, false, this.f4954do);
        m6005do(cimport, 1, false, this.f4958if);
        m6005do(cimport, 2, false, this.f4956for);
        m6005do(cimport, 3, true, this.f4959new);
        m6005do(cimport, 4, false, this.f4961try);
        m6005do(cimport, 5, true, this.f4953case);
        m6005do(cimport, 6, false, this.f4955else);
        m6005do(cimport, 7, false, this.f4957goto);
        m6005do(cimport, 8, false, this.f4960this);
        m6005do(cimport, 9, false, this.f4952break);
        return og.m5627try(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: new, reason: not valid java name */
    public pg m6015new(fh2 fh2Var) {
        return m6012for(y90.m9782break(fh2Var));
    }

    /* renamed from: this, reason: not valid java name */
    public pg m6016this(b1 b1Var) {
        this.f4956for = b1Var;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public pg m6017try(tg2 tg2Var) {
        this.f4959new = tg2Var;
        return this;
    }
}

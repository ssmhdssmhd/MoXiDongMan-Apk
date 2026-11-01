package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ra1 {

    /* renamed from: break, reason: not valid java name */
    private Cclass f5726break;

    /* renamed from: case, reason: not valid java name */
    private Cclass f5727case;

    /* renamed from: catch, reason: not valid java name */
    private pa1 f5728catch;

    /* renamed from: class, reason: not valid java name */
    private Csuper f5729class;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5730do;

    /* renamed from: else, reason: not valid java name */
    private Cclass f5731else;

    /* renamed from: for, reason: not valid java name */
    private tg0 f5732for;

    /* renamed from: goto, reason: not valid java name */
    private Cclass f5733goto;

    /* renamed from: if, reason: not valid java name */
    private tg0 f5734if;

    /* renamed from: new, reason: not valid java name */
    private Ccase f5735new;

    /* renamed from: this, reason: not valid java name */
    private Cclass f5736this;

    /* renamed from: try, reason: not valid java name */
    private b1 f5737try;

    public ra1(int i, tg0 tg0Var, tg0 tg0Var2) {
        this(new Cgoto(i), tg0Var, tg0Var2);
    }

    private ra1(Cgoto cgoto, tg0 tg0Var, tg0 tg0Var2) {
        this.f5730do = cgoto;
        this.f5734if = tg0Var;
        this.f5732for = tg0Var2;
    }

    /* renamed from: do, reason: not valid java name */
    private void m6870do(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static Csuper m6871for(pm0 pm0Var) {
        return new org.bouncycastle.asn1.n(pm0Var);
    }

    /* renamed from: new, reason: not valid java name */
    private static Csuper m6872new(pm0[] pm0VarArr) {
        if (pm0VarArr == null) {
            return null;
        }
        Cimport cimport = new Cimport();
        for (pm0 pm0Var : pm0VarArr) {
            cimport.m3516do(pm0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: break, reason: not valid java name */
    public ra1 m6873break(b1 b1Var) {
        this.f5737try = b1Var;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public ra1 m6874case(pm0 pm0Var) {
        return m6878else(m6871for(pm0Var));
    }

    /* renamed from: catch, reason: not valid java name */
    public ra1 m6875catch(org.bouncycastle.asn1.j jVar) {
        this.f5731else = jVar;
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public ra1 m6876class(byte[] bArr) {
        return m6875catch(bArr == null ? null : new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: const, reason: not valid java name */
    public ra1 m6877const(Cclass cclass) {
        this.f5726break = cclass;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public ra1 m6878else(Csuper csuper) {
        this.f5729class = csuper;
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public ra1 m6879final(byte[] bArr) {
        return m6877const(bArr == null ? null : new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: goto, reason: not valid java name */
    public ra1 m6880goto(pm0[] pm0VarArr) {
        return m6878else(m6872new(pm0VarArr));
    }

    /* renamed from: if, reason: not valid java name */
    public qa1 m6881if() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5730do);
        cimport.m3516do(this.f5734if);
        cimport.m3516do(this.f5732for);
        m6870do(cimport, 0, this.f5735new);
        m6870do(cimport, 1, this.f5737try);
        m6870do(cimport, 2, this.f5727case);
        m6870do(cimport, 3, this.f5731else);
        m6870do(cimport, 4, this.f5733goto);
        m6870do(cimport, 5, this.f5736this);
        m6870do(cimport, 6, this.f5726break);
        m6870do(cimport, 7, this.f5728catch);
        m6870do(cimport, 8, this.f5729class);
        this.f5735new = null;
        this.f5737try = null;
        this.f5727case = null;
        this.f5731else = null;
        this.f5733goto = null;
        this.f5736this = null;
        this.f5726break = null;
        this.f5728catch = null;
        this.f5729class = null;
        return qa1.m6450else(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: import, reason: not valid java name */
    public ra1 m6882import(byte[] bArr) {
        return m6889while(bArr == null ? null : new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: native, reason: not valid java name */
    public ra1 m6883native(Cclass cclass) {
        this.f5733goto = cclass;
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public ra1 m6884public(byte[] bArr) {
        return m6883native(bArr == null ? null : new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: super, reason: not valid java name */
    public ra1 m6885super(Cclass cclass) {
        this.f5727case = cclass;
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public ra1 m6886this(Ccase ccase) {
        this.f5735new = ccase;
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public ra1 m6887throw(byte[] bArr) {
        return m6885super(bArr == null ? null : new org.bouncycastle.asn1.j(bArr));
    }

    /* renamed from: try, reason: not valid java name */
    public ra1 m6888try(pa1 pa1Var) {
        this.f5728catch = pa1Var;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public ra1 m6889while(Cclass cclass) {
        this.f5736this = cclass;
        return this;
    }
}

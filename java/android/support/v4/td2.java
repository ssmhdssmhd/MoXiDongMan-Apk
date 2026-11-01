package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class td2 {

    /* renamed from: goto, reason: not valid java name */
    private static final Csuper[] f6485goto = {m7815else(0), m7815else(1), m7815else(2), m7815else(3), m7815else(4), m7815else(5), m7815else(6), m7815else(7), m7815else(8), m7815else(9), m7815else(10)};

    /* renamed from: for, reason: not valid java name */
    private tg2 f6489for;

    /* renamed from: if, reason: not valid java name */
    private b1 f6490if;

    /* renamed from: new, reason: not valid java name */
    private t62 f6491new;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f6487do = new Cgoto(1);

    /* renamed from: try, reason: not valid java name */
    private t62 f6492try = null;

    /* renamed from: case, reason: not valid java name */
    private y90 f6486case = null;

    /* renamed from: else, reason: not valid java name */
    private Cimport f6488else = new Cimport();

    /* renamed from: case, reason: not valid java name */
    private static Csuper m7814case(Ccase ccase) {
        Cimport cimport = new Cimport();
        try {
            cimport.m3516do(Cif.f29318final);
            cimport.m3516do(new org.bouncycastle.asn1.j(ccase.getEncoded()));
            return new org.bouncycastle.asn1.n(cimport);
        } catch (IOException e) {
            throw new IllegalArgumentException("error encoding reason: " + e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static Csuper m7815else(int i) {
        Cimport cimport = new Cimport();
        af afVarM190case = af.m190case(i);
        try {
            cimport.m3516do(Cif.f29312class);
            cimport.m3516do(new org.bouncycastle.asn1.j(afVarM190case.getEncoded()));
            return new org.bouncycastle.asn1.n(cimport);
        } catch (IOException e) {
            throw new IllegalArgumentException("error encoding reason: " + e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m7816this(Cgoto cgoto, t62 t62Var, Csuper csuper) {
        Cimport cimport = new Cimport();
        cimport.m3516do(cgoto);
        cimport.m3516do(t62Var);
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        m7830try(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: break, reason: not valid java name */
    public void m7817break(y90 y90Var) {
        this.f6486case = y90Var;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m7818catch(fh2 fh2Var) {
        m7817break(y90.m9782break(fh2Var));
    }

    /* renamed from: class, reason: not valid java name */
    public void m7819class(tg2 tg2Var) {
        this.f6489for = tg2Var;
    }

    /* renamed from: const, reason: not valid java name */
    public void m7820const(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f6489for = tg2.m7884else(cgoto.toASN1Primitive());
    }

    /* renamed from: do, reason: not valid java name */
    public void m7821do(Cgoto cgoto, t62 t62Var, int i) {
        m7825if(cgoto, t62Var, i, null);
    }

    /* renamed from: final, reason: not valid java name */
    public void m7822final(t62 t62Var) {
        this.f6492try = t62Var;
    }

    /* renamed from: for, reason: not valid java name */
    public void m7823for(Cgoto cgoto, t62 t62Var, y90 y90Var) {
        Cimport cimport = new Cimport();
        cimport.m3516do(cgoto);
        cimport.m3516do(t62Var);
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        m7830try(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: goto, reason: not valid java name */
    public org.bouncycastle.asn1.x509.Ccase m7824goto() {
        if (this.f6490if == null || this.f6489for == null || this.f6491new == null) {
            throw new IllegalStateException("Not all mandatory fields set in V2 TBSCertList generator.");
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6487do);
        cimport.m3516do(this.f6490if);
        cimport.m3516do(this.f6489for);
        cimport.m3516do(this.f6491new);
        t62 t62Var = this.f6492try;
        if (t62Var != null) {
            cimport.m3516do(t62Var);
        }
        if (this.f6488else.m3519new() != 0) {
            cimport.m3516do(new org.bouncycastle.asn1.n(this.f6488else));
        }
        if (this.f6486case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f6486case));
        }
        return new org.bouncycastle.asn1.x509.Ccase(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: if, reason: not valid java name */
    public void m7825if(Cgoto cgoto, t62 t62Var, int i, Ccase ccase) {
        Csuper csuperM7815else;
        if (i == 0) {
            if (ccase == null) {
                m7823for(cgoto, t62Var, null);
                return;
            }
            Cimport cimport = new Cimport();
            cimport.m3516do(m7814case(ccase));
            m7816this(cgoto, t62Var, new org.bouncycastle.asn1.n(cimport));
            return;
        }
        Cimport cimport2 = new Cimport();
        Csuper[] csuperArr = f6485goto;
        if (i >= csuperArr.length) {
            csuperM7815else = m7815else(i);
        } else {
            if (i < 0) {
                throw new IllegalArgumentException("invalid reason value: " + i);
            }
            csuperM7815else = csuperArr[i];
        }
        cimport2.m3516do(csuperM7815else);
        if (ccase != null) {
            cimport2.m3516do(m7814case(ccase));
        }
        m7816this(cgoto, t62Var, new org.bouncycastle.asn1.n(cimport2));
    }

    /* renamed from: import, reason: not valid java name */
    public void m7826import(Cnative cnative) {
        this.f6491new = new t62(cnative);
    }

    /* renamed from: new, reason: not valid java name */
    public void m7827new(Cgoto cgoto, Cnative cnative, int i) {
        m7821do(cgoto, new t62(cnative), i);
    }

    /* renamed from: super, reason: not valid java name */
    public void m7828super(Cnative cnative) {
        this.f6492try = new t62(cnative);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m7829throw(b1 b1Var) {
        this.f6490if = b1Var;
    }

    /* renamed from: try, reason: not valid java name */
    public void m7830try(Csuper csuper) {
        this.f6488else.m3516do(csuper);
    }

    /* renamed from: while, reason: not valid java name */
    public void m7831while(t62 t62Var) {
        this.f6491new = t62Var;
    }
}

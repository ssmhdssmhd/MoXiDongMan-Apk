package android.support.v4;

import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class aw {

    /* renamed from: catch, reason: not valid java name */
    private static final int f252catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final int f253class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f254const = 1;

    /* renamed from: final, reason: not valid java name */
    private static final int f255final = 2;

    /* renamed from: super, reason: not valid java name */
    private static final int f256super = 3;

    /* renamed from: break, reason: not valid java name */
    private y90 f257break;

    /* renamed from: case, reason: not valid java name */
    private xa1 f258case;

    /* renamed from: do, reason: not valid java name */
    private int f259do = 1;

    /* renamed from: else, reason: not valid java name */
    private fe1 f260else;

    /* renamed from: for, reason: not valid java name */
    private v00 f261for;

    /* renamed from: goto, reason: not valid java name */
    private Cthrow f262goto;

    /* renamed from: if, reason: not valid java name */
    private dw f263if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f264new;

    /* renamed from: this, reason: not valid java name */
    private Csuper f265this;

    /* renamed from: try, reason: not valid java name */
    private gw f266try;

    public aw(dw dwVar, v00 v00Var, Cgoto cgoto, gw gwVar) {
        this.f263if = dwVar;
        this.f261for = v00Var;
        this.f264new = cgoto;
        this.f266try = gwVar;
    }

    /* renamed from: break, reason: not valid java name */
    public void m360break(Cgoto cgoto) {
        this.f264new = cgoto;
    }

    /* renamed from: case, reason: not valid java name */
    public void m361case(v00 v00Var) {
        this.f261for = v00Var;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m362catch(int i) {
        this.f259do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public zv m363do() {
        Cimport cimport = new Cimport();
        int i = this.f259do;
        if (i != 1) {
            cimport.m3516do(new Cgoto(i));
        }
        cimport.m3516do(this.f263if);
        cimport.m3516do(this.f261for);
        cimport.m3516do(this.f264new);
        cimport.m3516do(this.f266try);
        if (this.f258case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f258case));
        }
        if (this.f260else != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f260else));
        }
        if (this.f262goto != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f262goto));
        }
        if (this.f265this != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 3, this.f265this));
        }
        y90 y90Var = this.f257break;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return zv.m10287goto(new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: else, reason: not valid java name */
    public void m364else(fe1 fe1Var) {
        this.f260else = fe1Var;
    }

    /* renamed from: for, reason: not valid java name */
    public void m365for(dw dwVar) {
        this.f263if = dwVar;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m366goto(Cthrow cthrow) {
        this.f262goto = cthrow;
    }

    /* renamed from: if, reason: not valid java name */
    public void m367if(u42[] u42VarArr) {
        this.f265this = new org.bouncycastle.asn1.n(u42VarArr);
    }

    /* renamed from: new, reason: not valid java name */
    public void m368new(xa1 xa1Var) {
        this.f258case = xa1Var;
    }

    /* renamed from: this, reason: not valid java name */
    public void m369this(gw gwVar) {
        this.f266try = gwVar;
    }

    /* renamed from: try, reason: not valid java name */
    public void m370try(y90 y90Var) {
        this.f257break = y90Var;
    }
}

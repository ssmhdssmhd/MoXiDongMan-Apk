package freemarker.core;

import freemarker.template.Cstatic;

@Deprecated
/* loaded from: classes.dex */
public abstract class h4 {

    /* renamed from: case, reason: not valid java name */
    public static final int f23820case = -1000000000;

    /* renamed from: do, reason: not valid java name */
    private Cstatic f23821do;

    /* renamed from: for, reason: not valid java name */
    public int f23822for;

    /* renamed from: if, reason: not valid java name */
    public int f23823if;

    /* renamed from: new, reason: not valid java name */
    public int f23824new;

    /* renamed from: try, reason: not valid java name */
    public int f23825try;

    /* renamed from: break, reason: not valid java name */
    public final String m28064break() {
        Cstatic cstatic = this.f23821do;
        String strP1 = cstatic != null ? cstatic.p1(this.f23823if, this.f23822for, this.f23824new, this.f23825try) : null;
        return strP1 != null ? strP1 : mo27815for();
    }

    /* renamed from: case */
    public abstract String mo27813case();

    /* renamed from: catch, reason: not valid java name */
    public String m28065catch() {
        return b5.m27863goto(this.f23821do, this.f23822for, this.f23823if);
    }

    /* renamed from: class, reason: not valid java name */
    public String m28066class() {
        return m28065catch();
    }

    /* renamed from: const */
    public void mo28044const(Cstatic cstatic, int i, int i2, int i3, int i4) {
        this.f23821do = cstatic;
        this.f23823if = i;
        this.f23822for = i2;
        this.f23824new = i3;
        this.f23825try = i4;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m28067do(int i, int i2) {
        int i3;
        int i4 = this.f23822for;
        if (i2 < i4 || i2 > (i3 = this.f23825try)) {
            return false;
        }
        if (i2 != i4 || i >= this.f23823if) {
            return i2 != i3 || i <= this.f23824new;
        }
        return false;
    }

    /* renamed from: else */
    public abstract int mo27814else();

    /* renamed from: final, reason: not valid java name */
    public final void m28068final(Cstatic cstatic, h4 h4Var, h4 h4Var2) {
        mo28044const(cstatic, h4Var.f23823if, h4Var.f23822for, h4Var2.f23824new, h4Var2.f23825try);
    }

    /* renamed from: for */
    public abstract String mo27815for();

    public final int getBeginColumn() {
        return this.f23823if;
    }

    public final int getBeginLine() {
        return this.f23822for;
    }

    public final int getEndColumn() {
        return this.f23824new;
    }

    public final int getEndLine() {
        return this.f23825try;
    }

    public Cstatic getTemplate() {
        return this.f23821do;
    }

    /* renamed from: goto */
    public abstract f3 mo27816goto(int i);

    /* renamed from: if, reason: not valid java name */
    public h4 m28069if(h4 h4Var) {
        this.f23821do = h4Var.f23821do;
        this.f23823if = h4Var.f23823if;
        this.f23822for = h4Var.f23822for;
        this.f23824new = h4Var.f23824new;
        this.f23825try = h4Var.f23825try;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m28070import(Cstatic cstatic, m4 m4Var, m4 m4Var2, c4 c4Var) {
        b4 b4VarM27885case = c4Var.m27885case();
        if (b4VarM27885case != null) {
            m28073throw(cstatic, m4Var, b4VarM27885case);
        } else {
            m28075while(cstatic, m4Var, m4Var2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public String m28071new() {
        return b5.m27863goto(this.f23821do, this.f23825try, this.f23824new);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m28072super(Cstatic cstatic, h4 h4Var, m4 m4Var) {
        mo28044const(cstatic, h4Var.f23823if, h4Var.f23822for, m4Var.endColumn, m4Var.endLine);
    }

    /* renamed from: this */
    public abstract Object mo27819this(int i);

    /* renamed from: throw, reason: not valid java name */
    public final void m28073throw(Cstatic cstatic, m4 m4Var, h4 h4Var) {
        mo28044const(cstatic, m4Var.beginColumn, m4Var.beginLine, h4Var.f23824new, h4Var.f23825try);
    }

    public String toString() {
        String strM28064break;
        try {
            strM28064break = m28064break();
        } catch (Exception unused) {
            strM28064break = null;
        }
        return strM28064break != null ? strM28064break : mo27815for();
    }

    /* renamed from: try, reason: not valid java name */
    public String m28074try() {
        return m28071new();
    }

    /* renamed from: while, reason: not valid java name */
    public final void m28075while(Cstatic cstatic, m4 m4Var, m4 m4Var2) {
        mo28044const(cstatic, m4Var.beginColumn, m4Var.beginLine, m4Var2.endColumn, m4Var2.endLine);
    }
}

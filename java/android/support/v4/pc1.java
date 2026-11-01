package android.support.v4;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.atn.Ccase;
import org.antlr.v4.runtime.atn.Ccatch;
import org.antlr.v4.runtime.atn.Cnew;
import org.antlr.v4.runtime.atn.Ctry;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class pc1 extends Cgoto {

    /* renamed from: abstract, reason: not valid java name */
    public qn0 f4910abstract;

    /* renamed from: default, reason: not valid java name */
    public int f4911default;

    /* renamed from: extends, reason: not valid java name */
    public int f4912extends;

    /* renamed from: finally, reason: not valid java name */
    public int f4913finally;

    /* renamed from: import, reason: not valid java name */
    public final Cstatic f4914import;

    /* renamed from: native, reason: not valid java name */
    public final Cdo[] f4915native;

    /* renamed from: package, reason: not valid java name */
    public boolean f4916package;

    /* renamed from: private, reason: not valid java name */
    public qn0 f4917private;

    /* renamed from: public, reason: not valid java name */
    public final ef1 f4918public;

    /* renamed from: return, reason: not valid java name */
    @Deprecated
    public final String[] f4919return;

    /* renamed from: static, reason: not valid java name */
    public final String[] f4920static;

    /* renamed from: switch, reason: not valid java name */
    private final Vocabulary f4921switch;

    /* renamed from: throws, reason: not valid java name */
    public final Deque<ob1<qc1, Integer>> f4922throws;

    /* renamed from: while, reason: not valid java name */
    public final String f4923while;

    @Deprecated
    public pc1(String str, Collection<String> collection, Collection<String> collection2, Cstatic cstatic, TokenStream tokenStream) {
        this(str, cf2.m902do((String[]) collection.toArray(new String[collection.size()])), collection2, cstatic, tokenStream);
    }

    @Override // org.antlr.v4.runtime.Cgoto
    public void E() {
        super.E();
        this.f4916package = false;
        this.f4917private = null;
    }

    public void P(int i, int i2, int i3) {
        this.f4911default = i;
        this.f4912extends = i2;
        this.f4913finally = i3;
    }

    public qn0 Q(qc1 qc1Var, int i, int i2) {
        return new qn0(qc1Var, i, i2);
    }

    public Cfinally R() {
        return this.f4914import.f6258do.get(m32074final());
    }

    public qn0 S() {
        return this.f4917private;
    }

    public qn0 T() {
        return this.f4910abstract;
    }

    public qc1 U(int i) {
        xo1 xo1Var = this.f4914import.f6260for[i];
        qn0 qn0VarQ = Q(null, -1, i);
        this.f4910abstract = qn0VarQ;
        if (xo1Var.f7999throws) {
            mo5944implements(qn0VarQ, xo1Var.f1854if, i, 0);
        } else {
            m31999instanceof(qn0VarQ, xo1Var.f1854if, i);
        }
        while (true) {
            Cfinally cfinallyR = R();
            if (cfinallyR.mo822new() != 7) {
                try {
                    Z(cfinallyR);
                } catch (ql1 e) {
                    m32073extends(this.f4914import.f6263new[cfinallyR.f1853for].f1854if);
                    c().f5338else = e;
                    f().reportError(this, e);
                    V(e);
                }
            } else {
                if (this.f28546break.m8923case()) {
                    break;
                }
                Y(cfinallyR);
            }
        }
        if (!xo1Var.f7999throws) {
            m32006synchronized();
            return this.f4910abstract;
        }
        qc1 qc1Var = this.f28546break;
        O(this.f4922throws.pop().a);
        return qc1Var;
    }

    public void V(ql1 ql1Var) throws ql1 {
        int iIndex = this.f28552goto.index();
        f().recover(this, ql1Var);
        if (this.f28552goto.index() == iIndex) {
            if (!(ql1Var instanceof xm0)) {
                Token offendingToken = ql1Var.getOffendingToken();
                Token tokenCreate = getTokenFactory().create(new ob1<>(offendingToken.getTokenSource(), offendingToken.getTokenSource().mo3558goto()), 0, offendingToken.getText(), 0, -1, -1, offendingToken.getLine(), offendingToken.getCharPositionInLine());
                qc1 qc1Var = this.f28546break;
                qc1Var.m6486import(m32005strictfp(qc1Var, tokenCreate));
                return;
            }
            xm0 xm0Var = (xm0) ql1Var;
            Token offendingToken2 = ql1Var.getOffendingToken();
            Token tokenCreate2 = getTokenFactory().create(new ob1<>(offendingToken2.getTokenSource(), offendingToken2.getTokenSource().mo3558goto()), !xm0Var.getExpectedTokens().isNil() ? xm0Var.getExpectedTokens().m7523const() : 0, offendingToken2.getText(), 0, -1, -1, offendingToken2.getLine(), offendingToken2.getCharPositionInLine());
            qc1 qc1Var2 = this.f28546break;
            qc1Var2.m6486import(m32005strictfp(qc1Var2, tokenCreate2));
        }
    }

    public Token W() {
        return this.f28550else.recoverInline(this);
    }

    public int X(jx jxVar) throws ql1 {
        if (jxVar.m2309for() <= 1) {
            return 1;
        }
        f().sync(this);
        int i = jxVar.f3235switch;
        if (i != this.f4911default || this.f28552goto.index() != this.f4912extends || this.f4916package) {
            return m32082this().mo31913super(this.f28552goto, i, this.f28546break);
        }
        int i2 = this.f4913finally;
        this.f4916package = true;
        return i2;
    }

    public void Y(Cfinally cfinally) {
        if (this.f4914import.f6260for[cfinally.f1853for].f7999throws) {
            ob1<qc1, Integer> ob1VarPop = this.f4922throws.pop();
            O(ob1VarPop.a);
            m32073extends(ob1VarPop.b.intValue());
        } else {
            m32006synchronized();
        }
        m32073extends(((ap1) this.f4914import.f6258do.get(m32074final()).m2306catch(0)).f226throw.f1854if);
    }

    public void Z(Cfinally cfinally) throws ql1 {
        Ccatch ccatchM2306catch = cfinally.m2306catch((cfinally instanceof jx ? X((jx) cfinally) : 1) - 1);
        switch (ccatchM2306catch.mo310do()) {
            case 1:
                if (cfinally.mo822new() == 10 && ((j12) cfinally).f2956extends && !(ccatchM2306catch.f28465do instanceof fw0)) {
                    B(Q(this.f4922throws.peek().a, this.f4922throws.peek().b.intValue(), this.f28546break.mo6627try()), this.f4914import.f6260for[cfinally.f1853for].f1854if, this.f28546break.mo6627try());
                    break;
                }
                break;
            case 2:
            case 7:
            case 8:
                if (!ccatchM2306catch.mo312new(this.f28552goto.LA(1), 1, 65535)) {
                    W();
                }
                y();
                break;
            case 3:
                xo1 xo1Var = (xo1) ccatchM2306catch.f28465do;
                int i = xo1Var.f1853for;
                qn0 qn0VarQ = Q(this.f28546break, cfinally.f1854if, i);
                if (!xo1Var.f7999throws) {
                    m31999instanceof(qn0VarQ, ccatchM2306catch.f28465do.f1854if, i);
                    break;
                } else {
                    mo5944implements(qn0VarQ, xo1Var.f1854if, i, ((ap1) ccatchM2306catch).f225super);
                    break;
                }
            case 4:
                Ccase ccase = (Ccase) ccatchM2306catch;
                if (!m32081switch(this.f28546break, ccase.f28450final, ccase.f28451super)) {
                    throw new ea0(this);
                }
                break;
            case 5:
                x(((g4) ccatchM2306catch).f2050final);
                break;
            case 6:
                u uVar = (u) ccatchM2306catch;
                m32072do(this.f28546break, uVar.f6714final, uVar.f6715super);
                break;
            case 9:
                y();
                break;
            case 10:
                Ctry ctry = (Ctry) ccatchM2306catch;
                if (!mo32004public(this.f28546break, ctry.f28500final)) {
                    throw new ea0(this, String.format("precpred(_ctx, %d)", Integer.valueOf(ctry.f28500final)));
                }
                break;
            default:
                throw new UnsupportedOperationException("Unrecognized ATN transition type.");
        }
        m32073extends(ccatchM2306catch.f28465do.f1854if);
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: class */
    public String[] mo2318class() {
        return this.f4920static;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: else */
    public String mo2320else() {
        return this.f4923while;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: for */
    public Cstatic mo2321for() {
        return this.f4914import;
    }

    @Override // org.antlr.v4.runtime.Cgoto
    /* renamed from: implements, reason: not valid java name */
    public void mo5944implements(qc1 qc1Var, int i, int i2, int i3) {
        this.f4922throws.push(new ob1<>(this.f28546break, Integer.valueOf(qc1Var.f7304if)));
        super.mo5944implements(qc1Var, i, i2, i3);
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: native */
    public Vocabulary mo2323native() {
        return this.f4921switch;
    }

    @Override // org.antlr.v4.runtime.Cthis
    @Deprecated
    /* renamed from: throw */
    public String[] mo2325throw() {
        return this.f4919return;
    }

    public pc1(String str, Vocabulary vocabulary, Collection<String> collection, Cstatic cstatic, TokenStream tokenStream) {
        super(tokenStream);
        this.f4918public = new ef1();
        this.f4922throws = new ArrayDeque();
        this.f4911default = -1;
        this.f4912extends = -1;
        this.f4913finally = -1;
        this.f4916package = false;
        this.f4917private = null;
        this.f4923while = str;
        this.f4914import = cstatic;
        this.f4919return = new String[cstatic.f6259else];
        int i = 0;
        while (true) {
            String[] strArr = this.f4919return;
            if (i >= strArr.length) {
                break;
            }
            strArr[i] = vocabulary.getDisplayName(i);
            i++;
        }
        this.f4920static = (String[]) collection.toArray(new String[collection.size()]);
        this.f4921switch = vocabulary;
        int iM7604try = cstatic.m7604try();
        this.f4915native = new Cdo[iM7604try];
        for (int i2 = 0; i2 < iM7604try; i2++) {
            this.f4915native[i2] = new Cdo(cstatic.m7600for(i2), i2);
        }
        m32071default(new Cnew(this, cstatic, this.f4915native, this.f4918public));
    }
}

package org.antlr.v4.runtime;

import android.support.v4.Cfinally;
import android.support.v4.Cstatic;
import android.support.v4.ap1;
import android.support.v4.ea0;
import android.support.v4.ob1;
import android.support.v4.ql1;
import android.support.v4.sn0;
import android.support.v4.v31;
import android.support.v4.vo1;
import android.support.v4.xm0;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.antlr.v4.runtime.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse implements ANTLRErrorStrategy {

    /* renamed from: for, reason: not valid java name */
    public sn0 f28543for;

    /* renamed from: do, reason: not valid java name */
    public boolean f28542do = false;

    /* renamed from: if, reason: not valid java name */
    public int f28544if = -1;

    /* renamed from: break, reason: not valid java name */
    public String m31978break(Token token) {
        if (token == null) {
            return "<no token>";
        }
        String strM31987goto = m31987goto(token);
        if (strM31987goto == null) {
            if (m31991this(token) == -1) {
                strM31987goto = "<EOF>";
            } else {
                strM31987goto = "<" + m31991this(token) + ">";
            }
        }
        return m31989new(strM31987goto);
    }

    /* renamed from: case, reason: not valid java name */
    public sn0 m31979case(Cgoto cgoto) {
        return cgoto.g();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m31980catch(Cgoto cgoto, ea0 ea0Var) {
        cgoto.A(ea0Var.getOffendingToken(), "rule " + cgoto.mo2318class()[cgoto.f28546break.mo6627try()] + Cclass.f28652do + ea0Var.getMessage(), ea0Var);
    }

    /* renamed from: class, reason: not valid java name */
    public void m31981class(Cgoto cgoto, xm0 xm0Var) {
        cgoto.A(xm0Var.getOffendingToken(), "mismatched input " + m31978break(xm0Var.getOffendingToken()) + " expecting " + xm0Var.getExpectedTokens().m7524default(cgoto.mo2323native()), xm0Var);
    }

    /* renamed from: const, reason: not valid java name */
    public void m31982const(Cgoto cgoto) {
        if (inErrorRecoveryMode(cgoto)) {
            return;
        }
        m31983do(cgoto);
        Token tokenD = cgoto.d();
        cgoto.A(tokenD, "missing " + m31979case(cgoto).m7524default(cgoto.mo2323native()) + " at " + m31978break(tokenD), null);
    }

    /* renamed from: do, reason: not valid java name */
    public void m31983do(Cgoto cgoto) {
        this.f28542do = true;
    }

    /* renamed from: else, reason: not valid java name */
    public Token m31984else(Cgoto cgoto) {
        String str;
        Token tokenD = cgoto.d();
        sn0 sn0VarM31979case = m31979case(cgoto);
        int iM7523const = !sn0VarM31979case.isNil() ? sn0VarM31979case.m7523const() : 0;
        if (iM7523const == -1) {
            str = "<missing EOF>";
        } else {
            str = "<missing " + cgoto.mo2323native().getDisplayName(iM7523const) + ">";
        }
        String str2 = str;
        Token tokenLT = cgoto.mo3558goto().LT(-1);
        if (tokenD.getType() == -1 && tokenLT != null) {
            tokenD = tokenLT;
        }
        return cgoto.getTokenFactory().create(new ob1<>(tokenD.getTokenSource(), tokenD.getTokenSource().mo3558goto()), iM7523const, str2, 0, -1, -1, tokenD.getLine(), tokenD.getCharPositionInLine());
    }

    /* renamed from: final, reason: not valid java name */
    public void m31985final(Cgoto cgoto, v31 v31Var) {
        TokenStream tokenStreamMo3558goto = cgoto.mo3558goto();
        cgoto.A(v31Var.getOffendingToken(), "no viable alternative at input " + m31989new(tokenStreamMo3558goto != null ? v31Var.getStartToken().getType() == -1 ? "<EOF>" : tokenStreamMo3558goto.getText(v31Var.getStartToken(), v31Var.getOffendingToken()) : "<unknown input>"), v31Var);
    }

    /* renamed from: for, reason: not valid java name */
    public void m31986for(Cgoto cgoto) {
        this.f28542do = false;
        this.f28543for = null;
        this.f28544if = -1;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m31987goto(Token token) {
        return token.getText();
    }

    /* renamed from: if, reason: not valid java name */
    public void m31988if(Cgoto cgoto, sn0 sn0Var) {
        int iLA = cgoto.mo3558goto().LA(1);
        while (iLA != -1 && !sn0Var.contains(iLA)) {
            cgoto.m31997continue();
            iLA = cgoto.mo3558goto().LA(1);
        }
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public boolean inErrorRecoveryMode(Cgoto cgoto) {
        return this.f28542do;
    }

    /* renamed from: new, reason: not valid java name */
    public String m31989new(String str) {
        return "'" + str.replace("\n", "\\n").replace(Cclass.f28656new, "\\r").replace("\t", "\\t") + "'";
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public void recover(Cgoto cgoto, ql1 ql1Var) {
        sn0 sn0Var;
        if (this.f28544if == cgoto.mo3558goto().index() && (sn0Var = this.f28543for) != null && sn0Var.contains(cgoto.m32074final())) {
            cgoto.m31997continue();
        }
        this.f28544if = cgoto.mo3558goto().index();
        if (this.f28543for == null) {
            this.f28543for = new sn0(new int[0]);
        }
        this.f28543for.add(cgoto.m32074final());
        m31988if(cgoto, m31993try(cgoto));
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public Token recoverInline(Cgoto cgoto) throws ql1 {
        Token tokenM31992throw = m31992throw(cgoto);
        if (tokenM31992throw != null) {
            cgoto.m31997continue();
            return tokenM31992throw;
        }
        if (m31994while(cgoto)) {
            return m31984else(cgoto);
        }
        throw new xm0(cgoto);
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public void reportError(Cgoto cgoto, ql1 ql1Var) {
        if (inErrorRecoveryMode(cgoto)) {
            return;
        }
        m31983do(cgoto);
        if (ql1Var instanceof v31) {
            m31985final(cgoto, (v31) ql1Var);
            return;
        }
        if (ql1Var instanceof xm0) {
            m31981class(cgoto, (xm0) ql1Var);
            return;
        }
        if (ql1Var instanceof ea0) {
            m31980catch(cgoto, (ea0) ql1Var);
            return;
        }
        System.err.println("unknown recognition error type: " + ql1Var.getClass().getName());
        cgoto.A(ql1Var.getOffendingToken(), ql1Var.getMessage(), ql1Var);
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public void reportMatch(Cgoto cgoto) {
        m31986for(cgoto);
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public void reset(Cgoto cgoto) {
        m31986for(cgoto);
    }

    /* renamed from: super, reason: not valid java name */
    public void m31990super(Cgoto cgoto) {
        if (inErrorRecoveryMode(cgoto)) {
            return;
        }
        m31983do(cgoto);
        Token tokenD = cgoto.d();
        cgoto.A(tokenD, "extraneous input " + m31978break(tokenD) + " expecting " + m31979case(cgoto).m7524default(cgoto.mo2323native()), null);
    }

    @Override // org.antlr.v4.runtime.ANTLRErrorStrategy
    public void sync(Cgoto cgoto) throws ql1 {
        Cfinally cfinally = cgoto.m32082this().f1619do.f6258do.get(cgoto.m32074final());
        if (inErrorRecoveryMode(cgoto)) {
            return;
        }
        int iLA = cgoto.mo3558goto().LA(1);
        sn0 sn0VarM7597case = cgoto.mo2321for().m7597case(cfinally);
        if (sn0VarM7597case.contains(-2) || sn0VarM7597case.contains(iLA)) {
            return;
        }
        int iMo822new = cfinally.mo822new();
        if (iMo822new != 3 && iMo822new != 4 && iMo822new != 5) {
            switch (iMo822new) {
                case 9:
                case 11:
                    m31990super(cgoto);
                    m31988if(cgoto, cgoto.g().or(m31993try(cgoto)));
                    return;
                case 10:
                    break;
                default:
                    return;
            }
        }
        if (m31992throw(cgoto) == null) {
            throw new xm0(cgoto);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public int m31991this(Token token) {
        return token.getType();
    }

    /* renamed from: throw, reason: not valid java name */
    public Token m31992throw(Cgoto cgoto) {
        if (!m31979case(cgoto).contains(cgoto.mo3558goto().LA(2))) {
            return null;
        }
        m31990super(cgoto);
        cgoto.m31997continue();
        Token tokenD = cgoto.d();
        reportMatch(cgoto);
        return tokenD;
    }

    /* renamed from: try, reason: not valid java name */
    public sn0 m31993try(Cgoto cgoto) {
        Cstatic cstatic = cgoto.m32082this().f1619do;
        sn0 sn0Var = new sn0(new int[0]);
        for (vo1 vo1Var = cgoto.f28546break; vo1Var != null; vo1Var = vo1Var.f7303do) {
            int i = vo1Var.f7304if;
            if (i < 0) {
                break;
            }
            sn0Var.addAll(cstatic.m7597case(((ap1) cstatic.f6258do.get(i).m2306catch(0)).f226throw));
        }
        sn0Var.remove(-2);
        return sn0Var;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m31994while(Cgoto cgoto) {
        if (!cgoto.m32082this().f1619do.m7599else(cgoto.m32082this().f1619do.f6258do.get(cgoto.m32074final()).m2306catch(0).f28465do, cgoto.f28546break).contains(cgoto.mo3558goto().LA(1))) {
            return false;
        }
        m31982const(cgoto);
        return true;
    }
}

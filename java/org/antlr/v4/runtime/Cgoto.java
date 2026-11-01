package org.antlr.v4.runtime;

import android.support.v4.Cdefault;
import android.support.v4.Cstatic;
import android.support.v4.ap1;
import android.support.v4.gn0;
import android.support.v4.is0;
import android.support.v4.jc1;
import android.support.v4.k80;
import android.support.v4.lc1;
import android.support.v4.qc1;
import android.support.v4.ql1;
import android.support.v4.sn0;
import android.support.v4.t52;
import android.support.v4.vo1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import org.antlr.v4.runtime.atn.ATNDeserializer;
import org.antlr.v4.runtime.atn.Cnew;
import org.antlr.v4.runtime.atn.Cthis;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.TerminalNode;

/* renamed from: org.antlr.v4.runtime.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cgoto extends Cthis<Token, Cnew> {

    /* renamed from: throw, reason: not valid java name */
    private static final Map<String, Cstatic> f28545throw = new WeakHashMap();

    /* renamed from: break, reason: not valid java name */
    public qc1 f28546break;

    /* renamed from: catch, reason: not valid java name */
    public boolean f28547catch;

    /* renamed from: class, reason: not valid java name */
    private Cdo f28548class;

    /* renamed from: const, reason: not valid java name */
    public List<ParseTreeListener> f28549const;

    /* renamed from: else, reason: not valid java name */
    public ANTLRErrorStrategy f28550else = new Celse();

    /* renamed from: final, reason: not valid java name */
    public int f28551final;

    /* renamed from: goto, reason: not valid java name */
    public TokenStream f28552goto;

    /* renamed from: super, reason: not valid java name */
    public boolean f28553super;

    /* renamed from: this, reason: not valid java name */
    public final gn0 f28554this;

    /* renamed from: org.antlr.v4.runtime.goto$do, reason: invalid class name */
    public class Cdo implements ParseTreeListener {
        public Cdo() {
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void enterEveryRule(qc1 qc1Var) {
            System.out.println("enter   " + Cgoto.this.mo2318class()[qc1Var.mo6627try()] + ", LT(1)=" + Cgoto.this.f28552goto.LT(1).getText());
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void exitEveryRule(qc1 qc1Var) {
            System.out.println("exit    " + Cgoto.this.mo2318class()[qc1Var.mo6627try()] + ", LT(1)=" + Cgoto.this.f28552goto.LT(1).getText());
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void visitErrorNode(ErrorNode errorNode) {
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void visitTerminal(TerminalNode terminalNode) {
            System.out.println("consume " + terminalNode.getSymbol() + " rule " + Cgoto.this.mo2318class()[Cgoto.this.f28546break.mo6627try()]);
        }
    }

    /* renamed from: org.antlr.v4.runtime.goto$if, reason: invalid class name */
    public static class Cif implements ParseTreeListener {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f28556do = new Cif();

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void enterEveryRule(qc1 qc1Var) {
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void exitEveryRule(qc1 qc1Var) {
            List<ParseTree> list = qc1Var.f5339new;
            if (list instanceof ArrayList) {
                ((ArrayList) list).trimToSize();
            }
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void visitErrorNode(ErrorNode errorNode) {
        }

        @Override // org.antlr.v4.runtime.tree.ParseTreeListener
        public void visitTerminal(TerminalNode terminalNode) {
        }
    }

    public Cgoto(TokenStream tokenStream) {
        gn0 gn0Var = new gn0();
        this.f28554this = gn0Var;
        gn0Var.m2744switch(0);
        this.f28547catch = true;
        mo3565throws(tokenStream);
    }

    public void A(Token token, String str, ql1 ql1Var) {
        this.f28551final++;
        m32083try().syntaxError(this, token, token.getLine(), token.getCharPositionInLine(), str, ql1Var);
    }

    public void B(qc1 qc1Var, int i, int i2) {
        qc1 qc1Var2 = this.f28546break;
        qc1Var2.f7303do = qc1Var;
        qc1Var2.f7304if = i;
        qc1Var2.f5337case = this.f28552goto.LT(-1);
        this.f28546break = qc1Var;
        qc1Var.f5340try = qc1Var2.f5340try;
        if (this.f28547catch) {
            qc1Var.m6483final(qc1Var2);
        }
        if (this.f28549const != null) {
            M();
        }
    }

    public void C(ParseTreeListener parseTreeListener) {
        List<ParseTreeListener> list = this.f28549const;
        if (list != null && list.remove(parseTreeListener) && this.f28549const.isEmpty()) {
            this.f28549const = null;
        }
    }

    public void D() {
        this.f28549const = null;
    }

    public void E() {
        if (mo3558goto() != null) {
            mo3558goto().seek(0);
        }
        this.f28550else.reset(this);
        this.f28546break = null;
        this.f28551final = 0;
        this.f28553super = false;
        K(false);
        this.f28554this.m32021goto();
        this.f28554this.m2744switch(0);
        Cnew cnewM32082this = m32082this();
        if (cnewM32082this != null) {
            cnewM32082this.mo2072goto();
        }
    }

    public void F(boolean z) {
        this.f28547catch = z;
    }

    public void G(qc1 qc1Var) {
        this.f28546break = qc1Var;
    }

    public void H(ANTLRErrorStrategy aNTLRErrorStrategy) {
        this.f28550else = aNTLRErrorStrategy;
    }

    public void I(boolean z) {
        Cnew cnewM32082this = m32082this();
        org.antlr.v4.runtime.atn.Cgoto cgotoM31915synchronized = cnewM32082this.m31915synchronized();
        if (z) {
            if (!(cnewM32082this instanceof Cthis)) {
                m32071default(new Cthis(this));
            }
        } else if (cnewM32082this instanceof Cthis) {
            m32071default(new Cnew(this, mo2321for(), cnewM32082this.f28490else, cnewM32082this.m2070else()));
        }
        m32082this().p(cgotoM31915synchronized);
    }

    public void J(TokenStream tokenStream) {
        this.f28552goto = null;
        E();
        this.f28552goto = tokenStream;
    }

    public void K(boolean z) {
        if (!z) {
            C(this.f28548class);
            this.f28548class = null;
            return;
        }
        Cdo cdo = this.f28548class;
        if (cdo != null) {
            C(cdo);
        } else {
            this.f28548class = new Cdo();
        }
        m32001package(this.f28548class);
    }

    public void L(boolean z) {
        if (!z) {
            C(Cif.f28556do);
        } else {
            if (s()) {
                return;
            }
            m32001package(Cif.f28556do);
        }
    }

    public void M() {
        for (ParseTreeListener parseTreeListener : this.f28549const) {
            parseTreeListener.enterEveryRule(this.f28546break);
            this.f28546break.mo6490public(parseTreeListener);
        }
    }

    public void N() {
        for (int size = this.f28549const.size() - 1; size >= 0; size--) {
            ParseTreeListener parseTreeListener = this.f28549const.get(size);
            this.f28546break.mo6491return(parseTreeListener);
            parseTreeListener.exitEveryRule(this.f28546break);
        }
    }

    public void O(qc1 qc1Var) {
        this.f28554this.m2743static();
        this.f28546break.f5337case = this.f28552goto.LT(-1);
        qc1 qc1Var2 = this.f28546break;
        if (this.f28549const != null) {
            while (this.f28546break != qc1Var) {
                N();
                this.f28546break = (qc1) this.f28546break.f7303do;
            }
        } else {
            this.f28546break = qc1Var;
        }
        qc1Var2.f7303do = qc1Var;
        if (!this.f28547catch || qc1Var == null) {
            return;
        }
        qc1Var.m6483final(qc1Var2);
    }

    public Cstatic a() {
        Cstatic cstaticM31843for;
        String strMo2319const = mo2319const();
        if (strMo2319const == null) {
            throw new UnsupportedOperationException("The current parser does not support an ATN with bypass alternatives.");
        }
        Map<String, Cstatic> map = f28545throw;
        synchronized (map) {
            cstaticM31843for = map.get(strMo2319const);
            if (cstaticM31843for == null) {
                Cdefault cdefault = new Cdefault();
                cdefault.m1307case(true);
                cstaticM31843for = new ATNDeserializer(cdefault).m31843for(strMo2319const.toCharArray());
                map.put(strMo2319const, cstaticM31843for);
            }
        }
        return cstaticM31843for;
    }

    /* renamed from: abstract, reason: not valid java name */
    public lc1 m31995abstract(String str, int i, is0 is0Var) {
        return new org.antlr.v4.runtime.tree.pattern.Cif(is0Var, this).m32091do(str, i);
    }

    public boolean b() {
        return this.f28547catch;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: break, reason: not valid java name */
    public jc1 mo31996break() {
        Cnew cnewM32082this = m32082this();
        if (cnewM32082this instanceof Cthis) {
            return new jc1((Cthis) cnewM32082this);
        }
        return null;
    }

    public qc1 c() {
        return this.f28546break;
    }

    /* renamed from: continue, reason: not valid java name */
    public Token m31997continue() {
        Token tokenD = d();
        if (tokenD.getType() != -1) {
            mo3558goto().consume();
        }
        List<ParseTreeListener> list = this.f28549const;
        boolean z = (list == null || list.isEmpty()) ? false : true;
        if (this.f28547catch || z) {
            if (this.f28550else.inErrorRecoveryMode(this)) {
                qc1 qc1Var = this.f28546break;
                ErrorNode errorNodeM6486import = qc1Var.m6486import(m32005strictfp(qc1Var, tokenD));
                List<ParseTreeListener> list2 = this.f28549const;
                if (list2 != null) {
                    Iterator<ParseTreeListener> it = list2.iterator();
                    while (it.hasNext()) {
                        it.next().visitErrorNode(errorNodeM6486import);
                    }
                }
            } else {
                qc1 qc1Var2 = this.f28546break;
                TerminalNode terminalNodeM6495throw = qc1Var2.m6495throw(m32008volatile(qc1Var2, tokenD));
                List<ParseTreeListener> list3 = this.f28549const;
                if (list3 != null) {
                    Iterator<ParseTreeListener> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        it2.next().visitTerminal(terminalNodeM6495throw);
                    }
                }
            }
        }
        return tokenD;
    }

    public Token d() {
        return this.f28552goto.LT(1);
    }

    public List<String> e() {
        ArrayList arrayList;
        synchronized (((Cnew) this.f28580if).f28490else) {
            arrayList = new ArrayList();
            int i = 0;
            while (true) {
                ATNInterpreter atninterpreter = this.f28580if;
                if (i < ((Cnew) atninterpreter).f28490else.length) {
                    arrayList.add(((Cnew) atninterpreter).f28490else[i].m31970else(mo2323native()));
                    i++;
                }
            }
        }
        return arrayList;
    }

    public ANTLRErrorStrategy f() {
        return this.f28550else;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m31998finally() {
        qc1 qc1Var = this.f28546break;
        qc1 qc1Var2 = (qc1) qc1Var.f7303do;
        if (qc1Var2 != null) {
            qc1Var2.m6483final(qc1Var);
        }
    }

    public sn0 g() {
        return mo2321for().m7603new(m32074final(), c());
    }

    public String getSourceName() {
        return this.f28552goto.getSourceName();
    }

    @Override // org.antlr.v4.runtime.Cthis, org.antlr.v4.runtime.TokenSource
    public TokenFactory<?> getTokenFactory() {
        return this.f28552goto.getTokenSource().getTokenFactory();
    }

    public sn0 h() {
        Cstatic cstatic = m32082this().f1619do;
        return cstatic.m7597case(cstatic.f6258do.get(m32074final()));
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public TokenStream mo3558goto() {
        return r();
    }

    /* renamed from: implements */
    public void mo5944implements(qc1 qc1Var, int i, int i2, int i3) {
        m32073extends(i);
        this.f28554this.m2744switch(i3);
        this.f28546break = qc1Var;
        qc1Var.f5340try = this.f28552goto.LT(1);
        if (this.f28549const != null) {
            M();
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m31999instanceof(qc1 qc1Var, int i, int i2) {
        m32073extends(i);
        this.f28546break = qc1Var;
        qc1Var.f5340try = this.f28552goto.LT(1);
        if (this.f28547catch) {
            m31998finally();
        }
        if (this.f28549const != null) {
            M();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m32000interface() {
        synchronized (((Cnew) this.f28580if).f28490else) {
            int i = 0;
            boolean z = false;
            while (true) {
                ATNInterpreter atninterpreter = this.f28580if;
                if (i < ((Cnew) atninterpreter).f28490else.length) {
                    org.antlr.v4.runtime.dfa.Cdo cdo = ((Cnew) atninterpreter).f28490else[i];
                    if (!cdo.f28535do.isEmpty()) {
                        if (z) {
                            System.out.println();
                        }
                        System.out.println("Decision " + cdo.f28536for + ":");
                        System.out.print(cdo.m31970else(mo2323native()));
                        z = true;
                    }
                    i++;
                }
            }
        }
    }

    public qc1 j(int i) {
        for (qc1 qc1Var = this.f28546break; qc1Var != null; qc1Var = (qc1) qc1Var.f7303do) {
            if (qc1Var.mo6627try() == i) {
                return qc1Var;
            }
        }
        return null;
    }

    public int k() {
        return this.f28551final;
    }

    public List<ParseTreeListener> l() {
        List<ParseTreeListener> list = this.f28549const;
        return list == null ? Collections.emptyList() : list;
    }

    public final int m() {
        if (this.f28554this.m32016class()) {
            return -1;
        }
        return this.f28554this.m2742return();
    }

    public qc1 n() {
        return this.f28546break;
    }

    public int o(String str) {
        Integer num = m32070catch().get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public List<String> p() {
        return q(this.f28546break);
    }

    /* renamed from: package, reason: not valid java name */
    public void m32001package(ParseTreeListener parseTreeListener) {
        Objects.requireNonNull(parseTreeListener, "listener");
        if (this.f28549const == null) {
            this.f28549const = new ArrayList();
        }
        this.f28549const.add(parseTreeListener);
    }

    /* renamed from: private, reason: not valid java name */
    public lc1 m32002private(String str, int i) {
        if (r() != null) {
            TokenSource tokenSource = r().getTokenSource();
            if (tokenSource instanceof is0) {
                return m31995abstract(str, i, (is0) tokenSource);
            }
        }
        throw new UnsupportedOperationException("Parser can't discover a lexer to use");
    }

    /* renamed from: protected, reason: not valid java name */
    public void m32003protected(qc1 qc1Var, int i) {
        qc1 qc1Var2;
        qc1 qc1Var3;
        qc1Var.mo8927else(i);
        if (this.f28547catch && (qc1Var2 = this.f28546break) != qc1Var && (qc1Var3 = (qc1) qc1Var2.f7303do) != null) {
            qc1Var3.m6478abstract();
            qc1Var3.m6483final(qc1Var);
        }
        this.f28546break = qc1Var;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: public, reason: not valid java name */
    public boolean mo32004public(vo1 vo1Var, int i) {
        return i >= this.f28554this.m2742return();
    }

    public List<String> q(vo1 vo1Var) {
        String[] strArrMo2318class = mo2318class();
        ArrayList arrayList = new ArrayList();
        while (vo1Var != null) {
            int iMo6627try = vo1Var.mo6627try();
            if (iMo6627try < 0) {
                arrayList.add("n/a");
            } else {
                arrayList.add(strArrMo2318class[iMo6627try]);
            }
            vo1Var = vo1Var.f7303do;
        }
        return arrayList;
    }

    public TokenStream r() {
        return this.f28552goto;
    }

    public boolean s() {
        return l().contains(Cif.f28556do);
    }

    @Override // org.antlr.v4.runtime.Cthis, org.antlr.v4.runtime.TokenSource
    public void setTokenFactory(TokenFactory<?> tokenFactory) {
        this.f28552goto.getTokenSource().setTokenFactory(tokenFactory);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public ErrorNode m32005strictfp(qc1 qc1Var, Token token) {
        return new k80(token);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m32006synchronized() {
        if (this.f28553super) {
            this.f28546break.f5337case = this.f28552goto.LT(1);
        } else {
            this.f28546break.f5337case = this.f28552goto.LT(-1);
        }
        if (this.f28549const != null) {
            N();
        }
        m32073extends(this.f28546break.f7304if);
        this.f28546break = (qc1) this.f28546break.f7303do;
    }

    public boolean t(String str) {
        return false;
    }

    @Override // org.antlr.v4.runtime.Cthis
    /* renamed from: throws */
    public final void mo3565throws(IntStream intStream) {
        J((TokenStream) intStream);
    }

    @Deprecated
    /* renamed from: transient, reason: not valid java name */
    public void m32007transient(qc1 qc1Var, int i) {
        mo5944implements(qc1Var, mo2321for().f6260for[i].f1854if, i, 0);
    }

    public boolean u(int i) {
        Cstatic cstatic = m32082this().f1619do;
        sn0 sn0VarM7597case = cstatic.m7597case(cstatic.f6258do.get(m32074final()));
        if (sn0VarM7597case.contains(i)) {
            return true;
        }
        if (!sn0VarM7597case.contains(-2)) {
            return false;
        }
        for (qc1 qc1Var = this.f28546break; qc1Var != null && qc1Var.f7304if >= 0 && sn0VarM7597case.contains(-2); qc1Var = (qc1) qc1Var.f7303do) {
            sn0VarM7597case = cstatic.m7597case(((ap1) cstatic.f6258do.get(qc1Var.f7304if).m2306catch(0)).f226throw);
            if (sn0VarM7597case.contains(i)) {
                return true;
            }
        }
        return sn0VarM7597case.contains(-2) && i == -1;
    }

    public boolean v() {
        return this.f28553super;
    }

    /* renamed from: volatile, reason: not valid java name */
    public TerminalNode m32008volatile(qc1 qc1Var, Token token) {
        return new t52(token);
    }

    public boolean w() {
        return this.f28548class != null;
    }

    public Token x(int i) throws ql1 {
        Token tokenD = d();
        if (tokenD.getType() == i) {
            if (i == -1) {
                this.f28553super = true;
            }
            this.f28550else.reportMatch(this);
            m31997continue();
        } else {
            tokenD = this.f28550else.recoverInline(this);
            if (this.f28547catch && tokenD.getTokenIndex() == -1) {
                qc1 qc1Var = this.f28546break;
                qc1Var.m6486import(m32005strictfp(qc1Var, tokenD));
            }
        }
        return tokenD;
    }

    public Token y() throws ql1 {
        Token tokenD = d();
        if (tokenD.getType() > 0) {
            this.f28550else.reportMatch(this);
            m31997continue();
        } else {
            tokenD = this.f28550else.recoverInline(this);
            if (this.f28547catch && tokenD.getTokenIndex() == -1) {
                qc1 qc1Var = this.f28546break;
                qc1Var.m6486import(m32005strictfp(qc1Var, tokenD));
            }
        }
        return tokenD;
    }

    public final void z(String str) {
        A(d(), str, null);
    }
}

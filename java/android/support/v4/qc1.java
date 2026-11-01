package android.support.v4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class qc1 extends vo1 {

    /* renamed from: case, reason: not valid java name */
    public Token f5337case;

    /* renamed from: else, reason: not valid java name */
    public ql1 f5338else;

    /* renamed from: new, reason: not valid java name */
    public List<ParseTree> f5339new;

    /* renamed from: try, reason: not valid java name */
    public Token f5340try;

    public qc1() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m6478abstract() {
        List<ParseTree> list = this.f5339new;
        if (list != null) {
            list.remove(list.size() - 1);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public <T extends ParseTree> T m6479const(T t) {
        if (this.f5339new == null) {
            this.f5339new = new ArrayList();
        }
        this.f5339new.add(t);
        return t;
    }

    /* renamed from: continue, reason: not valid java name */
    public String m6480continue(Cgoto cgoto) {
        List<String> listQ = cgoto.q(this);
        Collections.reverse(listQ);
        return "ParserRuleContext" + listQ + "{start=" + this.f5340try + ", stop=" + this.f5337case + MessageFormatter.DELIM_STOP;
    }

    /* renamed from: default, reason: not valid java name */
    public <T extends qc1> List<T> m6481default(Class<? extends T> cls) {
        List<ParseTree> list = this.f5339new;
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = null;
        for (ParseTree parseTree : list) {
            if (cls.isInstance(parseTree)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cls.cast(parseTree));
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    /* renamed from: extends, reason: not valid java name */
    public Token m6482extends() {
        return this.f5340try;
    }

    /* renamed from: final, reason: not valid java name */
    public vo1 m6483final(vo1 vo1Var) {
        return (vo1) m6479const(vo1Var);
    }

    /* renamed from: finally, reason: not valid java name */
    public Token m6484finally() {
        return this.f5337case;
    }

    @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.Tree
    public int getChildCount() {
        List<ParseTree> list = this.f5339new;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.SyntaxTree
    public rn0 getSourceInterval() {
        if (this.f5340try == null) {
            return rn0.f5885new;
        }
        Token token = this.f5337case;
        return (token == null || token.getTokenIndex() < this.f5340try.getTokenIndex()) ? rn0.m7059case(this.f5340try.getTokenIndex(), this.f5340try.getTokenIndex() - 1) : rn0.m7059case(this.f5340try.getTokenIndex(), this.f5337case.getTokenIndex());
    }

    /* renamed from: import, reason: not valid java name */
    public ErrorNode m6486import(ErrorNode errorNode) {
        errorNode.setParent(this);
        return (ErrorNode) m6479const(errorNode);
    }

    /* renamed from: native, reason: not valid java name */
    public void m6487native(qc1 qc1Var) {
        this.f7303do = qc1Var.f7303do;
        this.f7304if = qc1Var.f7304if;
        this.f5340try = qc1Var.f5340try;
        this.f5337case = qc1Var.f5337case;
        if (qc1Var.f5339new != null) {
            this.f5339new = new ArrayList();
            for (ParseTree parseTree : qc1Var.f5339new) {
                if (parseTree instanceof ErrorNode) {
                    m6495throw((ErrorNode) parseTree);
                }
            }
        }
    }

    /* renamed from: package, reason: not valid java name */
    public TerminalNode m6488package(int i, int i2) {
        List<ParseTree> list = this.f5339new;
        if (list != null && i2 >= 0 && i2 < list.size()) {
            int i3 = -1;
            for (ParseTree parseTree : this.f5339new) {
                if (parseTree instanceof TerminalNode) {
                    TerminalNode terminalNode = (TerminalNode) parseTree;
                    if (terminalNode.getSymbol().getType() == i && (i3 = i3 + 1) == i2) {
                        return terminalNode;
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: private, reason: not valid java name */
    public List<TerminalNode> m6489private(int i) {
        List<ParseTree> list = this.f5339new;
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = null;
        for (ParseTree parseTree : list) {
            if (parseTree instanceof TerminalNode) {
                TerminalNode terminalNode = (TerminalNode) parseTree;
                if (terminalNode.getSymbol().getType() == i) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(terminalNode);
                }
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    /* renamed from: public, reason: not valid java name */
    public void mo6490public(ParseTreeListener parseTreeListener) {
    }

    /* renamed from: return, reason: not valid java name */
    public void mo6491return(ParseTreeListener parseTreeListener) {
    }

    /* renamed from: static, reason: not valid java name */
    public <T extends ParseTree> T m6492static(Class<? extends T> cls, int i) {
        List<ParseTree> list = this.f5339new;
        if (list != null && i >= 0 && i < list.size()) {
            int i2 = -1;
            for (ParseTree parseTree : this.f5339new) {
                if (cls.isInstance(parseTree) && (i2 = i2 + 1) == i) {
                    return cls.cast(parseTree);
                }
            }
        }
        return null;
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public TerminalNode m6493super(Token token) {
        t52 t52Var = new t52(token);
        m6479const(t52Var);
        t52Var.setParent(this);
        return t52Var;
    }

    @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.Tree
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public qc1 getParent() {
        return (qc1) super.getParent();
    }

    /* renamed from: throw, reason: not valid java name */
    public TerminalNode m6495throw(TerminalNode terminalNode) {
        terminalNode.setParent(this);
        return (TerminalNode) m6479const(terminalNode);
    }

    /* renamed from: throws, reason: not valid java name */
    public <T extends qc1> T m6496throws(Class<? extends T> cls, int i) {
        return (T) m6492static(cls, i);
    }

    @Deprecated
    /* renamed from: while, reason: not valid java name */
    public ErrorNode m6497while(Token token) {
        k80 k80Var = new k80(token);
        m6479const(k80Var);
        k80Var.setParent(this);
        return k80Var;
    }

    public qc1(qc1 qc1Var, int i) {
        super(qc1Var, i);
    }

    @Override // android.support.v4.vo1, org.antlr.v4.runtime.tree.Tree
    public ParseTree getChild(int i) {
        List<ParseTree> list = this.f5339new;
        if (list == null || i < 0 || i >= list.size()) {
            return null;
        }
        return this.f5339new.get(i);
    }
}

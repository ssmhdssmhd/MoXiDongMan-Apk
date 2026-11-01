package android.support.v4;

import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

/* loaded from: classes3.dex */
public abstract class c<T> implements ParseTreeVisitor<T> {
    /* renamed from: do, reason: not valid java name */
    public T m705do(T t, T t2) {
        return t2;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m706for(RuleNode ruleNode, T t) {
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public T m707if() {
        return null;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTreeVisitor
    public T visit(ParseTree parseTree) {
        return (T) parseTree.accept(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.antlr.v4.runtime.tree.ParseTreeVisitor
    public T visitChildren(RuleNode ruleNode) {
        T t = (T) m707if();
        int childCount = ruleNode.getChildCount();
        for (int i = 0; i < childCount && m706for(ruleNode, t); i++) {
            t = (T) m705do(t, ruleNode.getChild(i).accept(this));
        }
        return t;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTreeVisitor
    public T visitErrorNode(ErrorNode errorNode) {
        return m707if();
    }

    @Override // org.antlr.v4.runtime.tree.ParseTreeVisitor
    public T visitTerminal(TerminalNode terminalNode) {
        return m707if();
    }
}

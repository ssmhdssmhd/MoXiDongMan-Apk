package android.support.v4;

import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

/* loaded from: classes3.dex */
public class nc1 {

    /* renamed from: do, reason: not valid java name */
    public static final nc1 f4170do = new nc1();

    /* renamed from: do, reason: not valid java name */
    public void m5149do(ParseTreeListener parseTreeListener, RuleNode ruleNode) {
        qc1 qc1Var = (qc1) ruleNode.getRuleContext();
        parseTreeListener.enterEveryRule(qc1Var);
        qc1Var.mo6490public(parseTreeListener);
    }

    /* renamed from: for */
    public void mo1964for(ParseTreeListener parseTreeListener, ParseTree parseTree) {
        if (parseTree instanceof ErrorNode) {
            parseTreeListener.visitErrorNode((ErrorNode) parseTree);
            return;
        }
        if (parseTree instanceof TerminalNode) {
            parseTreeListener.visitTerminal((TerminalNode) parseTree);
            return;
        }
        RuleNode ruleNode = (RuleNode) parseTree;
        m5149do(parseTreeListener, ruleNode);
        int childCount = ruleNode.getChildCount();
        for (int i = 0; i < childCount; i++) {
            mo1964for(parseTreeListener, ruleNode.getChild(i));
        }
        m5150if(parseTreeListener, ruleNode);
    }

    /* renamed from: if, reason: not valid java name */
    public void m5150if(ParseTreeListener parseTreeListener, RuleNode ruleNode) {
        qc1 qc1Var = (qc1) ruleNode.getRuleContext();
        qc1Var.mo6491return(parseTreeListener);
        parseTreeListener.exitEveryRule(qc1Var);
    }
}

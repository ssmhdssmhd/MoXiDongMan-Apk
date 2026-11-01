package android.support.v4;

import java.util.ArrayDeque;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

/* loaded from: classes3.dex */
public class eo0 extends nc1 {
    @Override // android.support.v4.nc1
    /* renamed from: for, reason: not valid java name */
    public void mo1964for(ParseTreeListener parseTreeListener, ParseTree parseTree) {
        ArrayDeque arrayDeque = new ArrayDeque();
        gn0 gn0Var = new gn0();
        while (true) {
            int iM2743static = 0;
            while (parseTree != null) {
                if (parseTree instanceof ErrorNode) {
                    parseTreeListener.visitErrorNode((ErrorNode) parseTree);
                } else if (parseTree instanceof TerminalNode) {
                    parseTreeListener.visitTerminal((TerminalNode) parseTree);
                } else {
                    m5149do(parseTreeListener, (RuleNode) parseTree);
                }
                if (parseTree.getChildCount() > 0) {
                    arrayDeque.push(parseTree);
                    gn0Var.m2744switch(iM2743static);
                    parseTree = parseTree.getChild(0);
                } else {
                    do {
                        if (parseTree instanceof RuleNode) {
                            m5150if(parseTreeListener, (RuleNode) parseTree);
                        }
                        if (arrayDeque.isEmpty()) {
                            parseTree = null;
                        } else {
                            iM2743static++;
                            parseTree = ((ParseTree) arrayDeque.peek()).getChild(iM2743static);
                            if (parseTree != null) {
                                break;
                            }
                            parseTree = (ParseTree) arrayDeque.pop();
                            iM2743static = gn0Var.m2743static();
                        }
                    } while (parseTree != null);
                }
            }
            return;
        }
    }
}

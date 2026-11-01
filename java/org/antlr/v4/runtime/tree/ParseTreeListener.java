package org.antlr.v4.runtime.tree;

import android.support.v4.qc1;

/* loaded from: classes3.dex */
public interface ParseTreeListener {
    void enterEveryRule(qc1 qc1Var);

    void exitEveryRule(qc1 qc1Var);

    void visitErrorNode(ErrorNode errorNode);

    void visitTerminal(TerminalNode terminalNode);
}

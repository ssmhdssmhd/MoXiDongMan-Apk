package org.antlr.v4.runtime.tree;

/* loaded from: classes3.dex */
public interface ParseTreeVisitor<T> {
    T visit(ParseTree parseTree);

    T visitChildren(RuleNode ruleNode);

    T visitErrorNode(ErrorNode errorNode);

    T visitTerminal(TerminalNode terminalNode);
}

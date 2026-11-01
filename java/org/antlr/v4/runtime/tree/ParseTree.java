package org.antlr.v4.runtime.tree;

import android.support.v4.vo1;
import org.antlr.v4.runtime.Cgoto;

/* loaded from: classes3.dex */
public interface ParseTree extends SyntaxTree {
    <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor);

    @Override // org.antlr.v4.runtime.tree.Tree
    ParseTree getChild(int i);

    @Override // org.antlr.v4.runtime.tree.Tree
    ParseTree getParent();

    String getText();

    void setParent(vo1 vo1Var);

    String toStringTree(Cgoto cgoto);
}

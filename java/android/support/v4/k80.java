package android.support.v4;

import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/* loaded from: classes3.dex */
public class k80 extends t52 implements ErrorNode {
    public k80(Token token) {
        super(token);
    }

    @Override // android.support.v4.t52, org.antlr.v4.runtime.tree.ParseTree
    public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
        return parseTreeVisitor.visitErrorNode(this);
    }
}

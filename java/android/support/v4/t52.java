package android.support.v4;

import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;
import org.antlr.v4.runtime.tree.TerminalNode;

/* loaded from: classes3.dex */
public class t52 implements TerminalNode {

    /* renamed from: do, reason: not valid java name */
    public Token f6423do;

    /* renamed from: if, reason: not valid java name */
    public ParseTree f6424if;

    public t52(Token token) {
        this.f6423do = token;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
        return parseTreeVisitor.visitTerminal(this);
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Token getPayload() {
        return this.f6423do;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public ParseTree getChild(int i) {
        return null;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public int getChildCount() {
        return 0;
    }

    @Override // org.antlr.v4.runtime.tree.SyntaxTree
    public rn0 getSourceInterval() {
        Token token = this.f6423do;
        if (token == null) {
            return rn0.f5885new;
        }
        int tokenIndex = token.getTokenIndex();
        return new rn0(tokenIndex, tokenIndex);
    }

    @Override // org.antlr.v4.runtime.tree.TerminalNode
    public Token getSymbol() {
        return this.f6423do;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public String getText() {
        return this.f6423do.getText();
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public void setParent(vo1 vo1Var) {
        this.f6424if = vo1Var;
    }

    public String toString() {
        return this.f6423do.getType() == -1 ? "<EOF>" : this.f6423do.getText();
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public String toStringTree(Cgoto cgoto) {
        return toString();
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public ParseTree getParent() {
        return this.f6424if;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public String toStringTree() {
        return toString();
    }
}

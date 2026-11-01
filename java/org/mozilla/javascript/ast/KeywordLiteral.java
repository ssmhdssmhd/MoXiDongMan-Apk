package org.mozilla.javascript.ast;

import freemarker.core.b2;

/* loaded from: classes3.dex */
public class KeywordLiteral extends AstNode {
    public KeywordLiteral() {
    }

    public boolean isBooleanLiteral() {
        int i = this.type;
        return i == 45 || i == 44;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        int type = getType();
        if (type != 161) {
            switch (type) {
                case 42:
                    sb.append("null");
                    break;
                case 43:
                    sb.append("this");
                    break;
                case 44:
                    sb.append(b2.f23510do);
                    break;
                case 45:
                    sb.append(b2.f23511if);
                    break;
                default:
                    throw new IllegalStateException("Invalid keyword literal type: " + getType());
            }
        } else {
            sb.append("debugger;\n");
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public KeywordLiteral(int i) {
        super(i);
    }

    @Override // org.mozilla.javascript.Node
    public KeywordLiteral setType(int i) {
        if (i == 43 || i == 42 || i == 45 || i == 44 || i == 161) {
            this.type = i;
            return this;
        }
        throw new IllegalArgumentException("Invalid node type: " + i);
    }

    public KeywordLiteral(int i, int i2) {
        super(i, i2);
    }

    public KeywordLiteral(int i, int i2, int i3) {
        super(i, i2);
        setType(i3);
    }
}

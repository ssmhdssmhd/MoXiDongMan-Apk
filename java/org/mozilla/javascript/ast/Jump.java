package org.mozilla.javascript.ast;

import org.mozilla.javascript.Node;

/* loaded from: classes3.dex */
public class Jump extends AstNode {
    private Jump jumpNode;
    public Node target;
    private Node target2;

    public Jump() {
        this.type = -1;
    }

    public Node getContinue() throws RuntimeException {
        if (this.type != 133) {
            AstNode.codeBug();
        }
        return this.target2;
    }

    public Node getDefault() throws RuntimeException {
        if (this.type != 115) {
            AstNode.codeBug();
        }
        return this.target2;
    }

    public Node getFinally() throws RuntimeException {
        if (this.type != 82) {
            AstNode.codeBug();
        }
        return this.target2;
    }

    public Jump getJumpStatement() throws RuntimeException {
        int i = this.type;
        if (i != 121 && i != 122) {
            AstNode.codeBug();
        }
        return this.jumpNode;
    }

    public Jump getLoop() throws RuntimeException {
        if (this.type != 131) {
            AstNode.codeBug();
        }
        return this.jumpNode;
    }

    public void setContinue(Node node) throws RuntimeException {
        if (this.type != 133) {
            AstNode.codeBug();
        }
        if (node.getType() != 132) {
            AstNode.codeBug();
        }
        if (this.target2 != null) {
            AstNode.codeBug();
        }
        this.target2 = node;
    }

    public void setDefault(Node node) throws RuntimeException {
        if (this.type != 115) {
            AstNode.codeBug();
        }
        if (node.getType() != 132) {
            AstNode.codeBug();
        }
        if (this.target2 != null) {
            AstNode.codeBug();
        }
        this.target2 = node;
    }

    public void setFinally(Node node) throws RuntimeException {
        if (this.type != 82) {
            AstNode.codeBug();
        }
        if (node.getType() != 132) {
            AstNode.codeBug();
        }
        if (this.target2 != null) {
            AstNode.codeBug();
        }
        this.target2 = node;
    }

    public void setJumpStatement(Jump jump) throws RuntimeException {
        int i = this.type;
        if (i != 121 && i != 122) {
            AstNode.codeBug();
        }
        if (jump == null) {
            AstNode.codeBug();
        }
        if (this.jumpNode != null) {
            AstNode.codeBug();
        }
        this.jumpNode = jump;
    }

    public void setLoop(Jump jump) throws RuntimeException {
        if (this.type != 131) {
            AstNode.codeBug();
        }
        if (jump == null) {
            AstNode.codeBug();
        }
        if (this.jumpNode != null) {
            AstNode.codeBug();
        }
        this.jumpNode = jump;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        throw new UnsupportedOperationException(toString());
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        throw new UnsupportedOperationException(toString());
    }

    public Jump(int i) {
        this.type = i;
    }

    public Jump(int i, int i2) {
        this(i);
        setLineno(i2);
    }

    public Jump(int i, Node node) {
        this(i);
        addChildToBack(node);
    }

    public Jump(int i, Node node, int i2) {
        this(i, node);
        setLineno(i2);
    }
}

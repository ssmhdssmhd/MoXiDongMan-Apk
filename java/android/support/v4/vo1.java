package android.support.v4;

import java.util.Arrays;
import java.util.List;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;
import org.antlr.v4.runtime.tree.RuleNode;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class vo1 implements RuleNode {

    /* renamed from: for, reason: not valid java name */
    public static final qc1 f7302for = new qc1();

    /* renamed from: do, reason: not valid java name */
    public vo1 f7303do;

    /* renamed from: if, reason: not valid java name */
    public int f7304if;

    public vo1() {
        this.f7304if = -1;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public <T> T accept(ParseTreeVisitor<? extends T> parseTreeVisitor) {
        return parseTreeVisitor.visitChildren(this);
    }

    /* renamed from: break, reason: not valid java name */
    public final String m8922break(Cthis<?, ?> cthis) {
        return m8924catch(cthis, f7302for);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m8923case() {
        return this.f7304if == -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m8924catch(Cthis<?, ?> cthis, vo1 vo1Var) {
        String[] strArrMo2318class = cthis != null ? cthis.mo2318class() : null;
        return m8931this(strArrMo2318class != null ? Arrays.asList(strArrMo2318class) : null, vo1Var);
    }

    /* renamed from: class, reason: not valid java name */
    public String m8925class(List<String> list) {
        return v82.m8796throw(this, list);
    }

    /* renamed from: do, reason: not valid java name */
    public int m8926do() {
        int i = 0;
        vo1 vo1Var = this;
        while (vo1Var != null) {
            vo1Var = vo1Var.f7303do;
            i++;
        }
        return i;
    }

    /* renamed from: else, reason: not valid java name */
    public void mo8927else(int i) {
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    /* renamed from: for, reason: merged with bridge method [inline-methods] */
    public vo1 getParent() {
        return this.f7303do;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public ParseTree getChild(int i) {
        return null;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public int getChildCount() {
        return 0;
    }

    @Override // org.antlr.v4.runtime.tree.RuleNode
    public vo1 getRuleContext() {
        return this;
    }

    @Override // org.antlr.v4.runtime.tree.SyntaxTree
    public rn0 getSourceInterval() {
        return rn0.f5885new;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public String getText() {
        if (getChildCount() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < getChildCount(); i++) {
            sb.append(getChild(i).getText());
        }
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public final String m8928goto(List<String> list) {
        return m8931this(list, null);
    }

    /* renamed from: if, reason: not valid java name */
    public int mo8929if() {
        return 0;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public vo1 getPayload() {
        return this;
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public void setParent(vo1 vo1Var) {
        this.f7303do = vo1Var;
    }

    /* renamed from: this, reason: not valid java name */
    public String m8931this(List<String> list, vo1 vo1Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (vo1 vo1Var2 = this; vo1Var2 != null && vo1Var2 != vo1Var; vo1Var2 = vo1Var2.f7303do) {
            if (list != null) {
                int iMo6627try = vo1Var2.mo6627try();
                sb.append((iMo6627try < 0 || iMo6627try >= list.size()) ? Integer.toString(iMo6627try) : list.get(iMo6627try));
            } else if (!vo1Var2.m8923case()) {
                sb.append(vo1Var2.f7304if);
            }
            vo1 vo1Var3 = vo1Var2.f7303do;
            if (vo1Var3 != null && (list != null || !vo1Var3.m8923case())) {
                sb.append(Cclass.f28652do);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public String toString() {
        return m8931this(null, null);
    }

    @Override // org.antlr.v4.runtime.tree.ParseTree
    public String toStringTree(Cgoto cgoto) {
        return v82.m8798while(this, cgoto);
    }

    /* renamed from: try */
    public int mo6627try() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.tree.Tree
    public String toStringTree() {
        return m8925class(null);
    }

    public vo1(vo1 vo1Var, int i) {
        this.f7304if = -1;
        this.f7303do = vo1Var;
        this.f7304if = i;
    }
}

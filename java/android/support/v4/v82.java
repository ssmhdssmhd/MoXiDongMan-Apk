package android.support.v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.misc.Cfor;
import org.antlr.v4.runtime.misc.Predicate;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.Tree;

/* loaded from: classes3.dex */
public class v82 {
    private v82() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m8782break(Tree tree, List<String> list) {
        Token symbol;
        if (list != null) {
            if (tree instanceof vo1) {
                vo1 vo1Var = (vo1) tree;
                String str = list.get(vo1Var.getRuleContext().mo6627try());
                int iMo8929if = vo1Var.mo8929if();
                if (iMo8929if == 0) {
                    return str;
                }
                return str + ":" + iMo8929if;
            }
            if (tree instanceof ErrorNode) {
                return tree.toString();
            }
            if ((tree instanceof TerminalNode) && (symbol = ((TerminalNode) tree).getSymbol()) != null) {
                return symbol.getText();
            }
        }
        Object payload = tree.getPayload();
        return payload instanceof Token ? ((Token) payload).getText() : tree.getPayload().toString();
    }

    /* renamed from: case, reason: not valid java name */
    public static Tree m8783case(Tree tree, Predicate<Tree> predicate) {
        if (predicate.test(tree)) {
            return tree;
        }
        int childCount = tree.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Tree treeM8783case = m8783case(tree.getChild(i), predicate);
            if (treeM8783case != null) {
                return treeM8783case;
            }
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m8784catch(Tree tree, Cgoto cgoto) {
        String[] strArrMo2318class = cgoto != null ? cgoto.mo2318class() : null;
        return m8782break(tree, strArrMo2318class != null ? Arrays.asList(strArrMo2318class) : null);
    }

    /* renamed from: class, reason: not valid java name */
    public static qc1 m8785class(ParseTree parseTree, int i, int i2) {
        int childCount = parseTree.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            qc1 qc1VarM8785class = m8785class(parseTree.getChild(i3), i, i2);
            if (qc1VarM8785class != null) {
                return qc1VarM8785class;
            }
        }
        if (!(parseTree instanceof qc1)) {
            return null;
        }
        qc1 qc1Var = (qc1) parseTree;
        if (i < qc1Var.m6482extends().getTokenIndex()) {
            return null;
        }
        if (qc1Var.m6484finally() == null || i2 <= qc1Var.m6484finally().getTokenIndex()) {
            return qc1Var;
        }
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m8786const(Tree tree, Tree tree2) {
        if (tree != null && tree2 != null && tree.getParent() != null) {
            for (Tree parent = tree2.getParent(); parent != null; parent = parent.getParent()) {
                if (tree == parent) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8787do(ParseTree parseTree, int i, boolean z, List<? super ParseTree> list) {
        if (z && (parseTree instanceof TerminalNode)) {
            if (((TerminalNode) parseTree).getSymbol().getType() == i) {
                list.add(parseTree);
            }
        } else if (!z && (parseTree instanceof qc1) && ((qc1) parseTree).mo6627try() == i) {
            list.add(parseTree);
        }
        for (int i2 = 0; i2 < parseTree.getChildCount(); i2++) {
            m8787do(parseTree.getChild(i2), i, z, list);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static List<? extends Tree> m8788else(Tree tree) {
        if (tree.getParent() == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Tree parent = tree.getParent(); parent != null; parent = parent.getParent()) {
            arrayList.add(0, parent);
        }
        return arrayList;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m8789final(qc1 qc1Var, qc1 qc1Var2, int i, int i2) {
        if (qc1Var == null) {
            return;
        }
        for (int i3 = 0; i3 < qc1Var.getChildCount(); i3++) {
            ParseTree child = qc1Var.getChild(i3);
            rn0 sourceInterval = child.getSourceInterval();
            if ((child instanceof qc1) && ((sourceInterval.f5889if < i || sourceInterval.f5888do > i2) && m8786const(child, qc1Var2))) {
                qc1Var.f5339new.set(i3, new t52(new fp(0, "...")));
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static List<ParseTree> m8790for(ParseTree parseTree, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        m8787do(parseTree, i, z, arrayList);
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    public static List<Tree> m8791goto(Tree tree) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < tree.getChildCount(); i++) {
            arrayList.add(tree.getChild(i));
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static List<ParseTree> m8792if(ParseTree parseTree) {
        return m8795this(parseTree);
    }

    /* renamed from: new, reason: not valid java name */
    public static Collection<ParseTree> m8793new(ParseTree parseTree, int i) {
        return m8790for(parseTree, i, false);
    }

    /* renamed from: super, reason: not valid java name */
    public static String m8794super(Tree tree) {
        return m8796throw(tree, null);
    }

    /* renamed from: this, reason: not valid java name */
    public static List<ParseTree> m8795this(ParseTree parseTree) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(parseTree);
        int childCount = parseTree.getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.addAll(m8795this(parseTree.getChild(i)));
        }
        return arrayList;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m8796throw(Tree tree, List<String> list) {
        String strM32042if = Cfor.m32042if(m8782break(tree, list), false);
        if (tree.getChildCount() == 0) {
            return strM32042if;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(Cfor.m32042if(m8782break(tree, list), false));
        sb.append(' ');
        for (int i = 0; i < tree.getChildCount(); i++) {
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m8796throw(tree.getChild(i), list));
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public static Collection<ParseTree> m8797try(ParseTree parseTree, int i) {
        return m8790for(parseTree, i, true);
    }

    /* renamed from: while, reason: not valid java name */
    public static String m8798while(Tree tree, Cgoto cgoto) {
        String[] strArrMo2318class = cgoto != null ? cgoto.mo2318class() : null;
        return m8796throw(tree, strArrMo2318class != null ? Arrays.asList(strArrMo2318class) : null);
    }
}

package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.TerminalNode;
import org.antlr.v4.runtime.tree.Tree;

/* loaded from: classes3.dex */
public class wi2 extends qi2 {

    /* renamed from: for, reason: not valid java name */
    public int f7537for;

    public wi2(String str, int i) {
        super(str);
        this.f7537for = i;
    }

    @Override // android.support.v4.qi2
    /* renamed from: do */
    public Collection<ParseTree> mo6605do(ParseTree parseTree) {
        ArrayList arrayList = new ArrayList();
        for (Tree tree : v82.m8791goto(parseTree)) {
            if (tree instanceof TerminalNode) {
                TerminalNode terminalNode = (TerminalNode) tree;
                if ((terminalNode.getSymbol().getType() == this.f7537for && !this.f5435if) || (terminalNode.getSymbol().getType() != this.f7537for && this.f5435if)) {
                    arrayList.add(terminalNode);
                }
            }
        }
        return arrayList;
    }
}

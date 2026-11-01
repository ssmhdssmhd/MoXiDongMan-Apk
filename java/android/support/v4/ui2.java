package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.Tree;

/* loaded from: classes3.dex */
public class ui2 extends qi2 {

    /* renamed from: for, reason: not valid java name */
    public int f6897for;

    public ui2(String str, int i) {
        super(str);
        this.f6897for = i;
    }

    @Override // android.support.v4.qi2
    /* renamed from: do */
    public Collection<ParseTree> mo6605do(ParseTree parseTree) {
        ArrayList arrayList = new ArrayList();
        for (Tree tree : v82.m8791goto(parseTree)) {
            if (tree instanceof qc1) {
                qc1 qc1Var = (qc1) tree;
                if ((qc1Var.mo6627try() == this.f6897for && !this.f5435if) || (qc1Var.mo6627try() != this.f6897for && this.f5435if)) {
                    arrayList.add(qc1Var);
                }
            }
        }
        return arrayList;
    }
}

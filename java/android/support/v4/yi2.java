package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.Tree;

/* loaded from: classes3.dex */
public class yi2 extends qi2 {
    public yi2() {
        super("*");
    }

    @Override // android.support.v4.qi2
    /* renamed from: do */
    public Collection<ParseTree> mo6605do(ParseTree parseTree) {
        if (this.f5435if) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Tree> it = v82.m8791goto(parseTree).iterator();
        while (it.hasNext()) {
            arrayList.add((ParseTree) it.next());
        }
        return arrayList;
    }
}

package android.support.v4;

import java.util.Collection;
import org.antlr.v4.runtime.tree.ParseTree;

/* loaded from: classes3.dex */
public class ti2 extends qi2 {

    /* renamed from: for, reason: not valid java name */
    public int f6578for;

    public ti2(String str, int i) {
        super(str);
        this.f6578for = i;
    }

    @Override // android.support.v4.qi2
    /* renamed from: do */
    public Collection<ParseTree> mo6605do(ParseTree parseTree) {
        return v82.m8793new(parseTree, this.f6578for);
    }
}

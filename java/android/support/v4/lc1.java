package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.pattern.Cif;
import org.antlr.v4.runtime.tree.xpath.Cdo;

/* loaded from: classes3.dex */
public class lc1 {

    /* renamed from: do, reason: not valid java name */
    private final int f3621do;

    /* renamed from: for, reason: not valid java name */
    private final ParseTree f3622for;

    /* renamed from: if, reason: not valid java name */
    private final String f3623if;

    /* renamed from: new, reason: not valid java name */
    private final Cif f3624new;

    public lc1(Cif cif, String str, int i, ParseTree parseTree) {
        this.f3624new = cif;
        this.f3621do = i;
        this.f3623if = str;
        this.f3622for = parseTree;
    }

    /* renamed from: case, reason: not valid java name */
    public kc1 m4637case(ParseTree parseTree) {
        return this.f3624new.m32098try(parseTree, this);
    }

    /* renamed from: do, reason: not valid java name */
    public List<kc1> m4638do(ParseTree parseTree, String str) {
        Collection<ParseTree> collectionM32100if = Cdo.m32100if(parseTree, str, this.f3624new.m32093for());
        ArrayList arrayList = new ArrayList();
        Iterator<ParseTree> it = collectionM32100if.iterator();
        while (it.hasNext()) {
            kc1 kc1VarM4637case = m4637case(it.next());
            if (kc1VarM4637case.m4370else()) {
                arrayList.add(kc1VarM4637case);
            }
        }
        return arrayList;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m4639else(ParseTree parseTree) {
        return this.f3624new.m32098try(parseTree, this).m4370else();
    }

    /* renamed from: for, reason: not valid java name */
    public String m4640for() {
        return this.f3623if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cif m4641if() {
        return this.f3624new;
    }

    /* renamed from: new, reason: not valid java name */
    public int m4642new() {
        return this.f3621do;
    }

    /* renamed from: try, reason: not valid java name */
    public ParseTree m4643try() {
        return this.f3622for;
    }
}

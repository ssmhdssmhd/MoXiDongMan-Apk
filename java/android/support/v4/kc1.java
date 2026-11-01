package android.support.v4;

import java.util.Collections;
import java.util.List;
import org.antlr.v4.runtime.tree.ParseTree;

/* loaded from: classes3.dex */
public class kc1 {

    /* renamed from: do, reason: not valid java name */
    private final ParseTree f3358do;

    /* renamed from: for, reason: not valid java name */
    private final v01<String, ParseTree> f3359for;

    /* renamed from: if, reason: not valid java name */
    private final lc1 f3360if;

    /* renamed from: new, reason: not valid java name */
    private final ParseTree f3361new;

    public kc1(ParseTree parseTree, lc1 lc1Var, v01<String, ParseTree> v01Var, ParseTree parseTree2) {
        if (parseTree == null) {
            throw new IllegalArgumentException("tree cannot be null");
        }
        if (lc1Var == null) {
            throw new IllegalArgumentException("pattern cannot be null");
        }
        if (v01Var == null) {
            throw new IllegalArgumentException("labels cannot be null");
        }
        this.f3358do = parseTree;
        this.f3360if = lc1Var;
        this.f3359for = v01Var;
        this.f3361new = parseTree2;
    }

    /* renamed from: case, reason: not valid java name */
    public ParseTree m4368case() {
        return this.f3358do;
    }

    /* renamed from: do, reason: not valid java name */
    public ParseTree m4369do(String str) {
        List list = (List) this.f3359for.get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (ParseTree) list.get(list.size() - 1);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m4370else() {
        return this.f3361new == null;
    }

    /* renamed from: for, reason: not valid java name */
    public v01<String, ParseTree> m4371for() {
        return this.f3359for;
    }

    /* renamed from: if, reason: not valid java name */
    public List<ParseTree> m4372if(String str) {
        List<ParseTree> list = (List) this.f3359for.get(str);
        return list == null ? Collections.emptyList() : list;
    }

    /* renamed from: new, reason: not valid java name */
    public ParseTree m4373new() {
        return this.f3361new;
    }

    public String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = m4370else() ? "succeeded" : "failed";
        objArr[1] = Integer.valueOf(m4371for().size());
        return String.format("Match %s; found %d labels", objArr);
    }

    /* renamed from: try, reason: not valid java name */
    public lc1 m4374try() {
        return this.f3360if;
    }
}

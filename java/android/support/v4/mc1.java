package android.support.v4;

import java.util.IdentityHashMap;
import java.util.Map;
import org.antlr.v4.runtime.tree.ParseTree;

/* loaded from: classes3.dex */
public class mc1<V> {

    /* renamed from: do, reason: not valid java name */
    public Map<ParseTree, V> f3880do = new IdentityHashMap();

    /* renamed from: do, reason: not valid java name */
    public V m4899do(ParseTree parseTree) {
        return this.f3880do.get(parseTree);
    }

    /* renamed from: for, reason: not valid java name */
    public V m4900for(ParseTree parseTree) {
        return this.f3880do.remove(parseTree);
    }

    /* renamed from: if, reason: not valid java name */
    public void m4901if(ParseTree parseTree, V v) {
        this.f3880do.put(parseTree, v);
    }
}

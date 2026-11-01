package android.support.v4;

import java.util.Collection;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.xpath.Cdo;

/* loaded from: classes3.dex */
public abstract class qi2 {

    /* renamed from: do, reason: not valid java name */
    public String f5434do;

    /* renamed from: if, reason: not valid java name */
    public boolean f5435if;

    public qi2(String str) {
        this.f5434do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Collection<ParseTree> mo6605do(ParseTree parseTree);

    public String toString() {
        return getClass().getSimpleName() + "[" + (this.f5435if ? Cdo.f28590try : "") + this.f5434do + "]";
    }
}

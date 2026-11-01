package android.support.v4;

import java.util.List;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class i41 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        if (list.size() == 1) {
            return dj2.m1362break(Boolean.valueOf(!list.get(0).m1367do().booleanValue()));
        }
        throw new hj2("error param in not(bool) function.Please check.");
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "not";
    }
}

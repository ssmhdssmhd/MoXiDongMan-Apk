package android.support.v4;

import java.util.List;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class as implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        return (list == null || list.size() == 0) ? dj2.m1362break(0) : dj2.m1362break(Integer.valueOf(list.get(0).m1375new().size()));
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "count";
    }
}

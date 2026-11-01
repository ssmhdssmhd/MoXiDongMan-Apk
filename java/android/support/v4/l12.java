package android.support.v4;

import java.util.List;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class l12 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        return dj2.m1362break(Boolean.valueOf(list.get(0).m1368else().startsWith(list.get(1).m1368else())));
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "starts-with";
    }
}

package android.support.v4;

import java.util.Iterator;
import java.util.List;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class kq implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<dj2> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().m1368else());
        }
        return dj2.m1362break(sb.toString());
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "concat";
    }
}

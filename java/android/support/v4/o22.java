package android.support.v4;

import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class o22 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        String strM1368else = list.get(0).m1368else();
        int iMax = Math.max(list.get(1).m1363case().intValue() - 1, 0);
        return list.get(2) != null ? dj2.m1362break(Cclass.I1(strM1368else, iMax, Math.max(Math.min(list.get(2).m1363case().intValue() + iMax, strM1368else.length()), 0))) : dj2.m1362break(Cclass.H1(strM1368else, iMax));
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "substring";
    }
}

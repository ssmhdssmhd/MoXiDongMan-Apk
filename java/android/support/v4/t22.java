package android.support.v4;

import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class t22 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        String strM1368else = list.get(0).m1368else();
        int iIntValue = list.get(1).m1363case().intValue();
        return list.get(2) != null ? dj2.m1362break(Cclass.I1(strM1368else, iIntValue, list.get(2).m1363case().intValue())) : dj2.m1362break(Cclass.H1(strM1368else, iIntValue));
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "substring-ex";
    }
}

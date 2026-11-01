package android.support.v4;

import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.seimicrawler.xpath.core.Function;

/* loaded from: classes.dex */
public class s22 implements Function {
    @Override // org.seimicrawler.xpath.core.Function
    public dj2 call(es1 es1Var, List<dj2> list) {
        return dj2.m1362break(Cclass.M1(list.get(0).m1368else(), list.get(1).m1368else()));
    }

    @Override // org.seimicrawler.xpath.core.Function
    public String name() {
        return "substring-before-last";
    }
}

package android.support.v4;

import java.math.BigDecimal;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;
import org.seimicrawler.xpath.core.NodeTest;

/* loaded from: classes.dex */
public class d51 implements NodeTest {

    /* renamed from: do, reason: not valid java name */
    private static Pattern f939do = Pattern.compile("\\d*\\.?\\d+");

    @Override // org.seimicrawler.xpath.core.NodeTest
    public dj2 call(es1 es1Var) {
        Matcher matcher = f939do.matcher(Cclass.J(as1.m323if("allText").call(es1Var).m1380try(), ""));
        return matcher.find() ? dj2.m1362break(Double.valueOf(new BigDecimal(matcher.group()).doubleValue())) : dj2.m1362break(null);
    }

    @Override // org.seimicrawler.xpath.core.NodeTest
    public String name() {
        return "num";
    }
}

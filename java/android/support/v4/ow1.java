package android.support.v4;

import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class ow1 implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        return dj2.m1362break(elements);
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "self";
    }
}

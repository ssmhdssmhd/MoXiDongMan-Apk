package android.support.v4;

import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class nl implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        Elements elements2 = new Elements();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            elements2.addAll(it.next().children());
        }
        return dj2.m1362break(elements2);
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "child";
    }
}

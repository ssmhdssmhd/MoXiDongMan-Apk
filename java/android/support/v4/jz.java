package android.support.v4;

import java.util.HashSet;
import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class jz implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        HashSet hashSet = new HashSet();
        Elements elements2 = new Elements();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().getAllElements());
        }
        elements2.addAll(hashSet);
        return dj2.m1362break(elements2);
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "descendant-or-self";
    }
}

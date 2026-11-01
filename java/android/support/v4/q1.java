package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class q1 implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        LinkedList linkedList = new LinkedList();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            linkedList.addAll(next.parents());
            linkedList.add(next);
        }
        return dj2.m1362break(new Elements((List<Element>) linkedList));
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "ancestor-or-self";
    }
}

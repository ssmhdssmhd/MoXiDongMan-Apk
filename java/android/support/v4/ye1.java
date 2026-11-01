package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class ye1 implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        LinkedList linkedList = new LinkedList();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.previousElementSibling() != null) {
                linkedList.add(next);
            }
        }
        Elements elements2 = new Elements();
        elements2.addAll(linkedList);
        return dj2.m1362break(elements2);
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "preceding-sibling-one";
    }
}

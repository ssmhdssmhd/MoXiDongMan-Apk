package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class xe1 implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        Elements elements2 = new Elements();
        LinkedList linkedList = new LinkedList();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            Iterator<Element> it2 = next.parents().iterator();
            while (it2.hasNext()) {
                Elements elementsM3529new = ip.m3529new(it2.next());
                if (elementsM3529new != null) {
                    linkedList.addAll(elementsM3529new);
                }
            }
            Elements elementsM3529new2 = ip.m3529new(next);
            if (elementsM3529new2 != null) {
                linkedList.addAll(elementsM3529new2);
            }
        }
        elements2.addAll(linkedList);
        return dj2.m1362break(elements2);
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "preceding";
    }
}

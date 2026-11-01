package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.AxisSelector;

/* loaded from: classes.dex */
public class ed0 implements AxisSelector {
    @Override // org.seimicrawler.xpath.core.AxisSelector
    public dj2 apply(Elements elements) {
        LinkedList linkedList = new LinkedList();
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            Iterator<Element> it2 = next.parents().iterator();
            while (it2.hasNext()) {
                Elements elementsM3526do = ip.m3526do(it2.next());
                if (elementsM3526do != null) {
                    Iterator<Element> it3 = elementsM3526do.iterator();
                    while (it3.hasNext()) {
                        linkedList.addAll(it3.next().getAllElements());
                    }
                }
            }
            Elements elementsM3526do2 = ip.m3526do(next);
            if (elementsM3526do2 != null) {
                Iterator<Element> it4 = elementsM3526do2.iterator();
                while (it4.hasNext()) {
                    linkedList.addAll(it4.next().getAllElements());
                }
            }
        }
        return dj2.m1362break(new Elements((List<Element>) linkedList));
    }

    @Override // org.seimicrawler.xpath.core.AxisSelector
    public String name() {
        return "following";
    }
}

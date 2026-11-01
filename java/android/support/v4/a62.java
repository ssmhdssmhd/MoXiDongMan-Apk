package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.NodeTest;

/* loaded from: classes.dex */
public class a62 implements NodeTest {
    @Override // org.seimicrawler.xpath.core.NodeTest
    public dj2 call(es1 es1Var) {
        Elements elementsM2010do = es1Var.m2010do();
        LinkedList linkedList = new LinkedList();
        if (elementsM2010do != null && elementsM2010do.size() > 0) {
            if (es1Var.m2008case()) {
                return as1.m323if("allText").call(es1Var);
            }
            Iterator<Element> it = elementsM2010do.iterator();
            while (it.hasNext()) {
                Element next = it.next();
                if ("script".equals(next.nodeName())) {
                    linkedList.add(next.data());
                } else {
                    linkedList.add(next.ownText());
                }
            }
        }
        return dj2.m1362break(linkedList);
    }

    @Override // org.seimicrawler.xpath.core.NodeTest
    public String name() {
        return "text";
    }
}

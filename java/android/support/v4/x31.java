package android.support.v4;

import java.util.Iterator;
import org.apache.commons.lang3.Cclass;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.core.NodeTest;

/* loaded from: classes.dex */
public class x31 implements NodeTest {
    @Override // org.seimicrawler.xpath.core.NodeTest
    public dj2 call(es1 es1Var) {
        Elements elements = new Elements();
        Iterator<Element> it = es1Var.m2010do().iterator();
        while (it.hasNext()) {
            Element next = it.next();
            elements.addAll(next.children());
            String strOwnText = next.ownText();
            if (Cclass.D(strOwnText)) {
                Element element = new Element("");
                element.appendText(strOwnText);
                elements.add(element);
            }
        }
        return dj2.m1362break(elements);
    }

    @Override // org.seimicrawler.xpath.core.NodeTest
    public String name() {
        return freemarker.core.k.f23935package;
    }
}

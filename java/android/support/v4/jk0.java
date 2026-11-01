package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import org.jsoup.nodes.Element;
import org.seimicrawler.xpath.core.NodeTest;

/* loaded from: classes.dex */
public class jk0 implements NodeTest {
    @Override // org.seimicrawler.xpath.core.NodeTest
    public dj2 call(es1 es1Var) {
        LinkedList linkedList = new LinkedList();
        Iterator<Element> it = es1Var.m2010do().iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().html());
        }
        return dj2.m1362break(linkedList);
    }

    @Override // org.seimicrawler.xpath.core.NodeTest
    public String name() {
        return "html";
    }
}

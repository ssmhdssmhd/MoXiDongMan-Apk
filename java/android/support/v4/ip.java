package android.support.v4;

import java.util.Iterator;
import java.util.Objects;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class ip {
    /* renamed from: do, reason: not valid java name */
    public static Elements m3526do(Element element) {
        Elements elements = new Elements();
        for (Element elementNextElementSibling = element.nextElementSibling(); elementNextElementSibling != null; elementNextElementSibling = elementNextElementSibling.nextElementSibling()) {
            elements.add(elementNextElementSibling);
        }
        if (elements.size() > 0) {
            return elements;
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3527for(es1 es1Var, Element element) {
        for (int i = 0; i < es1Var.m2010do().size(); i++) {
            if (Objects.equals(es1Var.m2010do().get(i), element)) {
                return i + 1;
            }
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3528if(Element element, es1 es1Var) {
        Iterator<Element> it = element.parent().children().iterator();
        int i = 1;
        while (it.hasNext()) {
            Element next = it.next();
            if (element.tagName().equals(next.tagName()) && es1Var.m2010do().contains(next)) {
                if (element.equals(next)) {
                    break;
                }
                i++;
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public static Elements m3529new(Element element) {
        Elements elements = new Elements();
        for (Element elementPreviousElementSibling = element.previousElementSibling(); elementPreviousElementSibling != null; elementPreviousElementSibling = elementPreviousElementSibling.previousElementSibling()) {
            elements.add(elementPreviousElementSibling);
        }
        if (elements.size() > 0) {
            return elements;
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m3530try(Element element, es1 es1Var) {
        Elements elements = new Elements();
        Iterator<Element> it = element.parent().getElementsByTag(element.tagName()).iterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (es1Var.m2010do().contains(next)) {
                elements.add(next);
            }
        }
        return elements.size();
    }
}

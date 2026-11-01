package android.support.v4;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class es1 {

    /* renamed from: do, reason: not valid java name */
    private Elements f1576do;

    /* renamed from: for, reason: not valid java name */
    private es1 f1577for;

    /* renamed from: if, reason: not valid java name */
    private boolean f1578if = false;

    private es1(Elements elements) {
        Elements elements2 = new Elements();
        this.f1576do = elements2;
        elements2.addAll(elements);
    }

    /* renamed from: for, reason: not valid java name */
    public static es1 m2004for(Element element) {
        return new es1(element);
    }

    /* renamed from: if, reason: not valid java name */
    public static es1 m2005if(es1 es1Var) {
        return new es1(es1Var.m2010do()).m2007break(es1Var);
    }

    /* renamed from: new, reason: not valid java name */
    public static es1 m2006new(Elements elements) {
        return new es1(elements);
    }

    /* renamed from: break, reason: not valid java name */
    public es1 m2007break(es1 es1Var) {
        this.f1577for = es1Var;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m2008case() {
        return this.f1578if;
    }

    /* renamed from: catch, reason: not valid java name */
    public Element m2009catch() {
        if (this.f1576do.size() == 1) {
            return this.f1576do.first();
        }
        throw new hj2("current context is more than one el,total = " + this.f1576do.size());
    }

    /* renamed from: do, reason: not valid java name */
    public Elements m2010do() {
        return this.f1576do;
    }

    /* renamed from: else, reason: not valid java name */
    public void m2011else() {
        this.f1578if = false;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2012goto() {
        this.f1578if = true;
    }

    /* renamed from: this, reason: not valid java name */
    public void m2013this(Elements elements) {
        this.f1576do = elements;
    }

    /* renamed from: try, reason: not valid java name */
    public es1 m2014try() {
        return this.f1577for;
    }

    private es1(Element element) {
        Elements elements = new Elements();
        this.f1576do = elements;
        elements.add(element);
    }
}

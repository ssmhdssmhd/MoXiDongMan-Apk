package android.support.v4;

import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

@Deprecated
/* loaded from: classes.dex */
public class bp0 {

    /* renamed from: do, reason: not valid java name */
    private Element f503do;

    /* renamed from: for, reason: not valid java name */
    private String f504for;

    /* renamed from: if, reason: not valid java name */
    private boolean f505if;

    /* renamed from: do, reason: not valid java name */
    public static bp0 m607do(Element element) {
        bp0 bp0Var = new bp0();
        bp0Var.m609case(element).m610else(false);
        return bp0Var;
    }

    /* renamed from: this, reason: not valid java name */
    public static bp0 m608this(String str) {
        bp0 bp0Var = new bp0();
        bp0Var.m612goto(str).m610else(true);
        return bp0Var;
    }

    /* renamed from: case, reason: not valid java name */
    public bp0 m609case(Element element) {
        this.f503do = element;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public bp0 m610else(boolean z) {
        this.f505if = z;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public String m611for() {
        return this.f504for;
    }

    /* renamed from: goto, reason: not valid java name */
    public bp0 m612goto(String str) {
        this.f504for = str;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public Element m613if() {
        return this.f503do;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m614new() {
        return this.f505if;
    }

    public String toString() {
        return this.f505if ? this.f504for : this.f503do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public List<bp0> m615try(String str) throws jj2 {
        if (this.f503do == null) {
            return null;
        }
        return new zo0(new Elements(this.f503do)).m10260if(str);
    }
}

package android.support.v4;

import java.util.Date;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class ap0 {

    /* renamed from: do, reason: not valid java name */
    private Object f223do;

    public ap0(Object obj) {
        this.f223do = obj;
    }

    /* renamed from: case, reason: not valid java name */
    public static ap0 m296case(Object obj) {
        return new ap0(obj);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m297break() {
        return this.f223do instanceof Number;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m298catch() {
        return this.f223do instanceof String;
    }

    /* renamed from: class, reason: not valid java name */
    public List<ap0> m299class(String str) {
        if (m308this()) {
            return new yo0(new Elements(m307new())).m9918case(str);
        }
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    public ap0 m300const(String str) {
        List<ap0> listM299class = m299class(str);
        if (listM299class == null || listM299class.size() <= 0) {
            return null;
        }
        return listM299class.get(0);
    }

    /* renamed from: do, reason: not valid java name */
    public Boolean m301do() {
        return (Boolean) this.f223do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m302else() {
        return this.f223do instanceof Boolean;
    }

    /* renamed from: final, reason: not valid java name */
    public Object m303final() {
        return m308this() ? m307new() : m302else() ? m301do() : m297break() ? m304for() : m305goto() ? m306if() : m309try();
    }

    /* renamed from: for, reason: not valid java name */
    public Double m304for() {
        return (Double) this.f223do;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m305goto() {
        return this.f223do instanceof Date;
    }

    /* renamed from: if, reason: not valid java name */
    public Date m306if() {
        return (Date) this.f223do;
    }

    /* renamed from: new, reason: not valid java name */
    public Element m307new() {
        return (Element) this.f223do;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m308this() {
        return this.f223do instanceof Element;
    }

    public String toString() {
        return m308this() ? m307new().toString() : String.valueOf(this.f223do);
    }

    /* renamed from: try, reason: not valid java name */
    public String m309try() {
        return (String) this.f223do;
    }
}

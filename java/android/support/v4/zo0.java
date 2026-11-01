package android.support.v4;

import java.util.LinkedList;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

@Deprecated
/* loaded from: classes.dex */
public class zo0 {

    /* renamed from: do, reason: not valid java name */
    private yo0 f8625do;

    public zo0(Document document) {
        this.f8625do = yo0.m9916if(document);
    }

    /* renamed from: do, reason: not valid java name */
    public List<Object> m10258do(String str) throws jj2 {
        return this.f8625do.m9921try(str);
    }

    /* renamed from: for, reason: not valid java name */
    public bp0 m10259for(String str) throws jj2 {
        List<bp0> listM10260if = m10260if(str);
        if (listM10260if == null || listM10260if.size() <= 0) {
            return null;
        }
        return listM10260if.get(0);
    }

    /* renamed from: if, reason: not valid java name */
    public List<bp0> m10260if(String str) throws jj2 {
        LinkedList linkedList = new LinkedList();
        for (ap0 ap0Var : this.f8625do.m9918case(str)) {
            if (ap0Var.m298catch()) {
                linkedList.add(bp0.m608this(ap0Var.m309try()));
            } else {
                linkedList.add(bp0.m607do(ap0Var.m307new()));
            }
        }
        return linkedList;
    }

    /* renamed from: new, reason: not valid java name */
    public Object m10261new(String str) throws jj2 {
        bp0 bp0VarM10259for = m10259for(str);
        if (bp0VarM10259for != null) {
            return bp0VarM10259for.m614new() ? bp0VarM10259for.m611for() : bp0VarM10259for.m613if();
        }
        return null;
    }

    public zo0(String str) {
        this.f8625do = yo0.m9914do(str);
    }

    public zo0(Elements elements) {
        this.f8625do = yo0.m9915for(elements);
    }
}

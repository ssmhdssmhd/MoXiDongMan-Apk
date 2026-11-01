package android.support.v4;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.antlr.v4.runtime.Cnew;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.antlr.Cfor;

/* loaded from: classes.dex */
public class yo0 {

    /* renamed from: do, reason: not valid java name */
    private Elements f8278do;

    public yo0(Elements elements) {
        this.f8278do = elements;
    }

    /* renamed from: do, reason: not valid java name */
    public static yo0 m9914do(String str) {
        return new yo0(Jsoup.parse(str).children());
    }

    /* renamed from: for, reason: not valid java name */
    public static yo0 m9915for(Elements elements) {
        return new yo0(elements);
    }

    /* renamed from: if, reason: not valid java name */
    public static yo0 m9916if(Document document) {
        return new yo0(document.children());
    }

    /* renamed from: new, reason: not valid java name */
    public static yo0 m9917new(String str) {
        try {
            return new yo0(Jsoup.connect(str).get().children());
        } catch (Exception e) {
            throw new hj2("url资源获取失败", e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public List<ap0> m9918case(String str) {
        LinkedList linkedList = new LinkedList();
        try {
            Cfor cfor = new Cfor(new hp(new fj2(Cnew.m32061final(str))));
            cfor.H(new s10());
            dj2 dj2VarVisit = new ij2(this.f8278do).visit(cfor.a0());
            if (dj2VarVisit.m1377super()) {
                Iterator<Element> it = dj2VarVisit.m1375new().iterator();
                while (it.hasNext()) {
                    linkedList.add(ap0.m296case(it.next()));
                }
                return linkedList;
            }
            if (dj2VarVisit.m1381while()) {
                Iterator<String> it2 = dj2VarVisit.m1380try().iterator();
                while (it2.hasNext()) {
                    linkedList.add(ap0.m296case(it2.next()));
                }
                return linkedList;
            }
            if (dj2VarVisit.m1374native()) {
                linkedList.add(ap0.m296case(dj2VarVisit.m1368else()));
                return linkedList;
            }
            if (dj2VarVisit.m1373import()) {
                linkedList.add(ap0.m296case(dj2VarVisit.m1370for()));
                return linkedList;
            }
            if (dj2VarVisit.m1366const()) {
                linkedList.add(ap0.m296case(dj2VarVisit.m1367do()));
                return linkedList;
            }
            if (dj2VarVisit.m1369final()) {
                linkedList.add(ap0.m296case(dj2VarVisit.m1372if()));
                return linkedList;
            }
            linkedList.add(ap0.m296case(dj2VarVisit.m1368else()));
            return linkedList;
        } catch (Exception e) {
            throw new jj2("Please check the syntax of your xpath expr or commit a " + r80.m6828else(e), e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public ap0 m9919else(String str) {
        List<ap0> listM9918case = m9918case(str);
        if (listM9918case == null || listM9918case.size() <= 0) {
            return null;
        }
        return listM9918case.get(0);
    }

    /* renamed from: goto, reason: not valid java name */
    public Object m9920goto(String str) {
        ap0 ap0VarM9919else = m9919else(str);
        if (ap0VarM9919else != null) {
            return ap0VarM9919else.m308this() ? ap0VarM9919else.m307new() : ap0VarM9919else.toString();
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public List<Object> m9921try(String str) {
        LinkedList linkedList = new LinkedList();
        for (ap0 ap0Var : m9918case(str)) {
            if (ap0Var.m308this()) {
                linkedList.add(ap0Var.m307new());
            } else {
                linkedList.add(ap0Var.toString());
            }
        }
        return linkedList;
    }
}

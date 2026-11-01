package freemarker.ext.jsp;

import com.umeng.analytics.pro.d;
import freemarker.template.Cnative;
import freemarker.template.Cstatic;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTag;
import javax.servlet.jsp.tagext.Tag;

/* renamed from: freemarker.ext.jsp.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements BodyTag {

    /* renamed from: do, reason: not valid java name */
    private Tag f24859do;

    /* renamed from: for, reason: not valid java name */
    private PageContext f24861for;

    /* renamed from: if, reason: not valid java name */
    private BodyContent f24862if;

    /* renamed from: new, reason: not valid java name */
    private Cnative f24863new;

    /* renamed from: try, reason: not valid java name */
    private Cstatic f24864try;

    /* renamed from: case, reason: not valid java name */
    private boolean f24858case = true;

    /* renamed from: else, reason: not valid java name */
    private String f24860else = "";

    /* renamed from: break, reason: not valid java name */
    public void m29012break(String str) {
        if (str == null) {
            str = "";
        }
        this.f24860else = str;
    }

    /* renamed from: case, reason: not valid java name */
    public Tag m29013case() {
        return this.f24859do;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m29014catch(PageContext pageContext) {
        this.f24861for = pageContext;
        this.f24863new = null;
    }

    /* renamed from: class, reason: not valid java name */
    public void m29015class(Tag tag) {
        this.f24859do = tag;
    }

    /* renamed from: do, reason: not valid java name */
    public int m29016do() {
        return 0;
    }

    /* renamed from: else, reason: not valid java name */
    public void m29017else() {
        this.f24863new = null;
        this.f24864try = null;
        this.f24860else = "";
    }

    /* renamed from: for, reason: not valid java name */
    public void m29018for() {
    }

    /* renamed from: goto, reason: not valid java name */
    public void m29019goto(BodyContent bodyContent) {
        this.f24862if = bodyContent;
    }

    /* renamed from: if, reason: not valid java name */
    public int m29020if() throws JspException {
        if (this.f24862if == null) {
            return 6;
        }
        try {
            try {
                if (this.f24864try == null) {
                    this.f24864try = new Cstatic(this.f24860else, this.f24862if.getReader());
                }
                if (this.f24863new == null) {
                    Cnative cnative = new Cnative();
                    this.f24863new = cnative;
                    cnative.put("page", new Cthis(this.f24861for, 1));
                    this.f24863new.put("request", new Cthis(this.f24861for, 2));
                    this.f24863new.put(d.aw, new Cthis(this.f24861for, 3));
                    this.f24863new.put("application", new Cthis(this.f24861for, 4));
                    this.f24863new.put("any", new Cthis(this.f24861for, -1));
                }
                this.f24864try.t1(this.f24863new, this.f24861for.getOut());
            } catch (Exception e) {
                try {
                    try {
                        this.f24861for.handlePageException(e);
                        if (!this.f24858case) {
                        }
                    } catch (ServletException e2) {
                        throw new JspException(e2.getMessage());
                    }
                } catch (IOException e3) {
                    throw new JspException(e3.getMessage());
                }
            }
            if (!this.f24858case) {
                this.f24864try = null;
            }
            return 6;
        } catch (Throwable th) {
            if (!this.f24858case) {
                this.f24864try = null;
            }
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public int m29021new() {
        return 2;
    }

    /* renamed from: this, reason: not valid java name */
    public void m29022this(boolean z) {
        this.f24858case = z;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m29023try() {
        return this.f24858case;
    }
}

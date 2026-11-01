package freemarker.ext.jsp;

import javax.servlet.Servlet;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.jsp.JspEngineInfo;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

/* renamed from: freemarker.ext.jsp.new, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cnew extends JspFactory {

    /* renamed from: freemarker.ext.jsp.new$do, reason: invalid class name */
    public class Cdo extends JspEngineInfo {
        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public String m29041do() {
            return Cnew.this.mo28887for();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public JspEngineInfo m29038do() {
        return new Cdo();
    }

    /* renamed from: for */
    public abstract String mo28887for();

    /* renamed from: if, reason: not valid java name */
    public PageContext m29039if(Servlet servlet, ServletRequest servletRequest, ServletResponse servletResponse, String str, boolean z, int i, boolean z2) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: new, reason: not valid java name */
    public void m29040new(PageContext pageContext) {
        throw new UnsupportedOperationException();
    }
}

package freemarker.ext.servlet;

import android.support.v4.k52;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import java.io.Serializable;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/* renamed from: freemarker.ext.servlet.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew implements TemplateHashModel, Serializable {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient HttpSession f24973do;

    /* renamed from: for, reason: not valid java name */
    private final transient FreemarkerServlet f24974for;

    /* renamed from: if, reason: not valid java name */
    private final transient ObjectWrapper f24975if;

    /* renamed from: new, reason: not valid java name */
    private final transient HttpServletRequest f24976new;

    /* renamed from: try, reason: not valid java name */
    private final transient HttpServletResponse f24977try;

    public Cnew(HttpSession httpSession, ObjectWrapper objectWrapper) {
        this.f24973do = httpSession;
        this.f24975if = objectWrapper;
        this.f24974for = null;
        this.f24976new = null;
        this.f24977try = null;
    }

    /* renamed from: do, reason: not valid java name */
    private void m29122do() throws ServletException, k52 {
        HttpServletRequest httpServletRequest;
        FreemarkerServlet freemarkerServlet;
        if (this.f24973do != null || (httpServletRequest = this.f24976new) == null) {
            return;
        }
        HttpSession session = httpServletRequest.getSession(false);
        this.f24973do = session;
        if (session == null || (freemarkerServlet = this.f24974for) == null) {
            return;
        }
        try {
            freemarkerServlet.m29100throws(this.f24976new, this.f24977try, this, session);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new k52(e2);
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws ServletException, k52 {
        m29122do();
        ObjectWrapper objectWrapper = this.f24975if;
        HttpSession httpSession = this.f24973do;
        return objectWrapper.wrap(httpSession != null ? httpSession.getAttribute(str) : null);
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() throws ServletException, k52 {
        m29122do();
        HttpSession httpSession = this.f24973do;
        return httpSession == null || !httpSession.getAttributeNames().hasMoreElements();
    }

    public boolean isOrphaned(HttpSession httpSession) {
        HttpSession httpSession2 = this.f24973do;
        return !(httpSession2 == null || httpSession2 == httpSession) || (httpSession2 == null && this.f24976new == null);
    }

    public Cnew(FreemarkerServlet freemarkerServlet, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, ObjectWrapper objectWrapper) {
        this.f24975if = objectWrapper;
        this.f24974for = freemarkerServlet;
        this.f24976new = httpServletRequest;
        this.f24977try = httpServletResponse;
    }
}

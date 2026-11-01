package freemarker.ext.jsp;

import android.support.v4.k52;
import android.support.v4.kb2;
import android.support.v4.ul2;
import freemarker.core.d0;
import freemarker.ext.jsp.Cfinal;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.ObjectWrapper;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.ListIterator;
import javax.servlet.GenericServlet;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyContent;

/* renamed from: freemarker.ext.jsp.else, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Celse extends PageContext implements TemplateModel {

    /* renamed from: class, reason: not valid java name */
    private static final Class f24824class = Object.class;

    /* renamed from: break, reason: not valid java name */
    private final ObjectWrapperAndUnwrapper f24825break;

    /* renamed from: case, reason: not valid java name */
    private HttpSession f24826case;

    /* renamed from: catch, reason: not valid java name */
    private JspWriter f24827catch;

    /* renamed from: do, reason: not valid java name */
    private final d0 f24828do;

    /* renamed from: else, reason: not valid java name */
    private final HttpServletRequest f24829else;

    /* renamed from: goto, reason: not valid java name */
    private final HttpServletResponse f24831goto;

    /* renamed from: if, reason: not valid java name */
    private final int f24832if;

    /* renamed from: this, reason: not valid java name */
    private final ObjectWrapper f24834this;

    /* renamed from: try, reason: not valid java name */
    private final GenericServlet f24835try;

    /* renamed from: for, reason: not valid java name */
    private List f24830for = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private List f24833new = new ArrayList();

    /* renamed from: freemarker.ext.jsp.else$do, reason: invalid class name */
    public class Cdo extends HttpServletResponseWrapper {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ PrintWriter f24836do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(HttpServletResponse httpServletResponse, PrintWriter printWriter) {
            super(httpServletResponse);
            this.f24836do = printWriter;
        }

        /* renamed from: do, reason: not valid java name */
        public ServletOutputStream m28958do() {
            throw new UnsupportedOperationException("JSP-included resource must use getWriter()");
        }

        /* renamed from: if, reason: not valid java name */
        public PrintWriter m28959if() {
            return this.f24836do;
        }
    }

    /* renamed from: freemarker.ext.jsp.else$if, reason: invalid class name */
    public static class Cif implements Enumeration {

        /* renamed from: do, reason: not valid java name */
        private final TemplateModelIterator f24838do;

        public /* synthetic */ Cif(TemplateHashModelEx templateHashModelEx, Cdo cdo) throws k52 {
            this(templateHashModelEx);
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            try {
                return this.f24838do.hasNext();
            } catch (k52 e) {
                throw new kb2(e);
            }
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            try {
                return ((TemplateScalarModel) this.f24838do.next()).getAsString();
            } catch (k52 e) {
                throw new kb2(e);
            }
        }

        private Cif(TemplateHashModelEx templateHashModelEx) throws k52 {
            this.f24838do = templateHashModelEx.keys().iterator();
        }
    }

    public Celse() throws k52 {
        d0 d0VarW1 = d0.w1();
        this.f24828do = d0VarW1;
        this.f24832if = d0VarW1.u1().getIncompatibleImprovements().intValue();
        TemplateModel templateModelJ1 = d0VarW1.J1(FreemarkerServlet.y);
        templateModelJ1 = templateModelJ1 instanceof freemarker.ext.servlet.Celse ? templateModelJ1 : d0VarW1.J1(FreemarkerServlet.x);
        if (!(templateModelJ1 instanceof freemarker.ext.servlet.Celse)) {
            throw new k52("Could not find an instance of " + freemarker.ext.servlet.Celse.class.getName() + " in the data model under either the name " + FreemarkerServlet.y + " or " + FreemarkerServlet.x);
        }
        GenericServlet genericServletM29115do = ((freemarker.ext.servlet.Celse) templateModelJ1).m29115do();
        this.f24835try = genericServletM29115do;
        TemplateModel templateModelJ12 = d0VarW1.J1(FreemarkerServlet.u);
        templateModelJ12 = templateModelJ12 instanceof freemarker.ext.servlet.Cif ? templateModelJ12 : d0VarW1.J1(FreemarkerServlet.s);
        if (!(templateModelJ12 instanceof freemarker.ext.servlet.Cif)) {
            throw new k52("Could not find an instance of " + freemarker.ext.servlet.Cif.class.getName() + " in the data model under either the name " + FreemarkerServlet.u + " or " + FreemarkerServlet.s);
        }
        freemarker.ext.servlet.Cif cif = (freemarker.ext.servlet.Cif) templateModelJ12;
        HttpServletRequest httpServletRequestM29121if = cif.m29121if();
        this.f24829else = httpServletRequestM29121if;
        this.f24826case = httpServletRequestM29121if.getSession(false);
        HttpServletResponse httpServletResponseM29120for = cif.m29120for();
        this.f24831goto = httpServletResponseM29120for;
        ObjectWrapper objectWrapperM29119do = cif.m29119do();
        this.f24834this = objectWrapperM29119do;
        this.f24825break = objectWrapperM29119do instanceof ObjectWrapperAndUnwrapper ? (ObjectWrapperAndUnwrapper) objectWrapperM29119do : null;
        mo28956volatile("javax.servlet.jsp.jspRequest", httpServletRequestM29121if);
        mo28956volatile("javax.servlet.jsp.jspResponse", httpServletResponseM29120for);
        Object obj = this.f24826case;
        if (obj != null) {
            mo28956volatile("javax.servlet.jsp.jspSession", obj);
        }
        mo28956volatile("javax.servlet.jsp.jspPage", genericServletM29115do);
        mo28956volatile("javax.servlet.jsp.jspConfig", genericServletM29115do.getServletConfig());
        mo28956volatile("javax.servlet.jsp.jspPageContext", this);
        mo28956volatile("javax.servlet.jsp.jspApplication", genericServletM29115do.getServletContext());
    }

    /* renamed from: throw, reason: not valid java name */
    private HttpSession m28924throw(boolean z) {
        if (this.f24826case == null) {
            HttpSession session = this.f24829else.getSession(z);
            this.f24826case = session;
            if (session != null) {
                mo28956volatile("javax.servlet.jsp.jspSession", session);
            }
        }
        return this.f24826case;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void mo28925abstract() {
    }

    /* renamed from: break, reason: not valid java name */
    public Object mo28926break() {
        return this.f24835try;
    }

    /* renamed from: case, reason: not valid java name */
    public int mo28927case(String str) {
        if (mo28944new(str, 1) != null) {
            return 1;
        }
        if (mo28944new(str, 2) != null) {
            return 2;
        }
        if (mo28944new(str, 3) != null) {
            return 3;
        }
        return mo28944new(str, 4) != null ? 4 : 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public ServletRequest mo28928catch() {
        return this.f24829else;
    }

    /* renamed from: class, reason: not valid java name */
    public ServletResponse mo28929class() {
        return this.f24831goto;
    }

    /* renamed from: const, reason: not valid java name */
    public ServletConfig mo28930const() {
        return this.f24835try.getServletConfig();
    }

    /* renamed from: continue, reason: not valid java name */
    public void mo28931continue(String str) {
        mo28950strictfp(str, 1);
        mo28950strictfp(str, 2);
        mo28950strictfp(str, 3);
        mo28950strictfp(str, 4);
    }

    /* renamed from: default, reason: not valid java name */
    public void m28932default() {
        JspWriter jspWriter = (JspWriter) this.f24833new.remove(r0.size() - 1);
        this.f24827catch = jspWriter;
        mo28956volatile("javax.servlet.jsp.jspOut", jspWriter);
    }

    /* renamed from: do, reason: not valid java name */
    public Object mo28933do(String str) {
        Object objMo28944new = mo28944new(str, 1);
        if (objMo28944new != null) {
            return objMo28944new;
        }
        Object objMo28944new2 = mo28944new(str, 2);
        if (objMo28944new2 != null) {
            return objMo28944new2;
        }
        Object objMo28944new3 = mo28944new(str, 3);
        return objMo28944new3 != null ? objMo28944new3 : mo28944new(str, 4);
    }

    /* renamed from: else, reason: not valid java name */
    public Exception mo28934else() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: extends, reason: not valid java name */
    public JspWriter mo28935extends(Writer writer) {
        return m28946private(new Ccatch(writer));
    }

    /* renamed from: final, reason: not valid java name */
    public ServletContext mo28936final() {
        return this.f24835try.getServletContext();
    }

    /* renamed from: finally, reason: not valid java name */
    public BodyContent mo28937finally() {
        return m28946private(new Cfinal.Cdo(mo28953this(), true));
    }

    /* renamed from: for, reason: not valid java name */
    public Object mo28938for(String str) {
        return mo28944new(str, 1);
    }

    /* renamed from: goto, reason: not valid java name */
    public ObjectWrapper m28939goto() {
        return this.f24834this;
    }

    /* renamed from: if, reason: not valid java name */
    public void mo28940if(String str) throws ServletException, IOException {
        this.f24829else.getRequestDispatcher(str).forward(this.f24829else, this.f24831goto);
    }

    /* renamed from: import, reason: not valid java name */
    public void mo28941import(Throwable th) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: interface, reason: not valid java name */
    public void mo28942interface(String str, Object obj, int i) {
        if (i == 1) {
            try {
                this.f24828do.p3(str, this.f24834this.wrap(obj));
            } catch (k52 e) {
                throw new kb2(e);
            }
        } else {
            if (i == 2) {
                mo28928catch().setAttribute(str, obj);
                return;
            }
            if (i == 3) {
                m28924throw(true).setAttribute(str, obj);
            } else {
                if (i == 4) {
                    mo28936final().setAttribute(str, obj);
                    return;
                }
                throw new IllegalArgumentException("Invalid scope " + i);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void mo28943native(String str) throws ServletException, IOException {
        this.f24827catch.flush();
        this.f24829else.getRequestDispatcher(str).include(this.f24829else, this.f24831goto);
    }

    /* renamed from: new, reason: not valid java name */
    public Object mo28944new(String str, int i) {
        ObjectWrapperAndUnwrapper objectWrapperAndUnwrapper;
        if (i == 1) {
            try {
                TemplateModel templateModel = this.f24828do.I1().get(str);
                int i2 = this.f24832if;
                int i3 = ul2.f6939try;
                return (i2 < i3 || (objectWrapperAndUnwrapper = this.f24825break) == null) ? templateModel instanceof AdapterTemplateModel ? ((AdapterTemplateModel) templateModel).getAdaptedObject(f24824class) : templateModel instanceof WrapperTemplateModel ? ((WrapperTemplateModel) templateModel).getWrappedObject() : templateModel instanceof TemplateScalarModel ? ((TemplateScalarModel) templateModel).getAsString() : templateModel instanceof TemplateNumberModel ? ((TemplateNumberModel) templateModel).getAsNumber() : templateModel instanceof TemplateBooleanModel ? Boolean.valueOf(((TemplateBooleanModel) templateModel).getAsBoolean()) : (i2 < i3 || !(templateModel instanceof TemplateDateModel)) ? templateModel : ((TemplateDateModel) templateModel).getAsDate() : objectWrapperAndUnwrapper.unwrap(templateModel);
            } catch (k52 e) {
                throw new kb2("Failed to unwrapp FTL global variable", e);
            }
        }
        if (i == 2) {
            return mo28928catch().getAttribute(str);
        }
        if (i == 3) {
            HttpSession httpSessionM28924throw = m28924throw(false);
            if (httpSessionM28924throw == null) {
                return null;
            }
            return httpSessionM28924throw.getAttribute(str);
        }
        if (i == 4) {
            return mo28936final().getAttribute(str);
        }
        throw new IllegalArgumentException("Invalid scope " + i);
    }

    /* renamed from: package, reason: not valid java name */
    public void m28945package(Object obj) {
        this.f24830for.add(obj);
    }

    /* renamed from: private, reason: not valid java name */
    public JspWriter m28946private(JspWriter jspWriter) {
        this.f24833new.add(this.f24827catch);
        this.f24827catch = jspWriter;
        mo28956volatile("javax.servlet.jsp.jspOut", jspWriter);
        return jspWriter;
    }

    /* renamed from: public, reason: not valid java name */
    public void mo28947public(String str, boolean z) throws ServletException, IOException {
        if (z) {
            this.f24827catch.flush();
        }
        PrintWriter printWriter = new PrintWriter((Writer) this.f24827catch);
        this.f24829else.getRequestDispatcher(str).include(this.f24829else, new Cdo(this.f24831goto, printWriter));
        printWriter.flush();
    }

    /* renamed from: return, reason: not valid java name */
    public void mo28948return(Servlet servlet, ServletRequest servletRequest, ServletResponse servletResponse, String str, boolean z, int i, boolean z2) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: static, reason: not valid java name */
    public Object m28949static(Class cls) {
        List list = this.f24830for;
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            Object objPrevious = listIterator.previous();
            if (cls.isInstance(objPrevious)) {
                return objPrevious;
            }
        }
        return null;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void mo28950strictfp(String str, int i) {
        if (i == 1) {
            this.f24828do.I1().remove(str);
            return;
        }
        if (i == 2) {
            mo28928catch().removeAttribute(str);
            return;
        }
        if (i == 3) {
            HttpSession httpSessionM28924throw = m28924throw(false);
            if (httpSessionM28924throw != null) {
                httpSessionM28924throw.removeAttribute(str);
                return;
            }
            return;
        }
        if (i == 4) {
            mo28936final().removeAttribute(str);
            return;
        }
        throw new IllegalArgumentException("Invalid scope: " + i);
    }

    /* renamed from: super, reason: not valid java name */
    public HttpSession mo28951super() {
        return m28924throw(false);
    }

    /* renamed from: switch, reason: not valid java name */
    public JspWriter mo28952switch() {
        m28932default();
        return (JspWriter) mo28938for("javax.servlet.jsp.jspOut");
    }

    /* renamed from: this, reason: not valid java name */
    public JspWriter mo28953this() {
        return this.f24827catch;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m28954throws() {
        this.f24830for.remove(r0.size() - 1);
    }

    /* renamed from: try, reason: not valid java name */
    public Enumeration mo28955try(int i) {
        if (i == 1) {
            try {
                return new Cif(this.f24828do.I1(), null);
            } catch (k52 e) {
                throw new kb2(e);
            }
        }
        if (i == 2) {
            return mo28928catch().getAttributeNames();
        }
        if (i == 3) {
            HttpSession httpSessionM28924throw = m28924throw(false);
            return httpSessionM28924throw != null ? httpSessionM28924throw.getAttributeNames() : Collections.enumeration(Collections.EMPTY_SET);
        }
        if (i == 4) {
            return mo28936final().getAttributeNames();
        }
        throw new IllegalArgumentException("Invalid scope " + i);
    }

    /* renamed from: volatile, reason: not valid java name */
    public void mo28956volatile(String str, Object obj) {
        mo28942interface(str, obj, 1);
    }

    /* renamed from: while, reason: not valid java name */
    public void mo28957while(Exception exc) {
        throw new UnsupportedOperationException();
    }
}

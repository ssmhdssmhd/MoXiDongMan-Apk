package freemarker.ext.jsp;

import java.io.IOException;
import java.io.Writer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Enumeration;
import javax.el.ELContext;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspApplicationContext;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.el.ELException;
import javax.servlet.jsp.el.ExpressionEvaluator;
import javax.servlet.jsp.el.VariableResolver;
import javax.servlet.jsp.tagext.BodyContent;

/* renamed from: freemarker.ext.jsp.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Celse {

    /* renamed from: final, reason: not valid java name */
    private static final freemarker.log.Cif f24885final;

    /* renamed from: const, reason: not valid java name */
    private ELContext f24886const;

    /* renamed from: freemarker.ext.jsp.while$do, reason: invalid class name */
    public class Cdo implements PrivilegedAction {
        public Cdo() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return Thread.currentThread().getContextClassLoader();
        }
    }

    /* renamed from: freemarker.ext.jsp.while$if, reason: invalid class name */
    public class Cif implements VariableResolver {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ PageContext f24888do;

        public Cif(PageContext pageContext) {
            this.f24888do = pageContext;
        }

        /* renamed from: do, reason: not valid java name */
        public Object m29050do(String str) throws ELException {
            return this.f24888do.findAttribute(str);
        }
    }

    static {
        freemarker.log.Cif cifM29193break = freemarker.log.Cif.m29193break("freemarker.jsp");
        f24885final = cifM29193break;
        if (JspFactory.getDefaultFactory() == null) {
            JspFactory.setDefaultFactory(new Ctry());
        }
        cifM29193break.mo29183for("Using JspFactory implementation class " + JspFactory.getDefaultFactory().getClass().getName());
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: abstract */
    public /* bridge */ /* synthetic */ void mo28925abstract() {
        super.mo28925abstract();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: break */
    public /* bridge */ /* synthetic */ Object mo28926break() {
        return super.mo28926break();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: case */
    public /* bridge */ /* synthetic */ int mo28927case(String str) {
        return super.mo28927case(str);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ ServletRequest mo28928catch() {
        return super.mo28928catch();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: class */
    public /* bridge */ /* synthetic */ ServletResponse mo28929class() {
        return super.mo28929class();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: const */
    public /* bridge */ /* synthetic */ ServletConfig mo28930const() {
        return super.mo28930const();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: continue */
    public /* bridge */ /* synthetic */ void mo28931continue(String str) {
        super.mo28931continue(str);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: do */
    public /* bridge */ /* synthetic */ Object mo28933do(String str) {
        return super.mo28933do(str);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: else */
    public /* bridge */ /* synthetic */ Exception mo28934else() {
        return super.mo28934else();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: extends */
    public /* bridge */ /* synthetic */ JspWriter mo28935extends(Writer writer) {
        return super.mo28935extends(writer);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: final */
    public /* bridge */ /* synthetic */ ServletContext mo28936final() {
        return super.mo28936final();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: finally */
    public /* bridge */ /* synthetic */ BodyContent mo28937finally() {
        return super.mo28937finally();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: for */
    public /* bridge */ /* synthetic */ Object mo28938for(String str) {
        return super.mo28938for(str);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: if */
    public /* bridge */ /* synthetic */ void mo28940if(String str) throws ServletException, IOException {
        super.mo28940if(str);
    }

    /* renamed from: implements, reason: not valid java name */
    public VariableResolver m29047implements() {
        return new Cif(this);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: import */
    public /* bridge */ /* synthetic */ void mo28941import(Throwable th) {
        super.mo28941import(th);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: interface */
    public /* bridge */ /* synthetic */ void mo28942interface(String str, Object obj, int i) {
        super.mo28942interface(str, obj, i);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: native */
    public /* bridge */ /* synthetic */ void mo28943native(String str) throws ServletException, IOException {
        super.mo28943native(str);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: new */
    public /* bridge */ /* synthetic */ Object mo28944new(String str, int i) {
        return super.mo28944new(str, i);
    }

    /* renamed from: protected, reason: not valid java name */
    public ELContext m29048protected() {
        if (this.f24886const == null) {
            JspApplicationContext jspApplicationContext = JspFactory.getDefaultFactory().getJspApplicationContext(mo28936final());
            if (!(jspApplicationContext instanceof Cfor)) {
                throw new UnsupportedOperationException("Can not create an ELContext using a foreign JspApplicationContext (of class " + freemarker.template.utility.Cif.m29273class(jspApplicationContext) + ").\nHint: The cause of this is often that you are trying to use JSTL tags/functions in FTL. In that case, know that that's not really suppored, and you are supposed to use FTL constrcuts instead, like #list instead of JSTL's forEach, etc.");
            }
            ELContext eLContextM29005try = ((Cfor) jspApplicationContext).m29005try(this);
            this.f24886const = eLContextM29005try;
            eLContextM29005try.putContext(JspContext.class, this);
        }
        return this.f24886const;
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: public */
    public /* bridge */ /* synthetic */ void mo28947public(String str, boolean z) throws ServletException, IOException {
        super.mo28947public(str, z);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: return */
    public /* bridge */ /* synthetic */ void mo28948return(Servlet servlet, ServletRequest servletRequest, ServletResponse servletResponse, String str, boolean z, int i, boolean z2) {
        super.mo28948return(servlet, servletRequest, servletResponse, str, z, i, z2);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: strictfp */
    public /* bridge */ /* synthetic */ void mo28950strictfp(String str, int i) {
        super.mo28950strictfp(str, i);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: super */
    public /* bridge */ /* synthetic */ HttpSession mo28951super() {
        return super.mo28951super();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: switch */
    public /* bridge */ /* synthetic */ JspWriter mo28952switch() {
        return super.mo28952switch();
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: this */
    public /* bridge */ /* synthetic */ JspWriter mo28953this() {
        return super.mo28953this();
    }

    /* renamed from: transient, reason: not valid java name */
    public ExpressionEvaluator m29049transient() {
        try {
            return (ExpressionEvaluator) ((ClassLoader) AccessController.doPrivileged(new Cdo())).loadClass("org.apache.commons.el.ExpressionEvaluatorImpl").newInstance();
        } catch (Exception unused) {
            throw new UnsupportedOperationException("In order for the getExpressionEvaluator() method to work, you must have downloaded the apache commons-el jar and made it available in the classpath.");
        }
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: try */
    public /* bridge */ /* synthetic */ Enumeration mo28955try(int i) {
        return super.mo28955try(i);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: volatile */
    public /* bridge */ /* synthetic */ void mo28956volatile(String str, Object obj) {
        super.mo28956volatile(str, obj);
    }

    @Override // freemarker.ext.jsp.Celse
    /* renamed from: while */
    public /* bridge */ /* synthetic */ void mo28957while(Exception exc) {
        super.mo28957while(exc);
    }
}

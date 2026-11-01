package freemarker.ext.servlet;

import android.support.v4.k52;
import android.support.v4.l80;
import android.support.v4.m52;
import android.support.v4.pk0;
import com.umeng.umcrash.BuildConfig;
import fi.iki.elonen.NanoHTTPD;
import freemarker.cache.TemplateLoader;
import freemarker.core.d0;
import freemarker.core.h3;
import freemarker.ext.jsp.TaglibFactory;
import freemarker.template.Cstatic;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Cconst;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.servlet.GenericServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/* loaded from: classes3.dex */
public class FreemarkerServlet extends HttpServlet {
    private static final String A = ".freemarker.Request";
    private static final String B = ".freemarker.RequestParameters";
    private static final String C = ".freemarker.Session";

    @Deprecated
    private static final String D = ".freemarker.Application";

    @Deprecated
    private static final String E = ".freemarker.JspTaglibs";
    private static final String F = "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern";
    private static final String G;
    private static final String a = "rethrow";

    /* renamed from: abstract, reason: not valid java name */
    public static final String f24914abstract = "ExceptionOnMissingTemplate";
    private static final String b = "debug";
    private static final String c = "htmlDebug";

    /* renamed from: continue, reason: not valid java name */
    public static final String f24915continue = "ClasspathTlds";
    private static final String d = "ignore";

    /* renamed from: default, reason: not valid java name */
    public static final String f24916default = "OverrideResponseContentType";
    private static final String e = "debug";

    /* renamed from: extends, reason: not valid java name */
    public static final String f24917extends = "ResponseCharacterEncoding";

    /* renamed from: finally, reason: not valid java name */
    public static final String f24918finally = "OverrideResponseLocale";
    public static final String g = "never";
    public static final String h = "always";
    public static final String i = "whenTemplateHasMimeType";

    /* renamed from: implements, reason: not valid java name */
    private static final String f24919implements = "beans";

    /* renamed from: instanceof, reason: not valid java name */
    private static final String f24920instanceof = "jython";

    /* renamed from: interface, reason: not valid java name */
    private static final String f24921interface = "DefaultEncoding";
    public static final String j = "fromTemplate";
    public static final String k = "legacy";
    public static final String l = "doNotSet";
    public static final String m = "force ";
    public static final String n = "org.freemarker.jsp.metaInfTldSources";
    public static final String o = "org.freemarker.jsp.classpathTlds";
    public static final String p = "webInfPerLibJars";

    /* renamed from: package, reason: not valid java name */
    public static final String f24923package = "BufferSize";

    /* renamed from: private, reason: not valid java name */
    public static final String f24924private = "MetaInfTldSources";

    /* renamed from: protected, reason: not valid java name */
    private static final String f24925protected = "ObjectWrapper";
    public static final String q = "classpath";
    public static final String r = "clear";

    /* renamed from: return, reason: not valid java name */
    public static final long f24927return = -2440216393145762479L;
    public static final String s = "Request";

    /* renamed from: static, reason: not valid java name */
    public static final String f24928static = "TemplatePath";

    /* renamed from: strictfp, reason: not valid java name */
    private static final String f24929strictfp = "Debug";

    /* renamed from: switch, reason: not valid java name */
    public static final String f24930switch = "NoCache";

    /* renamed from: synchronized, reason: not valid java name */
    private static final String f24931synchronized = "TemplateExceptionHandler";
    public static final String t = "include_page";

    /* renamed from: throws, reason: not valid java name */
    public static final String f24932throws = "ContentType";

    /* renamed from: transient, reason: not valid java name */
    private static final String f24933transient = "simple";
    public static final String u = "__FreeMarkerServlet.Request__";
    public static final String v = "RequestParameters";

    /* renamed from: volatile, reason: not valid java name */
    private static final String f24934volatile = "TemplateDelay";
    public static final String w = "Session";
    public static final String x = "Application";
    public static final String y = "__FreeMarkerServlet.Application__";
    public static final String z = "JspTaglibs";

    /* renamed from: case, reason: not valid java name */
    private freemarker.template.Cdo f24936case;

    /* renamed from: catch, reason: not valid java name */
    private Charset f24937catch;

    /* renamed from: const, reason: not valid java name */
    private List f24939const;

    /* renamed from: do, reason: not valid java name */
    private String f24940do;

    /* renamed from: else, reason: not valid java name */
    private ObjectWrapper f24941else;

    /* renamed from: final, reason: not valid java name */
    private List f24942final;

    /* renamed from: for, reason: not valid java name */
    private Integer f24943for;

    /* renamed from: goto, reason: not valid java name */
    private Cif f24944goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f24945if;

    /* renamed from: import, reason: not valid java name */
    private boolean f24946import;

    /* renamed from: new, reason: not valid java name */
    private boolean f24947new;

    /* renamed from: throw, reason: not valid java name */
    private freemarker.ext.servlet.Celse f24950throw;

    /* renamed from: try, reason: not valid java name */
    @Deprecated
    public boolean f24951try;

    /* renamed from: while, reason: not valid java name */
    private TaglibFactory f24952while;

    /* renamed from: native, reason: not valid java name */
    private static final freemarker.log.Cif f24922native = freemarker.log.Cif.m29193break("freemarker.servlet");

    /* renamed from: public, reason: not valid java name */
    private static final freemarker.log.Cif f24926public = freemarker.log.Cif.m29193break("freemarker.runtime");
    private static final Cif f = new Cif(NanoHTTPD.MIME_HTML);

    /* renamed from: this, reason: not valid java name */
    private Ctry f24949this = (Ctry) m29074public(m29087final(), Ctry.values());

    /* renamed from: break, reason: not valid java name */
    private Celse f24935break = Celse.LEGACY;

    /* renamed from: class, reason: not valid java name */
    private Ccase f24938class = Ccase.ALWAYS;

    /* renamed from: super, reason: not valid java name */
    private Object f24948super = new Object();

    public interface InitParamValueEnum {
        String getInitParamValue();
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$case, reason: invalid class name */
    public enum Ccase implements InitParamValueEnum {
        ALWAYS(FreemarkerServlet.h),
        NEVER(FreemarkerServlet.g);

        private final String initParamValue;

        Ccase(String str) {
            this.initParamValue = str;
        }

        @Override // freemarker.ext.servlet.FreemarkerServlet.InitParamValueEnum
        public String getInitParamValue() {
            return this.initParamValue;
        }
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$do, reason: invalid class name */
    public static class Cdo extends Exception {
        public Cdo(String str, String str2) {
            super("Conflicting servlet init-params: " + Csuper.m29330synchronized(str) + " and " + Csuper.m29330synchronized(str2) + ". Only use " + Csuper.m29330synchronized(str) + ".");
        }
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$else, reason: invalid class name */
    public enum Celse implements InitParamValueEnum {
        LEGACY(FreemarkerServlet.k),
        FROM_TEMPLATE(FreemarkerServlet.j),
        DO_NOT_SET(FreemarkerServlet.l),
        FORCE_CHARSET("force ${charsetName}");

        private final String initParamValue;

        Celse(String str) {
            this.initParamValue = str;
        }

        @Override // freemarker.ext.servlet.FreemarkerServlet.InitParamValueEnum
        public String getInitParamValue() {
            return this.initParamValue;
        }
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final String f24955do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f24956if;

        public Cif(String str) {
            this(str, m29107new(str));
        }

        /* renamed from: new, reason: not valid java name */
        private static boolean m29107new(String str) {
            int iIndexOf = str.toLowerCase().indexOf("charset=");
            if (iIndexOf != -1) {
                int i = iIndexOf - 1;
                char cCharAt = 0;
                while (i >= 0) {
                    cCharAt = str.charAt(i);
                    if (!Character.isWhitespace(cCharAt)) {
                        break;
                    }
                    i--;
                }
                if (i == -1 || cCharAt == ';') {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: try, reason: not valid java name */
        public String m29108try() {
            int iIndexOf = this.f24955do.indexOf(59);
            return (iIndexOf == -1 ? this.f24955do : this.f24955do.substring(0, iIndexOf)).trim();
        }

        public Cif(String str, boolean z) {
            this.f24955do = str;
            this.f24956if = z;
        }
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$new, reason: invalid class name */
    public static class Cnew extends Exception {
        public Cnew(String str) {
            super(str);
        }
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$try, reason: invalid class name */
    public enum Ctry implements InitParamValueEnum {
        ALWAYS(FreemarkerServlet.h),
        NEVER(FreemarkerServlet.g),
        WHEN_TEMPLATE_HAS_MIME_TYPE(FreemarkerServlet.i);

        private final String initParamValue;

        Ctry(String str) {
            this.initParamValue = str;
        }

        @Override // freemarker.ext.servlet.FreemarkerServlet.InitParamValueEnum
        public String getInitParamValue() {
            return this.initParamValue;
        }
    }

    static {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.roll(1, -1);
        G = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US).format(gregorianCalendar.getTime());
    }

    /* renamed from: default, reason: not valid java name */
    private void m29068default() {
        boolean z2;
        if (this.f24941else == this.f24936case.m28258implements() || this.f24946import) {
            return;
        }
        freemarker.log.Cif cif = f24922native;
        if (cif.mo29189public()) {
            synchronized (this) {
                z2 = !this.f24946import;
                if (z2) {
                    this.f24946import = true;
                }
            }
            if (z2) {
                cif.mo29187package(getClass().getName() + ".wrapper != config.getObjectWrapper(); possibly the result of incorrect extension of " + FreemarkerServlet.class.getName() + ".");
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    /* renamed from: extends, reason: not valid java name */
    private ServletException m29069extends(String str, Throwable th) throws ServletException {
        if (th instanceof TemplateException) {
            f24926public.mo29181else(str, th);
        } else {
            f24922native.mo29181else(str, th);
        }
        ServletException servletException = new ServletException(str, th);
        try {
            servletException.initCause(th);
            throw servletException;
        } catch (Exception unused) {
            throw servletException;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private List m29070finally(String str) throws ParseException {
        TaglibFactory.Cbreak cfor;
        ArrayList arrayList = null;
        for (String str2 : freemarker.ext.servlet.Ccase.m29113new(str)) {
            if (str2.equals(p)) {
                cfor = TaglibFactory.Cnative.f24770do;
            } else if (str2.startsWith(q)) {
                String strTrim = str2.substring(9).trim();
                if (strTrim.length() == 0) {
                    cfor = new TaglibFactory.Cfor(Pattern.compile(".*", 32));
                } else {
                    if (!strTrim.startsWith(":")) {
                        throw new ParseException("Invalid \"classpath\" value syntax: " + str, -1);
                    }
                    String strTrim2 = strTrim.substring(1).trim();
                    if (strTrim2.length() == 0) {
                        throw new ParseException("Empty regular expression after \"classpath:\"", -1);
                    }
                    cfor = new TaglibFactory.Cfor(Pattern.compile(strTrim2));
                }
            } else {
                if (!str2.startsWith(r)) {
                    throw new ParseException("Item has no recognized source type prefix: " + str2, -1);
                }
                cfor = TaglibFactory.Ctry.f24805do;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(cfor);
        }
        return arrayList;
    }

    /* renamed from: import, reason: not valid java name */
    private String m29071import(Cstatic cstatic) {
        String strM28260instanceof = this.f24935break == Celse.LEGACY ? null : cstatic.m28260instanceof();
        return strM28260instanceof != null ? strM28260instanceof : cstatic.e1();
    }

    /* renamed from: package, reason: not valid java name */
    private int m29072package(String str) throws NumberFormatException, ParseException {
        int i2 = 1;
        int length = str.length() - 1;
        while (length >= 0) {
            char cCharAt = str.charAt(length);
            if (cCharAt >= '0' && cCharAt <= '9') {
                break;
            }
            length--;
        }
        int i3 = length + 1;
        int i4 = Integer.parseInt(str.substring(0, i3).trim());
        String upperCase = str.substring(i3).trim().toUpperCase();
        if (upperCase.length() != 0 && !upperCase.equals("B")) {
            if (upperCase.equals("K") || upperCase.equals("KB") || upperCase.equals("KIB")) {
                i2 = 1024;
            } else {
                if (!upperCase.equals("M") && !upperCase.equals("MB") && !upperCase.equals("MIB")) {
                    throw new ParseException("Unknown unit: " + upperCase, i3);
                }
                i2 = 1048576;
            }
        }
        long j2 = i4 * i2;
        if (j2 < 0) {
            throw new IllegalArgumentException("Buffer size can't be negative");
        }
        if (j2 <= 2147483647L) {
            return (int) j2;
        }
        throw new IllegalArgumentException("Buffer size can't bigger than 2147483647");
    }

    /* renamed from: protected, reason: not valid java name */
    private void m29073protected(HttpServletResponse httpServletResponse) {
        if (this.f24945if) {
            httpServletResponse.setHeader(pk0.f5048do, "no-store, no-cache, must-revalidate, post-check=0, pre-check=0");
            httpServletResponse.setHeader(pk0.f5076try, "no-cache");
            httpServletResponse.setHeader(pk0.z, G);
        }
    }

    /* renamed from: public, reason: not valid java name */
    private <T extends InitParamValueEnum> T m29074public(String str, T[] tArr) {
        for (T t2 : tArr) {
            String initParamValue = t2.getInitParamValue();
            if (str.equals(initParamValue) || (initParamValue.endsWith("}") && str.startsWith(initParamValue.substring(0, initParamValue.indexOf("${"))))) {
                return t2;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Csuper.m29330synchronized(str));
        sb.append(" is not a one of the enumeration values: ");
        boolean z2 = true;
        for (T t3 : tArr) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(", ");
            }
            sb.append(Csuper.m29330synchronized(t3.getInitParamValue()));
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: return, reason: not valid java name */
    private void m29075return() throws Cfor, Cnew, Cdo {
        this.f24936case = m29085do();
        String initParameter = getInitParameter("incompatible_improvements");
        if (initParameter != null) {
            try {
                this.f24936case.B0("incompatible_improvements", initParameter);
            } catch (Exception e2) {
                throw new Cfor("incompatible_improvements", initParameter, e2);
            }
        }
        if (!this.f24936case.l2()) {
            this.f24936case.G0(TemplateExceptionHandler.HTML_DEBUG_HANDLER);
        }
        if (!this.f24936case.h2()) {
            this.f24936case.u0(false);
        }
        this.f24944goto = f;
        this.f24941else = m29080case();
        freemarker.log.Cif cif = f24922native;
        if (cif.mo29190throw()) {
            cif.mo29183for("Using object wrapper: " + this.f24941else);
        }
        this.f24936case.x0(this.f24941else);
        String initParameter2 = getInitParameter(f24928static);
        this.f24940do = initParameter2;
        if (initParameter2 == null && !this.f24936case.m2()) {
            this.f24940do = freemarker.ext.servlet.Ccase.f24958do;
        }
        String str = this.f24940do;
        if (str != null) {
            try {
                this.f24936case.g3(m29098this(str));
            } catch (Exception e3) {
                throw new Cfor(f24928static, this.f24940do, e3);
            }
        }
        this.f24939const = m29088for();
        this.f24942final = m29090if();
        Enumeration initParameterNames = getServletConfig().getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str2 = (String) initParameterNames.nextElement();
            String initParameter3 = getInitParameter(str2);
            if (str2 == null) {
                throw new Cnew("init-param without param-name. Maybe the web.xml is not well-formed?");
            }
            if (initParameter3 == null) {
                throw new Cnew("init-param " + Csuper.m29330synchronized(str2) + " without param-value. Maybe the web.xml is not well-formed?");
            }
            try {
                if (!str2.equals(f24925protected) && !str2.equals("object_wrapper") && !str2.equals(f24928static) && !str2.equals("incompatible_improvements")) {
                    if (str2.equals(f24921interface)) {
                        if (getInitParameter("default_encoding") != null) {
                            throw new Cdo("default_encoding", f24921interface);
                        }
                        this.f24936case.J2(initParameter3);
                    } else if (str2.equals(f24934volatile)) {
                        if (getInitParameter("template_update_delay") != null) {
                            throw new Cdo("template_update_delay", f24934volatile);
                        }
                        try {
                            this.f24936case.j3(Integer.parseInt(initParameter3));
                        } catch (NumberFormatException unused) {
                        }
                    } else if (str2.equals(f24931synchronized)) {
                        if (getInitParameter("template_exception_handler") != null) {
                            throw new Cdo("template_exception_handler", f24931synchronized);
                        }
                        if (a.equals(initParameter3)) {
                            this.f24936case.G0(TemplateExceptionHandler.RETHROW_HANDLER);
                        } else if (BuildConfig.BUILD_TYPE.equals(initParameter3)) {
                            this.f24936case.G0(TemplateExceptionHandler.DEBUG_HANDLER);
                        } else if (c.equals(initParameter3)) {
                            this.f24936case.G0(TemplateExceptionHandler.HTML_DEBUG_HANDLER);
                        } else {
                            if (!d.equals(initParameter3)) {
                                throw new Cfor(f24931synchronized, initParameter3, "Not one of the supported values.");
                            }
                            this.f24936case.G0(TemplateExceptionHandler.IGNORE_HANDLER);
                        }
                    } else if (str2.equals(f24930switch)) {
                        this.f24945if = Csuper.m29321package(initParameter3);
                    } else if (str2.equals(f24923package)) {
                        this.f24943for = Integer.valueOf(m29072package(initParameter3));
                    } else if (str2.equals(BuildConfig.BUILD_TYPE)) {
                        if (getInitParameter(f24929strictfp) != null) {
                            throw new Cdo(f24929strictfp, BuildConfig.BUILD_TYPE);
                        }
                        this.f24951try = Csuper.m29321package(initParameter3);
                    } else if (str2.equals(f24929strictfp)) {
                        this.f24951try = Csuper.m29321package(initParameter3);
                    } else if (str2.equals(f24932throws)) {
                        this.f24944goto = new Cif(initParameter3);
                    } else if (str2.equals(f24916default)) {
                        this.f24949this = (Ctry) m29074public(initParameter3, Ctry.values());
                    } else if (str2.equals(f24917extends)) {
                        Celse celse = (Celse) m29074public(initParameter3, Celse.values());
                        this.f24935break = celse;
                        if (celse == Celse.FORCE_CHARSET) {
                            this.f24937catch = Charset.forName(initParameter3.substring(6).trim());
                        }
                    } else if (str2.equals(f24918finally)) {
                        this.f24938class = (Ccase) m29074public(initParameter3, Ccase.values());
                    } else if (str2.equals(f24914abstract)) {
                        this.f24947new = Csuper.m29321package(initParameter3);
                    } else if (str2.equals(f24924private)) {
                        this.f24939const = m29070finally(initParameter3);
                    } else if (str2.equals(f24915continue)) {
                        ArrayList arrayList = new ArrayList();
                        List list = this.f24942final;
                        if (list != null) {
                            arrayList.addAll(list);
                        }
                        arrayList.addAll(freemarker.ext.servlet.Ccase.m29113new(initParameter3));
                        this.f24942final = arrayList;
                    } else {
                        this.f24936case.B0(str2, initParameter3);
                    }
                }
            } catch (Cdo e4) {
                throw e4;
            } catch (Exception e5) {
                throw new Cfor(str2, initParameter3, e5);
            }
        }
        if (this.f24944goto.f24956if && this.f24935break != Celse.LEGACY) {
            throw new Cfor(f24932throws, this.f24944goto.f24955do, new IllegalStateException("You can't specify the charset in the content type, because the \"ResponseCharacterEncoding\" init-param isn't set to \"legacy\"."));
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    /* renamed from: strictfp, reason: not valid java name */
    private void m29076strictfp(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String characterEncoding;
        if (m29084continue(httpServletRequest, httpServletResponse)) {
            return;
        }
        if (this.f24943for != null && !httpServletResponse.isCommitted()) {
            try {
                httpServletResponse.setBufferSize(this.f24943for.intValue());
            } catch (IllegalStateException e2) {
                f24922native.mo29186new("Can't set buffer size any more,", e2);
            }
        }
        String strM29091interface = m29091interface(httpServletRequest);
        freemarker.log.Cif cif = f24922native;
        if (cif.mo29190throw()) {
            cif.mo29183for("Requested template " + Csuper.b(strM29091interface) + ".");
        }
        Locale locale = httpServletRequest.getLocale();
        if (locale == null || this.f24938class != Ccase.NEVER) {
            locale = m29079break(strM29091interface, httpServletRequest, httpServletResponse);
        }
        try {
            Cstatic cstaticQ1 = this.f24936case.Q1(strM29091interface, locale);
            boolean z2 = false;
            if (httpServletResponse.getContentType() == null || this.f24949this != Ctry.NEVER) {
                Cif cifM29077while = m29077while(cstaticQ1);
                if (cifM29077while != null) {
                    httpServletResponse.setContentType(this.f24935break != Celse.DO_NOT_SET ? cifM29077while.f24955do : cifM29077while.m29108try());
                    z2 = cifM29077while.f24956if;
                } else if (httpServletResponse.getContentType() == null || this.f24949this == Ctry.ALWAYS) {
                    if (this.f24935break != Celse.LEGACY || this.f24944goto.f24956if) {
                        httpServletResponse.setContentType(this.f24944goto.f24955do);
                    } else {
                        httpServletResponse.setContentType(this.f24944goto.f24955do + "; charset=" + m29071import(cstaticQ1));
                    }
                }
            }
            Celse celse = this.f24935break;
            Celse celse2 = Celse.LEGACY;
            if (celse != celse2 && celse != Celse.DO_NOT_SET) {
                if (celse == Celse.FORCE_CHARSET) {
                    httpServletResponse.setCharacterEncoding(this.f24937catch.name());
                } else if (!z2) {
                    httpServletResponse.setCharacterEncoding(m29071import(cstaticQ1));
                }
            }
            m29073protected(httpServletResponse);
            ServletContext servletContext = getServletContext();
            try {
                m29068default();
                TemplateModel templateModelM29102try = m29102try(this.f24941else, servletContext, httpServletRequest, httpServletResponse);
                if (m29078abstract(httpServletRequest, httpServletResponse, cstaticQ1, templateModelM29102try)) {
                    try {
                        d0 d0VarU0 = cstaticQ1.U0(templateModelM29102try, httpServletResponse.getWriter());
                        if (this.f24935break != celse2 && (characterEncoding = httpServletResponse.getCharacterEncoding()) != null) {
                            d0VarU0.y0(characterEncoding);
                        }
                        m29103volatile(d0VarU0, httpServletRequest, httpServletResponse);
                        m29094private(httpServletRequest, httpServletResponse, cstaticQ1, templateModelM29102try);
                    } catch (Throwable th) {
                        m29094private(httpServletRequest, httpServletResponse, cstaticQ1, templateModelM29102try);
                        throw th;
                    }
                }
            } catch (TemplateException e3) {
                TemplateExceptionHandler templateExceptionHandlerF = this.f24936case.f();
                if (templateExceptionHandlerF == TemplateExceptionHandler.HTML_DEBUG_HANDLER || templateExceptionHandlerF == TemplateExceptionHandler.DEBUG_HANDLER || templateExceptionHandlerF.getClass().getName().indexOf(f24929strictfp) != -1) {
                    httpServletResponse.flushBuffer();
                }
                throw m29069extends("Error executing FreeMarker template", e3);
            }
        } catch (m52 e4) {
            if (this.f24947new) {
                throw m29069extends("Template not found for name " + Csuper.b(strM29091interface) + ".", e4);
            }
            freemarker.log.Cif cif2 = f24922native;
            if (cif2.mo29190throw()) {
                cif2.mo29186new("Responding HTTP 404 \"Not found\" for missing template " + Csuper.b(strM29091interface) + ".", e4);
            }
            httpServletResponse.sendError(l80.f3570goto, "Page template not found");
        } catch (h3 e5) {
            throw m29069extends("Parsing error with template " + Csuper.b(strM29091interface) + ".", e5);
        } catch (Exception e6) {
            throw m29069extends("Unexpected error when loading template " + Csuper.b(strM29091interface) + ".", e6);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private Cif m29077while(Cstatic cstatic) {
        Object objM28259import = cstatic.m28259import("content_type");
        if (objM28259import != null) {
            return new Cif(objM28259import.toString());
        }
        String strMo887do = cstatic.getOutputFormat().mo887do();
        if (strMo887do == null) {
            return null;
        }
        if (this.f24935break != Celse.LEGACY) {
            return new Cif(strMo887do, false);
        }
        return new Cif(strMo887do + "; charset=" + m29071import(cstatic), true);
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m29078abstract(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Cstatic cstatic, TemplateModel templateModel) throws ServletException, IOException {
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public Locale m29079break(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException {
        return this.f24936case.m28268strictfp();
    }

    /* renamed from: case, reason: not valid java name */
    public ObjectWrapper m29080case() throws h3, NumberFormatException {
        String initParameter = getServletConfig().getInitParameter(f24925protected);
        if (initParameter == null) {
            String initParameter2 = getInitParameter("object_wrapper");
            if (initParameter2 == null) {
                return !this.f24936case.i2() ? m29093new() : this.f24936case.m28258implements();
            }
            try {
                this.f24936case.B0("object_wrapper", initParameter2);
                return this.f24936case.m28258implements();
            } catch (TemplateException e2) {
                throw new RuntimeException("Failed to set object_wrapper", e2);
            }
        }
        if (getInitParameter("object_wrapper") != null) {
            throw new RuntimeException("Conflicting init-params: object_wrapper and ObjectWrapper");
        }
        if (f24919implements.equals(initParameter)) {
            return ObjectWrapper.BEANS_WRAPPER;
        }
        if (f24933transient.equals(initParameter)) {
            return ObjectWrapper.SIMPLE_WRAPPER;
        }
        if (!f24920instanceof.equals(initParameter)) {
            return m29093new();
        }
        try {
            return (ObjectWrapper) Class.forName("freemarker.ext.jython.goto").newInstance();
        } catch (ClassNotFoundException e3) {
            throw new NoClassDefFoundError(e3.getMessage());
        } catch (IllegalAccessException e4) {
            throw new IllegalAccessError(e4.getMessage());
        } catch (InstantiationException e5) {
            throw new InstantiationError(e5.getMessage());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m29081catch(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        m29076strictfp(httpServletRequest, httpServletResponse);
    }

    /* renamed from: class, reason: not valid java name */
    public void m29082class(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        m29076strictfp(httpServletRequest, httpServletResponse);
    }

    /* renamed from: const, reason: not valid java name */
    public freemarker.template.Cdo m29083const() {
        return this.f24936case;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m29084continue(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public freemarker.template.Cdo m29085do() {
        return new freemarker.template.Cdo();
    }

    /* renamed from: else, reason: not valid java name */
    public freemarker.ext.servlet.Cfor m29086else(HttpServletRequest httpServletRequest) {
        return new freemarker.ext.servlet.Cfor(httpServletRequest);
    }

    /* renamed from: final, reason: not valid java name */
    public String m29087final() {
        return h;
    }

    /* renamed from: for, reason: not valid java name */
    public List m29088for() {
        return TaglibFactory.f24733final;
    }

    /* renamed from: goto, reason: not valid java name */
    public TaglibFactory m29089goto(ObjectWrapper objectWrapper, ServletContext servletContext) throws k52 {
        String str;
        TaglibFactory taglibFactory = new TaglibFactory(servletContext);
        taglibFactory.h(objectWrapper);
        ArrayList arrayList = new ArrayList();
        List list = this.f24939const;
        if (list != null) {
            arrayList.addAll(list);
        }
        String strM29258for = Cconst.m29258for(n, null);
        if (strM29258for != null) {
            try {
                List listM29070finally = m29070finally(strM29258for);
                if (listM29070finally != null) {
                    arrayList.addAll(listM29070finally);
                }
            } catch (ParseException e2) {
                throw new k52("Failed to parse system property \"org.freemarker.jsp.metaInfTldSources\"", (Exception) e2);
            }
        }
        try {
            str = (String) servletContext.getAttribute(F);
        } catch (Exception e3) {
            f24922native.mo29181else("Failed to parse application context attribute \"org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern\" - it will be ignored", e3);
        }
        List listM29114try = str != null ? freemarker.ext.servlet.Ccase.m29114try(str) : null;
        if (listM29114try != null) {
            Iterator it = listM29114try.iterator();
            while (it.hasNext()) {
                arrayList.add(new TaglibFactory.Cfor((Pattern) it.next()));
            }
        }
        taglibFactory.g(arrayList);
        ArrayList arrayList2 = new ArrayList();
        List list2 = this.f24942final;
        if (list2 != null) {
            arrayList2.addAll(list2);
        }
        String strM29258for2 = Cconst.m29258for(o, null);
        if (strM29258for2 != null) {
            try {
                List listM29113new = freemarker.ext.servlet.Ccase.m29113new(strM29258for2);
                if (listM29113new != null) {
                    arrayList2.addAll(listM29113new);
                }
            } catch (ParseException e4) {
                throw new k52("Failed to parse system property \"org.freemarker.jsp.classpathTlds\"", (Exception) e4);
            }
        }
        taglibFactory.f(arrayList2);
        return taglibFactory;
    }

    /* renamed from: if, reason: not valid java name */
    public List m29090if() {
        return TaglibFactory.f24732const;
    }

    /* renamed from: interface, reason: not valid java name */
    public String m29091interface(HttpServletRequest httpServletRequest) throws ServletException {
        String str = (String) httpServletRequest.getAttribute("javax.servlet.include.servlet_path");
        if (str != null) {
            String str2 = (String) httpServletRequest.getAttribute("javax.servlet.include.path_info");
            return str2 == null ? str : str2;
        }
        String pathInfo = httpServletRequest.getPathInfo();
        if (pathInfo != null) {
            return pathInfo;
        }
        String servletPath = httpServletRequest.getServletPath();
        return servletPath != null ? servletPath : "";
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    /* renamed from: native, reason: not valid java name */
    public void m29092native() throws ServletException {
        try {
            m29075return();
        } catch (Exception e2) {
            throw new ServletException("Error while initializing " + getClass().getName() + " servlet; see cause exception.", e2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public ObjectWrapper m29093new() {
        return freemarker.template.Cdo.m1(this.f24936case.getIncompatibleImprovements());
    }

    /* renamed from: private, reason: not valid java name */
    public void m29094private(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Cstatic cstatic, TemplateModel templateModel) throws ServletException, IOException {
    }

    /* renamed from: static, reason: not valid java name */
    public void m29095static(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
    }

    /* renamed from: super, reason: not valid java name */
    public ObjectWrapper m29096super() {
        return this.f24941else;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m29097switch(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
    }

    /* renamed from: this, reason: not valid java name */
    public TemplateLoader m29098this(String str) throws IOException {
        return freemarker.ext.servlet.Ccase.m29110do(str, m29083const(), getClass(), getServletContext());
    }

    @Deprecated
    /* renamed from: throw, reason: not valid java name */
    public final String m29099throw() {
        return this.f24940do;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m29100throws(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, freemarker.ext.servlet.Cnew cnew, HttpSession httpSession) throws ServletException, IOException {
        httpSession.setAttribute(C, cnew);
        m29097switch(httpServletRequest, httpServletResponse);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m29101transient() {
    }

    /* renamed from: try, reason: not valid java name */
    public TemplateModel m29102try(ObjectWrapper objectWrapper, ServletContext servletContext, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws k52 {
        freemarker.ext.servlet.Celse celse;
        TaglibFactory taglibFactoryM29089goto;
        freemarker.ext.servlet.Cnew cnew;
        try {
            freemarker.ext.servlet.Cdo cdo = new freemarker.ext.servlet.Cdo(objectWrapper, servletContext, httpServletRequest);
            synchronized (this.f24948super) {
                celse = this.f24950throw;
                if (celse == null) {
                    celse = new freemarker.ext.servlet.Celse((GenericServlet) this, objectWrapper);
                    taglibFactoryM29089goto = m29089goto(objectWrapper, servletContext);
                    servletContext.setAttribute(D, celse);
                    servletContext.setAttribute(E, taglibFactoryM29089goto);
                    m29095static(httpServletRequest, httpServletResponse);
                    this.f24952while = taglibFactoryM29089goto;
                    this.f24950throw = celse;
                } else {
                    taglibFactoryM29089goto = this.f24952while;
                }
            }
            cdo.putUnlistedModel(x, celse);
            cdo.putUnlistedModel(y, celse);
            cdo.putUnlistedModel(z, taglibFactoryM29089goto);
            HttpSession session = httpServletRequest.getSession(false);
            if (session != null) {
                cnew = (freemarker.ext.servlet.Cnew) session.getAttribute(C);
                if (cnew == null || cnew.isOrphaned(session)) {
                    cnew = new freemarker.ext.servlet.Cnew(session, objectWrapper);
                    m29100throws(httpServletRequest, httpServletResponse, cnew, session);
                }
            } else {
                cnew = new freemarker.ext.servlet.Cnew(this, httpServletRequest, httpServletResponse, objectWrapper);
            }
            cdo.putUnlistedModel(w, cnew);
            freemarker.ext.servlet.Cif cif = (freemarker.ext.servlet.Cif) httpServletRequest.getAttribute(A);
            if (cif == null || cif.m29121if() != httpServletRequest) {
                cif = new freemarker.ext.servlet.Cif(httpServletRequest, httpServletResponse, objectWrapper);
                httpServletRequest.setAttribute(A, cif);
                httpServletRequest.setAttribute(B, m29086else(httpServletRequest));
            }
            cdo.putUnlistedModel(s, cif);
            cdo.putUnlistedModel(t, new freemarker.ext.servlet.Ctry(httpServletRequest, httpServletResponse));
            cdo.putUnlistedModel(u, cif);
            cdo.putUnlistedModel(v, (freemarker.ext.servlet.Cfor) httpServletRequest.getAttribute(B));
            return cdo;
        } catch (ServletException e2) {
            throw new k52((Exception) e2);
        } catch (IOException e3) {
            throw new k52((Exception) e3);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m29103volatile(d0 d0Var, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws TemplateException, IOException {
        d0Var.d3();
    }

    /* renamed from: freemarker.ext.servlet.FreemarkerServlet$for, reason: invalid class name */
    public static class Cfor extends Exception {
        public Cfor(String str, String str2, Throwable th) {
            super("Failed to set the " + Csuper.m29330synchronized(str) + " servlet init-param to " + Csuper.m29330synchronized(str2) + "; see cause exception.", th);
        }

        public Cfor(String str, String str2, String str3) {
            super("Failed to set the " + Csuper.m29330synchronized(str) + " servlet init-param to " + Csuper.m29330synchronized(str2) + ": " + str3);
        }
    }
}

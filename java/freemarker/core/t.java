package freemarker.core;

import android.support.v4.fl2;
import android.support.v4.nl2;
import android.support.v4.sl2;
import android.support.v4.tl2;
import android.support.v4.ul2;
import android.support.v4.w41;
import android.support.v4.we2;
import com.umeng.umcrash.BuildConfig;
import freemarker.core.Celse;
import freemarker.template.AttemptExceptionReporter;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class t {
    public static final String A0 = "wrap_unchecked_exceptions";
    public static final String B = "time_zone";
    public static final String B0 = "lazy_imports";
    public static final String C = "sql_date_and_time_time_zone";
    public static final String D0 = "lazy_imports";
    public static final String E = "sql_date_and_time_time_zone";
    public static final String E0 = "lazy_auto_imports";
    public static final String F = "classic_compatible";
    public static final String G0 = "lazy_auto_imports";
    public static final String H = "classic_compatible";
    public static final String H0 = "auto_import";
    public static final String I = "template_exception_handler";
    public static final String I0 = "autoImport";
    public static final String J0 = "auto_import";
    public static final String K = "template_exception_handler";
    public static final String K0 = "auto_include";
    public static final String L = "attempt_exception_reporter";
    public static final String L0 = "autoInclude";
    public static final String M0 = "auto_include";
    public static final String N = "attempt_exception_reporter";

    @Deprecated
    public static final String N0 = "strict_bean_models";
    public static final String O = "arithmetic_engine";
    public static final String Q = "arithmetic_engine";
    private static final String Q0 = "allowed_classes";
    public static final String R = "object_wrapper";
    private static final String R0 = "trusted_templates";
    private static final String S0 = "allowedClasses";
    public static final String T = "object_wrapper";
    private static final String T0 = "trustedTemplates";
    public static final String U = "boolean_format";
    public static final String W = "boolean_format";
    public static final String X = "output_encoding";
    public static final String Y = "outputEncoding";
    public static final String Z = "output_encoding";
    private static final String a = "null";
    public static final String a0 = "url_escaping_charset";
    private static final String b = "default";
    public static final String b0 = "urlEscapingCharset";
    private static final String c = "default_2_3_0";
    public static final String c0 = "url_escaping_charset";
    private static final String d = "JVM default";
    public static final String d0 = "strict_bean_models";
    public static final String e = "locale";
    public static final String f = "locale";
    public static final String f0 = "strict_bean_models";
    public static final String g = "locale";
    public static final String g0 = "auto_flush";
    public static final String h = "number_format";
    public static final String i0 = "auto_flush";

    /* renamed from: instanceof, reason: not valid java name */
    public static final String f24149instanceof = "true,false";
    public static final String j = "number_format";
    public static final String j0 = "new_builtin_class_resolver";
    public static final String k = "custom_number_formats";
    public static final String l0 = "new_builtin_class_resolver";
    public static final String m = "custom_number_formats";
    public static final String m0 = "show_error_tips";
    public static final String n = "time_format";
    public static final String o0 = "show_error_tips";
    public static final String p = "time_format";
    public static final String p0 = "api_builtin_enabled";
    public static final String q = "date_format";
    public static final String r0 = "api_builtin_enabled";
    public static final String s = "date_format";
    public static final String s0 = "truncate_builtin_algorithm";

    /* renamed from: synchronized, reason: not valid java name */
    public static final String f24150synchronized = "c";
    public static final String t = "custom_date_formats";
    public static final String u0 = "truncate_builtin_algorithm";
    public static final String v = "custom_date_formats";
    public static final String v0 = "log_template_exceptions";
    public static final String w = "datetime_format";
    public static final String x0 = "log_template_exceptions";
    public static final String y = "datetime_format";
    public static final String y0 = "wrap_unchecked_exceptions";
    public static final String z = "time_zone";

    /* renamed from: abstract, reason: not valid java name */
    private Boolean f24151abstract;

    /* renamed from: break, reason: not valid java name */
    private TimeZone f24152break;

    /* renamed from: case, reason: not valid java name */
    private String f24153case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f24154catch;

    /* renamed from: class, reason: not valid java name */
    private String f24155class;

    /* renamed from: const, reason: not valid java name */
    private String f24156const;

    /* renamed from: continue, reason: not valid java name */
    private Map<String, ? extends a4> f24157continue;

    /* renamed from: default, reason: not valid java name */
    private Boolean f24158default;

    /* renamed from: do, reason: not valid java name */
    private t f24159do;

    /* renamed from: else, reason: not valid java name */
    private String f24160else;

    /* renamed from: extends, reason: not valid java name */
    private TemplateClassResolver f24161extends;

    /* renamed from: final, reason: not valid java name */
    private String f24162final;

    /* renamed from: finally, reason: not valid java name */
    private Boolean f24163finally;

    /* renamed from: for, reason: not valid java name */
    private HashMap<Object, Object> f24164for;

    /* renamed from: goto, reason: not valid java name */
    private String f24165goto;

    /* renamed from: if, reason: not valid java name */
    private Properties f24166if;

    /* renamed from: implements, reason: not valid java name */
    private boolean f24167implements;

    /* renamed from: import, reason: not valid java name */
    private Celse f24168import;

    /* renamed from: interface, reason: not valid java name */
    private ArrayList<String> f24169interface;

    /* renamed from: native, reason: not valid java name */
    private ObjectWrapper f24170native;

    /* renamed from: new, reason: not valid java name */
    private Locale f24171new;

    /* renamed from: package, reason: not valid java name */
    private p4 f24172package;

    /* renamed from: private, reason: not valid java name */
    private Boolean f24173private;

    /* renamed from: protected, reason: not valid java name */
    private Boolean f24174protected;

    /* renamed from: public, reason: not valid java name */
    private String f24175public;

    /* renamed from: return, reason: not valid java name */
    private boolean f24176return;

    /* renamed from: static, reason: not valid java name */
    private String f24177static;

    /* renamed from: strictfp, reason: not valid java name */
    private Map<String, ? extends g4> f24178strictfp;

    /* renamed from: super, reason: not valid java name */
    private Integer f24179super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f24180switch;

    /* renamed from: this, reason: not valid java name */
    private TimeZone f24181this;

    /* renamed from: throw, reason: not valid java name */
    private TemplateExceptionHandler f24182throw;

    /* renamed from: throws, reason: not valid java name */
    private Boolean f24183throws;

    /* renamed from: transient, reason: not valid java name */
    private Boolean f24184transient;

    /* renamed from: try, reason: not valid java name */
    private String f24185try;

    /* renamed from: volatile, reason: not valid java name */
    private LinkedHashMap<String, String> f24186volatile;

    /* renamed from: while, reason: not valid java name */
    private AttemptExceptionReporter f24187while;
    private static final String[] O0 = {"api_builtin_enabled", "arithmetic_engine", "attempt_exception_reporter", "auto_flush", "auto_import", "auto_include", "boolean_format", "classic_compatible", "custom_date_formats", "custom_number_formats", "date_format", "datetime_format", "lazy_auto_imports", "lazy_imports", "locale", "log_template_exceptions", "new_builtin_class_resolver", "number_format", "object_wrapper", "output_encoding", "show_error_tips", "sql_date_and_time_time_zone", "strict_bean_models", "template_exception_handler", "time_format", "time_zone", "truncate_builtin_algorithm", "url_escaping_charset", "wrap_unchecked_exceptions"};
    public static final String q0 = "apiBuiltinEnabled";
    public static final String P = "arithmeticEngine";
    public static final String M = "attemptExceptionReporter";
    public static final String h0 = "autoFlush";
    public static final String V = "booleanFormat";
    public static final String G = "classicCompatible";
    public static final String u = "customDateFormats";
    public static final String l = "customNumberFormats";
    public static final String r = "dateFormat";
    public static final String x = "datetimeFormat";
    public static final String F0 = "lazyAutoImports";
    public static final String C0 = "lazyImports";
    public static final String w0 = "logTemplateExceptions";
    public static final String k0 = "newBuiltinClassResolver";
    public static final String i = "numberFormat";
    public static final String S = "objectWrapper";
    public static final String n0 = "showErrorTips";
    public static final String D = "sqlDateAndTimeTimeZone";
    public static final String e0 = "strictBeanModels";

    /* renamed from: J, reason: collision with root package name */
    public static final String f36267J = "templateExceptionHandler";
    public static final String o = "timeFormat";
    public static final String A = "timeZone";
    public static final String t0 = "truncateBuiltinAlgorithm";
    public static final String z0 = "wrapUncheckedExceptions";
    private static final String[] P0 = {q0, P, M, h0, "autoImport", "autoInclude", V, G, u, l, r, x, F0, C0, "locale", w0, k0, i, S, "outputEncoding", n0, D, e0, f36267J, o, A, t0, "urlEscapingCharset", z0};

    /* renamed from: freemarker.core.t$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private String f24188do;

        /* renamed from: for, reason: not valid java name */
        private int f24189for;

        /* renamed from: if, reason: not valid java name */
        private int f24190if;

        /* renamed from: for, reason: not valid java name */
        private String m28279for() throws h3 {
            char cCharAt;
            int i;
            int i2 = this.f24190if;
            if (i2 == this.f24189for) {
                throw new h3("Unexpeced end of text", 0, 0);
            }
            char cCharAt2 = this.f24188do.charAt(i2);
            int i3 = this.f24190if;
            if (cCharAt2 != '\'' && cCharAt2 != '\"') {
                do {
                    cCharAt = this.f24188do.charAt(this.f24190if);
                    if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '/' && cCharAt != '\\' && cCharAt != '_' && cCharAt != '.' && cCharAt != '-' && cCharAt != '!' && cCharAt != '*' && cCharAt != '?') {
                        break;
                    }
                    i = this.f24190if + 1;
                    this.f24190if = i;
                } while (i < this.f24189for);
                int i4 = this.f24190if;
                if (i3 != i4) {
                    return this.f24188do.substring(i3, i4);
                }
                throw new h3("Unexpected character: " + cCharAt, 0, 0);
            }
            this.f24190if = i3 + 1;
            boolean z = false;
            while (true) {
                int i5 = this.f24190if;
                if (i5 >= this.f24189for) {
                    break;
                }
                char cCharAt3 = this.f24188do.charAt(i5);
                if (z) {
                    z = false;
                } else if (cCharAt3 == '\\') {
                    z = true;
                } else if (cCharAt3 == cCharAt2) {
                    break;
                }
                this.f24190if++;
            }
            int i6 = this.f24190if;
            if (i6 != this.f24189for) {
                int i7 = i6 + 1;
                this.f24190if = i7;
                return this.f24188do.substring(i3, i7);
            }
            throw new h3("Missing " + cCharAt2, 0, 0);
        }

        /* renamed from: case, reason: not valid java name */
        public ArrayList m28280case() throws h3 {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = null;
            while (m28282else() != ' ') {
                String strM28283if = m28283if();
                char cM28282else = m28282else();
                if (cM28282else == ':') {
                    arrayList2 = new ArrayList();
                    arrayList.add(new Cif(strM28283if, arrayList2));
                } else {
                    if (arrayList2 == null) {
                        throw new h3("The very first list item must be followed by \":\" so it will be the key for the following sub-list.", 0, 0);
                    }
                    arrayList2.add(strM28283if);
                }
                if (cM28282else == ' ') {
                    break;
                }
                if (cM28282else != ',' && cM28282else != ':') {
                    throw new h3("Expected \",\" or \":\" or the end of text but found \"" + cM28282else + "\"", 0, 0);
                }
                this.f24190if++;
            }
            return arrayList;
        }

        /* renamed from: do, reason: not valid java name */
        public String m28281do() throws h3 {
            String strM28279for = m28279for();
            if (!strM28279for.startsWith("'") && !strM28279for.startsWith("\"")) {
                return strM28279for;
            }
            throw new h3("Keyword expected, but a string value found: " + strM28279for, 0, 0);
        }

        /* renamed from: else, reason: not valid java name */
        public char m28282else() {
            while (true) {
                int i = this.f24190if;
                if (i >= this.f24189for) {
                    return ' ';
                }
                char cCharAt = this.f24188do.charAt(i);
                if (!Character.isWhitespace(cCharAt)) {
                    return cCharAt;
                }
                this.f24190if++;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public String m28283if() throws h3 {
            String strM28279for = m28279for();
            if (strM28279for.startsWith("'") || strM28279for.startsWith("\"")) {
                strM28279for = strM28279for.substring(1, strM28279for.length() - 1);
            }
            return Csuper.m29307do(strM28279for);
        }

        /* renamed from: new, reason: not valid java name */
        public HashMap m28284new() throws h3 {
            HashMap map = new HashMap();
            while (m28282else() != ' ') {
                String strM28283if = m28283if();
                if (m28282else() == ' ') {
                    throw new h3("Unexpected end of text: expected \"as\"", 0, 0);
                }
                String strM28281do = m28281do();
                if (!strM28281do.equalsIgnoreCase("as")) {
                    throw new h3("Expected \"as\", but found " + Csuper.m29330synchronized(strM28281do), 0, 0);
                }
                if (m28282else() == ' ') {
                    throw new h3("Unexpected end of text: expected gate hash name", 0, 0);
                }
                map.put(m28283if(), strM28283if);
                char cM28282else = m28282else();
                if (cM28282else == ' ') {
                    break;
                }
                if (cM28282else != ',') {
                    throw new h3("Expected \",\" or the end of text but found \"" + cM28282else + "\"", 0, 0);
                }
                this.f24190if++;
            }
            return map;
        }

        /* renamed from: try, reason: not valid java name */
        public ArrayList m28285try() throws h3 {
            ArrayList arrayList = new ArrayList();
            while (m28282else() != ' ') {
                arrayList.add(m28283if());
                char cM28282else = m28282else();
                if (cM28282else == ' ') {
                    break;
                }
                if (cM28282else != ',') {
                    throw new h3("Expected \",\" or the end of text but found \"" + cM28282else + "\"", 0, 0);
                }
                this.f24190if++;
            }
            return arrayList;
        }

        private Cfor(String str) {
            this.f24188do = str;
            this.f24190if = 0;
            this.f24189for = str.length();
        }
    }

    /* renamed from: freemarker.core.t$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Object f24191do;

        /* renamed from: if, reason: not valid java name */
        private final Object f24192if;

        public Cif(Object obj, Object obj2) {
            this.f24191do = obj;
            this.f24192if = obj2;
        }

        /* renamed from: do, reason: not valid java name */
        public Object m28286do() {
            return this.f24191do;
        }

        /* renamed from: if, reason: not valid java name */
        public Object m28287if() {
            return this.f24192if;
        }
    }

    /* renamed from: freemarker.core.t$new, reason: invalid class name */
    public static class Cnew extends nl2 {
        private Cnew(d0 d0Var, String str, String str2, Throwable th) {
            super(th, d0Var, "Failed to set FreeMarker configuration setting ", new fl2(str), " to value ", new fl2(str2), "; see cause exception.");
        }
    }

    /* renamed from: freemarker.core.t$try, reason: invalid class name */
    public static class Ctry extends nl2 {
        /* JADX WARN: Illegal instructions before constructor call */
        private Ctry(d0 d0Var, String str, String str2) {
            Object[] objArr = new Object[3];
            objArr[0] = "Unknown FreeMarker configuration setting: ";
            objArr[1] = new fl2(str);
            objArr[2] = str2 == null ? "" : new Object[]{". You may meant: ", new fl2(str2)};
            super(d0Var, objArr);
        }
    }

    @Deprecated
    public t() {
        this(freemarker.template.Cdo.t3);
    }

    private void O0(Set<String> set) {
        for (String str : set) {
            if (str.length() == 0) {
                throw new IllegalArgumentException("Format names can't be 0 length");
            }
            char cCharAt = str.charAt(0);
            if (cCharAt == '@') {
                throw new IllegalArgumentException("Format names can't start with '@'. '@' is only used when referring to them from format strings. In: " + str);
            }
            if (!Character.isLetter(cCharAt)) {
                throw new IllegalArgumentException("Format name must start with letter: " + str);
            }
            for (int i2 = 1; i2 < str.length(); i2++) {
                if (!Character.isLetterOrDigit(str.charAt(i2))) {
                    throw new IllegalArgumentException("Format name can only contain letters and digits: " + str);
                }
            }
        }
    }

    private TimeZone Y(String str) {
        return d.equalsIgnoreCase(str) ? TimeZone.getDefault() : TimeZone.getTimeZone(str);
    }

    /* renamed from: for, reason: not valid java name */
    private void m28240for(String str, boolean z2) {
        synchronized (this) {
            ArrayList<String> arrayList = this.f24169interface;
            if (arrayList == null) {
                o();
            } else if (!z2) {
                arrayList.remove(str);
            }
            this.f24169interface.add(str);
        }
    }

    private void n() {
        this.f24186volatile = new LinkedHashMap<>(4);
    }

    /* renamed from: new, reason: not valid java name */
    private String m28241new(Integer num) {
        if (num == null) {
            return null;
        }
        return num.intValue() == 0 ? b2.f23510do : num.intValue() == 1 ? b2.f23511if : num.toString();
    }

    private void o() {
        this.f24169interface = new ArrayList<>(4);
    }

    /* renamed from: protected, reason: not valid java name */
    private z4 m28242protected() {
        Object[] objArr = new Object[5];
        objArr[0] = "Can't convert boolean to string automatically, because the \"";
        objArr[1] = "boolean_format";
        objArr[2] = "\" setting was ";
        objArr[3] = new fl2(m28254final());
        objArr[4] = m28254final().equals(f24149instanceof) ? ", which is the legacy deprecated default, and we treat it as if no format was set. This is the default configuration; you should provide the format explicitly for each place where you print a boolean." : ".";
        return new z4(objArr).m28398catch("Write something like myBool?string('yes', 'no') to specify boolean formatting in place.", new Object[]{"If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it's might be reasonable to set the \"", "boolean_format", "\" setting to \"c\" instead.)"}, new Object[]{"If you need the same two values on most places, the programmers can set the \"", "boolean_format", "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that."});
    }

    public boolean A(Object obj) {
        return this.f24164for.containsKey(obj);
    }

    public void A0(TimeZone timeZone) {
        this.f24152break = timeZone;
        this.f24154catch = true;
        this.f24166if.setProperty("sql_date_and_time_time_zone", timeZone != null ? timeZone.getID() : a);
    }

    public boolean B() {
        return this.f24157continue != null;
    }

    public void B0(String str, String str2) throws TemplateException, h3 {
        try {
            boolean z2 = false;
            if ("locale".equals(str)) {
                if (d.equalsIgnoreCase(str2)) {
                    t0(Locale.getDefault());
                } else {
                    t0(Csuper.m29333throws(str2));
                }
            } else if ("number_format".equals(str) || i.equals(str)) {
                w0(str2);
            } else if ("custom_number_formats".equals(str) || l.equals(str)) {
                Map<String, ? extends g4> map = (Map) c5.m27894catch(str2, Map.class, false, sl2.m7509if());
                y4.m28374case("Map keys", String.class, map.keySet());
                y4.m28374case("Map values", g4.class, map.values());
                o0(map);
            } else if ("time_format".equals(str) || o.equals(str)) {
                H0(str2);
            } else if ("date_format".equals(str) || r.equals(str)) {
                p0(str2);
            } else if ("datetime_format".equals(str) || x.equals(str)) {
                q0(str2);
            } else if ("custom_date_formats".equals(str) || u.equals(str)) {
                Map<String, ? extends a4> map2 = (Map) c5.m27894catch(str2, Map.class, false, sl2.m7509if());
                y4.m28374case("Map keys", String.class, map2.keySet());
                y4.m28374case("Map values", a4.class, map2.values());
                n0(map2);
            } else if ("time_zone".equals(str) || A.equals(str)) {
                I0(Y(str2));
            } else {
                TimeZone timeZoneY = null;
                Boolean boolValueOf = null;
                HashSet hashSet = null;
                if ("sql_date_and_time_time_zone".equals(str) || D.equals(str)) {
                    if (!str2.equals(a)) {
                        timeZoneY = Y(str2);
                    }
                    A0(timeZoneY);
                } else if ("classic_compatible".equals(str) || G.equals(str)) {
                    char cCharAt = (str2 == null || str2.length() <= 0) ? (char) 0 : str2.charAt(0);
                    if (Character.isDigit(cCharAt) || cCharAt == '+' || cCharAt == '-') {
                        k0(Integer.parseInt(str2));
                    } else {
                        j0(str2 != null ? Csuper.m29321package(str2) : false);
                    }
                } else if ("template_exception_handler".equals(str) || f36267J.equals(str)) {
                    if (str2.indexOf(46) != -1) {
                        G0((TemplateExceptionHandler) c5.m27894catch(str2, TemplateExceptionHandler.class, false, sl2.m7509if()));
                    } else if (BuildConfig.BUILD_TYPE.equalsIgnoreCase(str2)) {
                        G0(TemplateExceptionHandler.DEBUG_HANDLER);
                    } else if ("html_debug".equalsIgnoreCase(str2) || "htmlDebug".equals(str2)) {
                        G0(TemplateExceptionHandler.HTML_DEBUG_HANDLER);
                    } else if ("ignore".equalsIgnoreCase(str2)) {
                        G0(TemplateExceptionHandler.IGNORE_HANDLER);
                    } else if ("rethrow".equalsIgnoreCase(str2)) {
                        G0(TemplateExceptionHandler.RETHROW_HANDLER);
                    } else {
                        if (!"default".equalsIgnoreCase(str2) || !(this instanceof freemarker.template.Cdo)) {
                            throw p(str, str2);
                        }
                        ((freemarker.template.Cdo) this).u3();
                    }
                } else if ("attempt_exception_reporter".equals(str) || M.equals(str)) {
                    if (str2.indexOf(46) != -1) {
                        e0((AttemptExceptionReporter) c5.m27894catch(str2, AttemptExceptionReporter.class, false, sl2.m7509if()));
                    } else if ("log_error".equalsIgnoreCase(str2) || "logError".equals(str2)) {
                        e0(AttemptExceptionReporter.LOG_ERROR_REPORTER);
                    } else if ("log_warn".equalsIgnoreCase(str2) || "logWarn".equals(str2)) {
                        e0(AttemptExceptionReporter.LOG_WARN_REPORTER);
                    } else {
                        if (!"default".equalsIgnoreCase(str2) || !(this instanceof freemarker.template.Cdo)) {
                            throw p(str, str2);
                        }
                        ((freemarker.template.Cdo) this).m3();
                    }
                } else if ("arithmetic_engine".equals(str) || P.equals(str)) {
                    if (str2.indexOf(46) != -1) {
                        d0((Celse) c5.m27894catch(str2, Celse.class, false, sl2.m7509if()));
                    } else if ("bigdecimal".equalsIgnoreCase(str2)) {
                        d0(Celse.f23685new);
                    } else {
                        if (!"conservative".equalsIgnoreCase(str2)) {
                            throw p(str, str2);
                        }
                        d0(Celse.f23686try);
                    }
                } else if ("object_wrapper".equals(str) || S.equals(str)) {
                    if ("default".equalsIgnoreCase(str2)) {
                        if (this instanceof freemarker.template.Cdo) {
                            ((freemarker.template.Cdo) this).r3();
                        } else {
                            x0(freemarker.template.Cdo.m1(freemarker.template.Cdo.h3));
                        }
                    } else if (c.equalsIgnoreCase(str2)) {
                        x0(freemarker.template.Cdo.m1(freemarker.template.Cdo.h3));
                    } else if ("simple".equalsIgnoreCase(str2)) {
                        x0(ObjectWrapper.SIMPLE_WRAPPER);
                    } else if ("beans".equalsIgnoreCase(str2)) {
                        x0(ObjectWrapper.BEANS_WRAPPER);
                    } else if ("jython".equalsIgnoreCase(str2)) {
                        x0((ObjectWrapper) Class.forName("freemarker.ext.jython.goto").getField("INSTANCE").get(null));
                    } else {
                        x0((ObjectWrapper) c5.m27894catch(str2, ObjectWrapper.class, false, sl2.m7509if()));
                    }
                } else if ("boolean_format".equals(str) || V.equals(str)) {
                    i0(str2);
                } else if ("output_encoding".equals(str) || "outputEncoding".equals(str)) {
                    y0(str2);
                } else if ("url_escaping_charset".equals(str) || "urlEscapingCharset".equals(str)) {
                    K0(str2);
                } else if ("strict_bean_models".equals(str) || e0.equals(str)) {
                    F0(Csuper.m29321package(str2));
                } else if ("auto_flush".equals(str) || h0.equals(str)) {
                    f0(Csuper.m29321package(str2));
                } else if ("show_error_tips".equals(str) || n0.equals(str)) {
                    E0(Csuper.m29321package(str2));
                } else if ("api_builtin_enabled".equals(str) || q0.equals(str)) {
                    c0(Csuper.m29321package(str2));
                } else if ("truncate_builtin_algorithm".equals(str) || t0.equals(str)) {
                    if ("ascii".equalsIgnoreCase(str2)) {
                        J0(y.f24289final);
                    } else if ("unicode".equalsIgnoreCase(str2)) {
                        J0(y.f24290super);
                    } else {
                        J0((p4) c5.m27894catch(str2, p4.class, false, sl2.m7509if()));
                    }
                } else if ("new_builtin_class_resolver".equals(str) || k0.equals(str)) {
                    if ("unrestricted".equals(str2)) {
                        v0(TemplateClassResolver.UNRESTRICTED_RESOLVER);
                    } else if ("safer".equals(str2)) {
                        v0(TemplateClassResolver.SAFER_RESOLVER);
                    } else if ("allows_nothing".equals(str2) || "allowsNothing".equals(str2)) {
                        v0(TemplateClassResolver.ALLOWS_NOTHING_RESOLVER);
                    } else if (str2.indexOf(":") != -1) {
                        ArrayList arrayListX = X(str2);
                        List list = null;
                        for (int i2 = 0; i2 < arrayListX.size(); i2++) {
                            Cif cif = (Cif) arrayListX.get(i2);
                            String str3 = (String) cif.m28286do();
                            List list2 = (List) cif.m28287if();
                            if (str3.equals(Q0) || str3.equals(S0)) {
                                hashSet = new HashSet(list2);
                            } else {
                                if (!str3.equals(R0) && !str3.equals(T0)) {
                                    throw new h3("Unrecognized list segment key: " + Csuper.m29330synchronized(str3) + ". Supported keys are: \"" + Q0 + "\", \"" + S0 + "\", \"" + R0 + "\", \"" + T0 + "\". ", 0, 0);
                                }
                                list = list2;
                            }
                        }
                        v0(new b3(hashSet, list));
                    } else {
                        if ("allow_nothing".equals(str2)) {
                            throw new IllegalArgumentException("The correct value would be: allows_nothing");
                        }
                        if ("allowNothing".equals(str2)) {
                            throw new IllegalArgumentException("The correct value would be: allowsNothing");
                        }
                        if (str2.indexOf(46) == -1) {
                            throw p(str, str2);
                        }
                        v0((TemplateClassResolver) c5.m27894catch(str2, TemplateClassResolver.class, false, sl2.m7509if()));
                    }
                } else if ("log_template_exceptions".equals(str) || w0.equals(str)) {
                    u0(Csuper.m29321package(str2));
                } else if ("wrap_unchecked_exceptions".equals(str) || z0.equals(str)) {
                    L0(Csuper.m29321package(str2));
                } else if ("lazy_auto_imports".equals(str) || F0.equals(str)) {
                    if (!str2.equals(a)) {
                        boolValueOf = Boolean.valueOf(Csuper.m29321package(str2));
                    }
                    r0(boolValueOf);
                } else if ("lazy_imports".equals(str) || C0.equals(str)) {
                    s0(Csuper.m29321package(str2));
                } else if ("auto_include".equals(str) || "autoInclude".equals(str)) {
                    h0(W(str2));
                } else if ("auto_import".equals(str) || "autoImport".equals(str)) {
                    g0(V(str2));
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                throw N0(str);
            }
        } catch (Exception e2) {
            throw M0(str, str2, e2);
        }
    }

    public boolean C() {
        return this.f24178strictfp != null;
    }

    public void C0(InputStream inputStream) throws TemplateException, IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        D0(properties);
    }

    public boolean D() {
        return this.f24160else != null;
    }

    public void D0(Properties properties) throws TemplateException {
        sl2 sl2VarM7510new = sl2.m7510new();
        try {
            for (String str : properties.keySet()) {
                B0(str, properties.getProperty(str).trim());
            }
        } finally {
            sl2.m7508do(sl2VarM7510new);
        }
    }

    public boolean E() {
        return this.f24165goto != null;
    }

    public void E0(boolean z2) {
        this.f24158default = Boolean.valueOf(z2);
        this.f24166if.setProperty("show_error_tips", String.valueOf(z2));
    }

    public boolean F() {
        return this.f24167implements;
    }

    @Deprecated
    public void F0(boolean z2) {
        ObjectWrapper objectWrapper = this.f24170native;
        if (objectWrapper instanceof freemarker.ext.beans.Ctry) {
            ((freemarker.ext.beans.Ctry) objectWrapper).q(z2);
            return;
        }
        throw new IllegalStateException("The value of the object_wrapper setting isn't a " + freemarker.ext.beans.Ctry.class.getName() + ".");
    }

    public boolean G() {
        return this.f24174protected != null;
    }

    public void G0(TemplateExceptionHandler templateExceptionHandler) {
        w41.check(f36267J, templateExceptionHandler);
        this.f24182throw = templateExceptionHandler;
        this.f24166if.setProperty("template_exception_handler", templateExceptionHandler.getClass().getName());
    }

    public boolean H() {
        return this.f24171new != null;
    }

    public void H0(String str) {
        w41.check(o, str);
        this.f24153case = str;
        this.f24166if.setProperty("time_format", str);
    }

    public boolean I() {
        return this.f24173private != null;
    }

    public void I0(TimeZone timeZone) {
        w41.check(A, timeZone);
        this.f24181this = timeZone;
        this.f24166if.setProperty("time_zone", timeZone.getID());
    }

    public boolean J() {
        return this.f24161extends != null;
    }

    public void J0(p4 p4Var) {
        w41.check(t0, p4Var);
        this.f24172package = p4Var;
    }

    public boolean K() {
        return this.f24185try != null;
    }

    public void K0(String str) {
        this.f24177static = str;
        if (str != null) {
            this.f24166if.setProperty("url_escaping_charset", str);
        } else {
            this.f24166if.remove("url_escaping_charset");
        }
        this.f24180switch = true;
    }

    public boolean L() {
        return this.f24170native != null;
    }

    public void L0(boolean z2) {
        this.f24151abstract = Boolean.valueOf(z2);
    }

    public boolean M() {
        return this.f24176return;
    }

    public TemplateException M0(String str, String str2, Throwable th) {
        return new Cnew(m28263package(), str, str2, th);
    }

    public boolean N() {
        return this.f24154catch;
    }

    public TemplateException N0(String str) {
        return new Ctry(m28263package(), str, mo28273throw(str));
    }

    public boolean O() {
        return this.f24158default != null;
    }

    public boolean P() {
        return this.f24182throw != null;
    }

    public boolean Q() {
        return this.f24153case != null;
    }

    public boolean R() {
        return this.f24181this != null;
    }

    public boolean S() {
        return this.f24172package != null;
    }

    public boolean T() {
        return this.f24180switch;
    }

    public boolean U() {
        return this.f24151abstract != null;
    }

    public HashMap V(String str) throws h3 {
        return new Cfor(str).m28284new();
    }

    public ArrayList W(String str) throws h3 {
        return new Cfor(str).m28285try();
    }

    public ArrayList X(String str) throws h3 {
        return new Cfor(str).m28280case();
    }

    public void Z(String str) {
        synchronized (this) {
            LinkedHashMap<String, String> linkedHashMap = this.f24186volatile;
            if (linkedHashMap != null) {
                linkedHashMap.remove(str);
            }
        }
    }

    public TimeZone a() {
        if (this.f24154catch) {
            return this.f24152break;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.a();
        }
        return null;
    }

    public void a0(String str) {
        synchronized (this) {
            ArrayList<String> arrayList = this.f24169interface;
            if (arrayList != null) {
                arrayList.remove(str);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public Boolean m28243abstract() {
        return this.f24167implements ? this.f24184transient : this.f24159do.m28243abstract();
    }

    @Deprecated
    public String b(String str) {
        return this.f24166if.getProperty(str);
    }

    public void b0(String str) {
        synchronized (this.f24164for) {
            this.f24164for.remove(str);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Map<String, String> m28244break() {
        LinkedHashMap<String, String> linkedHashMap = this.f24186volatile;
        return linkedHashMap != null ? linkedHashMap : this.f24159do.m28244break();
    }

    public Set<String> c(boolean z2) {
        return new tl2(z2 ? P0 : O0);
    }

    public void c0(boolean z2) {
        this.f24163finally = Boolean.valueOf(z2);
        this.f24166if.setProperty("api_builtin_enabled", String.valueOf(z2));
    }

    /* renamed from: case, reason: not valid java name */
    public void mo28245case(d0 d0Var) throws TemplateException, IOException {
        t tVar = this.f24159do;
        if (tVar != null) {
            tVar.mo28245case(d0Var);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public Map<String, String> m28246catch() {
        return this.f24186volatile;
    }

    /* renamed from: class, reason: not valid java name */
    public List<String> m28247class() {
        ArrayList<String> arrayList = this.f24169interface;
        return arrayList != null ? arrayList : this.f24159do.m28247class();
    }

    public Object clone() throws CloneNotSupportedException {
        t tVar = (t) super.clone();
        if (this.f24166if != null) {
            tVar.f24166if = new Properties(this.f24166if);
        }
        HashMap<Object, Object> map = this.f24164for;
        if (map != null) {
            tVar.f24164for = (HashMap) map.clone();
        }
        LinkedHashMap<String, String> linkedHashMap = this.f24186volatile;
        if (linkedHashMap != null) {
            tVar.f24186volatile = (LinkedHashMap) linkedHashMap.clone();
        }
        ArrayList<String> arrayList = this.f24169interface;
        if (arrayList != null) {
            tVar.f24169interface = (ArrayList) arrayList.clone();
        }
        return tVar;
    }

    /* renamed from: const, reason: not valid java name */
    public List<String> m28248const() {
        return this.f24169interface;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m28249continue() {
        Boolean bool = this.f24174protected;
        return bool != null ? bool.booleanValue() : this.f24159do.m28249continue();
    }

    @Deprecated
    public Map d() {
        return Collections.unmodifiableMap(this.f24166if);
    }

    public void d0(Celse celse) {
        w41.check(P, celse);
        this.f24168import = celse;
        this.f24166if.setProperty("arithmetic_engine", celse.getClass().getName());
    }

    /* renamed from: default, reason: not valid java name */
    public Map<String, ? extends g4> m28250default() {
        return this.f24178strictfp;
    }

    /* renamed from: do, reason: not valid java name */
    public void m28251do(String str, String str2) {
        synchronized (this) {
            LinkedHashMap<String, String> linkedHashMap = this.f24186volatile;
            if (linkedHashMap == null) {
                n();
            } else {
                linkedHashMap.remove(str);
            }
            this.f24186volatile.put(str, str2);
        }
    }

    public boolean e() {
        Boolean bool = this.f24158default;
        if (bool != null) {
            return bool.booleanValue();
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.e();
        }
        return true;
    }

    public void e0(AttemptExceptionReporter attemptExceptionReporter) {
        w41.check(M, attemptExceptionReporter);
        this.f24187while = attemptExceptionReporter;
    }

    /* renamed from: else, reason: not valid java name */
    public String m28252else(boolean z2, boolean z3) throws TemplateException {
        if (z2) {
            String strI = i();
            if (strI != null) {
                return strI;
            }
            if (z3) {
                return b2.f23511if;
            }
            throw new nl2(m28242protected());
        }
        String strM28264private = m28264private();
        if (strM28264private != null) {
            return strM28264private;
        }
        if (z3) {
            return b2.f23510do;
        }
        throw new nl2(m28242protected());
    }

    /* renamed from: extends, reason: not valid java name */
    public String m28253extends() {
        String str = this.f24160else;
        return str != null ? str : this.f24159do.m28253extends();
    }

    public TemplateExceptionHandler f() {
        TemplateExceptionHandler templateExceptionHandler = this.f24182throw;
        return templateExceptionHandler != null ? templateExceptionHandler : this.f24159do.f();
    }

    public void f0(boolean z2) {
        this.f24183throws = Boolean.valueOf(z2);
        this.f24166if.setProperty("auto_flush", String.valueOf(z2));
    }

    /* renamed from: final, reason: not valid java name */
    public String m28254final() {
        String str = this.f24155class;
        return str != null ? str : this.f24159do.m28254final();
    }

    /* renamed from: finally, reason: not valid java name */
    public String m28255finally() {
        String str = this.f24165goto;
        return str != null ? str : this.f24159do.m28255finally();
    }

    public String g() {
        String str = this.f24153case;
        return str != null ? str : this.f24159do.g();
    }

    public void g0(Map map) {
        w41.check("map", map);
        synchronized (this) {
            LinkedHashMap<String, String> linkedHashMap = this.f24186volatile;
            if (linkedHashMap != null) {
                linkedHashMap.clear();
            }
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                if (!(key instanceof String)) {
                    throw new IllegalArgumentException("Key in Map wasn't a String, but a(n) " + key.getClass().getName() + ".");
                }
                Object value = entry.getValue();
                if (!(value instanceof String)) {
                    throw new IllegalArgumentException("Value in Map wasn't a String, but a(n) " + value.getClass().getName() + ".");
                }
                m28251do((String) key, (String) value);
            }
        }
    }

    public Celse getArithmeticEngine() {
        Celse celse = this.f24168import;
        return celse != null ? celse : this.f24159do.getArithmeticEngine();
    }

    /* renamed from: goto, reason: not valid java name */
    public AttemptExceptionReporter m28256goto() {
        AttemptExceptionReporter attemptExceptionReporter = this.f24187while;
        return attemptExceptionReporter != null ? attemptExceptionReporter : this.f24159do.m28256goto();
    }

    public TimeZone h() {
        TimeZone timeZone = this.f24181this;
        return timeZone != null ? timeZone : this.f24159do.h();
    }

    public void h0(List list) {
        w41.check("templateNames", list);
        synchronized (this) {
            ArrayList<String> arrayList = this.f24169interface;
            if (arrayList != null) {
                arrayList.clear();
            }
            for (Object obj : list) {
                if (!(obj instanceof String)) {
                    throw new IllegalArgumentException("List items must be String-s.");
                }
                m28240for((String) obj, (this instanceof freemarker.template.Cdo) && ((freemarker.template.Cdo) this).getIncompatibleImprovements().intValue() < ul2.f6935goto);
            }
        }
    }

    public String i() {
        if (this.f24155class != null) {
            return this.f24156const;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.i();
        }
        return null;
    }

    public void i0(String str) {
        w41.check(V, str);
        if (str.equals(f24149instanceof)) {
            this.f24156const = null;
            this.f24162final = null;
        } else if (str.equals("c")) {
            this.f24156const = b2.f23511if;
            this.f24162final = b2.f23510do;
        } else {
            int iIndexOf = str.indexOf(44);
            if (iIndexOf == -1) {
                throw new IllegalArgumentException("Setting value must be a string that contains two comma-separated values for true and false, or it must be \"c\", but it was " + Csuper.m29330synchronized(str) + ".");
            }
            this.f24156const = str.substring(0, iIndexOf);
            this.f24162final = str.substring(iIndexOf + 1);
        }
        this.f24155class = str;
        this.f24166if.setProperty("boolean_format", str);
    }

    /* renamed from: if, reason: not valid java name */
    public void m28257if(String str) {
        m28240for(str, false);
    }

    /* renamed from: implements, reason: not valid java name */
    public ObjectWrapper m28258implements() {
        ObjectWrapper objectWrapper = this.f24170native;
        return objectWrapper != null ? objectWrapper : this.f24159do.m28258implements();
    }

    /* renamed from: import, reason: not valid java name */
    public Object m28259import(String str) {
        t tVar;
        synchronized (this.f24164for) {
            Object obj = this.f24164for.get(str);
            if (obj == null && this.f24164for.containsKey(str)) {
                return null;
            }
            return (obj != null || (tVar = this.f24159do) == null) ? obj : tVar.m28259import(str);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public String m28260instanceof() {
        if (this.f24176return) {
            return this.f24175public;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28260instanceof();
        }
        return null;
    }

    /* renamed from: interface, reason: not valid java name */
    public TemplateClassResolver m28261interface() {
        TemplateClassResolver templateClassResolver = this.f24161extends;
        return templateClassResolver != null ? templateClassResolver : this.f24159do.m28261interface();
    }

    public p4 j() {
        p4 p4Var = this.f24172package;
        return p4Var != null ? p4Var : this.f24159do.j();
    }

    public void j0(boolean z2) {
        Integer numValueOf = Integer.valueOf(z2 ? 1 : 0);
        this.f24179super = numValueOf;
        this.f24166if.setProperty("classic_compatible", m28241new(numValueOf));
    }

    public String k() {
        if (this.f24180switch) {
            return this.f24177static;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.k();
        }
        return null;
    }

    public void k0(int i2) {
        if (i2 >= 0 && i2 <= 2) {
            this.f24179super = Integer.valueOf(i2);
            return;
        }
        throw new IllegalArgumentException("Unsupported \"classicCompatibility\": " + i2);
    }

    public boolean l() {
        Boolean bool = this.f24151abstract;
        if (bool != null) {
            return bool.booleanValue();
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.l();
        }
        return false;
    }

    public void l0(Object obj, Object obj2) {
        synchronized (this.f24164for) {
            this.f24164for.put(obj, obj2);
        }
    }

    public boolean m() {
        Map<String, ? extends a4> map;
        Map<String, ? extends g4> map2 = this.f24178strictfp;
        return !(map2 == null || map2.isEmpty()) || !((map = this.f24157continue) == null || map.isEmpty()) || (m28271synchronized() != null && m28271synchronized().m());
    }

    public void m0(String str, Object obj) {
        synchronized (this.f24164for) {
            this.f24164for.put(str, obj);
        }
    }

    public void n0(Map<String, ? extends a4> map) {
        w41.check(u, map);
        O0(map.keySet());
        this.f24157continue = map;
    }

    /* renamed from: native, reason: not valid java name */
    public String[] m28262native() {
        String[] strArr;
        synchronized (this.f24164for) {
            LinkedList linkedList = new LinkedList(this.f24164for.keySet());
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof String)) {
                    it.remove();
                }
            }
            strArr = (String[]) linkedList.toArray(new String[linkedList.size()]);
        }
        return strArr;
    }

    public void o0(Map<String, ? extends g4> map) {
        w41.check(l, map);
        O0(map.keySet());
        this.f24178strictfp = map;
    }

    public TemplateException p(String str, String str2) {
        return new nl2(m28263package(), "Invalid value for setting ", new fl2(str), ": ", new fl2(str2));
    }

    public void p0(String str) {
        w41.check(r, str);
        this.f24160else = str;
        this.f24166if.setProperty("date_format", str);
    }

    /* renamed from: package, reason: not valid java name */
    public d0 m28263package() {
        return this instanceof d0 ? (d0) this : d0.w1();
    }

    /* renamed from: private, reason: not valid java name */
    public String m28264private() {
        if (this.f24155class != null) {
            return this.f24162final;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28264private();
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public a4 m28265public(String str) {
        a4 a4Var;
        Map<String, ? extends a4> map = this.f24157continue;
        if (map != null && (a4Var = map.get(str)) != null) {
            return a4Var;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28265public(str);
        }
        return null;
    }

    public boolean q() {
        Boolean bool = this.f24163finally;
        if (bool != null) {
            return bool.booleanValue();
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.q();
        }
        return false;
    }

    public void q0(String str) {
        w41.check("dateTimeFormat", str);
        this.f24165goto = str;
        this.f24166if.setProperty("datetime_format", str);
    }

    public boolean r() {
        return this.f24163finally != null;
    }

    public void r0(Boolean bool) {
        this.f24184transient = bool;
        this.f24167implements = true;
    }

    /* renamed from: return, reason: not valid java name */
    public Map<String, ? extends a4> m28266return() {
        Map<String, ? extends a4> map = this.f24157continue;
        return map == null ? this.f24159do.m28266return() : map;
    }

    public boolean s() {
        return this.f24168import != null;
    }

    public void s0(boolean z2) {
        this.f24174protected = Boolean.valueOf(z2);
    }

    /* renamed from: static, reason: not valid java name */
    public Map<String, ? extends a4> m28267static() {
        return this.f24157continue;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Locale m28268strictfp() {
        Locale locale = this.f24171new;
        return locale != null ? locale : this.f24159do.m28268strictfp();
    }

    /* renamed from: super, reason: not valid java name */
    public int m28269super() {
        Integer num = this.f24179super;
        return num != null ? num.intValue() : this.f24159do.m28269super();
    }

    /* renamed from: switch, reason: not valid java name */
    public g4 m28270switch(String str) {
        g4 g4Var;
        Map<String, ? extends g4> map = this.f24178strictfp;
        if (map != null && (g4Var = map.get(str)) != null) {
            return g4Var;
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28270switch(str);
        }
        return null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final t m28271synchronized() {
        return this.f24159do;
    }

    public boolean t() {
        return this.f24187while != null;
    }

    public void t0(Locale locale) {
        w41.check("locale", locale);
        this.f24171new = locale;
        this.f24166if.setProperty("locale", locale.toString());
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m28272this() {
        Boolean bool = this.f24183throws;
        if (bool != null) {
            return bool.booleanValue();
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28272this();
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    public String mo28273throw(String str) {
        return null;
    }

    /* renamed from: throws, reason: not valid java name */
    public Map<String, ? extends g4> m28274throws() {
        Map<String, ? extends g4> map = this.f24178strictfp;
        return map == null ? this.f24159do.m28274throws() : map;
    }

    /* renamed from: transient, reason: not valid java name */
    public String m28275transient() {
        String str = this.f24185try;
        return str != null ? str : this.f24159do.m28275transient();
    }

    /* renamed from: try, reason: not valid java name */
    public void m28276try(t tVar, boolean z2) {
        synchronized (this.f24164for) {
            for (Map.Entry<Object, Object> entry : this.f24164for.entrySet()) {
                Object key = entry.getKey();
                if (z2 || !tVar.A(key)) {
                    if (key instanceof String) {
                        tVar.m0((String) key, entry.getValue());
                    } else {
                        tVar.l0(key, entry.getValue());
                    }
                }
            }
        }
    }

    public boolean u() {
        return this.f24183throws != null;
    }

    public void u0(boolean z2) {
        this.f24173private = Boolean.valueOf(z2);
        this.f24166if.setProperty("log_template_exceptions", String.valueOf(z2));
    }

    public boolean v() {
        return this.f24186volatile != null;
    }

    public void v0(TemplateClassResolver templateClassResolver) {
        w41.check(k0, templateClassResolver);
        this.f24161extends = templateClassResolver;
        this.f24166if.setProperty("new_builtin_class_resolver", templateClassResolver.getClass().getName());
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean m28277volatile() {
        Boolean bool = this.f24173private;
        if (bool != null) {
            return bool.booleanValue();
        }
        t tVar = this.f24159do;
        if (tVar != null) {
            return tVar.m28277volatile();
        }
        return true;
    }

    public boolean w() {
        return this.f24169interface != null;
    }

    public void w0(String str) {
        w41.check(i, str);
        this.f24185try = str;
        this.f24166if.setProperty("number_format", str);
    }

    /* renamed from: while, reason: not valid java name */
    public Object m28278while(Object obj, v vVar) {
        Object objMo28330do;
        synchronized (this.f24164for) {
            objMo28330do = this.f24164for.get(obj);
            if (objMo28330do == null && !this.f24164for.containsKey(obj)) {
                objMo28330do = vVar.mo28330do();
                this.f24164for.put(obj, objMo28330do);
            }
        }
        return objMo28330do;
    }

    public boolean x() {
        return this.f24155class != null;
    }

    public void x0(ObjectWrapper objectWrapper) {
        w41.check(S, objectWrapper);
        this.f24170native = objectWrapper;
        this.f24166if.setProperty("object_wrapper", objectWrapper.getClass().getName());
    }

    public boolean y() {
        Integer num = this.f24179super;
        return num != null ? num.intValue() != 0 : this.f24159do.y();
    }

    public void y0(String str) {
        this.f24175public = str;
        if (str != null) {
            this.f24166if.setProperty("output_encoding", str);
        } else {
            this.f24166if.remove("output_encoding");
        }
        this.f24176return = true;
    }

    public boolean z() {
        return this.f24179super != null;
    }

    public void z0(t tVar) {
        this.f24159do = tVar;
    }

    public t(we2 we2Var) {
        ul2.m8507if(we2Var);
        this.f24159do = null;
        this.f24166if = new Properties();
        Locale localeM8506goto = ul2.m8506goto();
        this.f24171new = localeM8506goto;
        this.f24166if.setProperty("locale", localeM8506goto.toString());
        TimeZone timeZoneM8501const = ul2.m8501const();
        this.f24181this = timeZoneM8501const;
        this.f24166if.setProperty("time_zone", timeZoneM8501const.getID());
        this.f24152break = null;
        this.f24166if.setProperty("sql_date_and_time_time_zone", String.valueOf((Object) null));
        this.f24185try = "number";
        this.f24166if.setProperty("number_format", "number");
        this.f24153case = "";
        this.f24166if.setProperty("time_format", "");
        this.f24160else = "";
        this.f24166if.setProperty("date_format", "");
        this.f24165goto = "";
        this.f24166if.setProperty("datetime_format", "");
        Integer num = 0;
        this.f24179super = num;
        this.f24166if.setProperty("classic_compatible", num.toString());
        TemplateExceptionHandler templateExceptionHandlerM8497break = ul2.m8497break(we2Var);
        this.f24182throw = templateExceptionHandlerM8497break;
        this.f24166if.setProperty("template_exception_handler", templateExceptionHandlerM8497break.getClass().getName());
        this.f24151abstract = Boolean.valueOf(ul2.m8504final(we2Var));
        this.f24187while = ul2.m8503else(we2Var);
        Celse.Cdo cdo = Celse.f23685new;
        this.f24168import = cdo;
        this.f24166if.setProperty("arithmetic_engine", cdo.getClass().getName());
        this.f24170native = freemarker.template.Cdo.m1(we2Var);
        Boolean bool = Boolean.TRUE;
        this.f24183throws = bool;
        this.f24166if.setProperty("auto_flush", bool.toString());
        TemplateClassResolver templateClassResolver = TemplateClassResolver.UNRESTRICTED_RESOLVER;
        this.f24161extends = templateClassResolver;
        this.f24166if.setProperty("new_builtin_class_resolver", templateClassResolver.getClass().getName());
        this.f24172package = y.f24289final;
        this.f24158default = bool;
        this.f24166if.setProperty("show_error_tips", bool.toString());
        Boolean bool2 = Boolean.FALSE;
        this.f24163finally = bool2;
        this.f24166if.setProperty("api_builtin_enabled", bool2.toString());
        Boolean boolValueOf = Boolean.valueOf(ul2.m8516this(we2Var));
        this.f24173private = boolValueOf;
        this.f24166if.setProperty("log_template_exceptions", boolValueOf.toString());
        i0(f24149instanceof);
        this.f24164for = new HashMap<>();
        this.f24157continue = Collections.emptyMap();
        this.f24178strictfp = Collections.emptyMap();
        this.f24174protected = bool2;
        this.f24167implements = true;
        n();
        o();
    }

    public t(t tVar) {
        this.f24159do = tVar;
        this.f24166if = new Properties(tVar.f24166if);
        this.f24164for = new HashMap<>(0);
    }
}

package freemarker.template;

import android.support.v4.cf;
import android.support.v4.e91;
import android.support.v4.fl2;
import android.support.v4.hp0;
import android.support.v4.jc2;
import android.support.v4.k52;
import android.support.v4.m22;
import android.support.v4.m52;
import android.support.v4.mb2;
import android.support.v4.mc;
import android.support.v4.nl2;
import android.support.v4.on0;
import android.support.v4.sl2;
import android.support.v4.tl2;
import android.support.v4.ul2;
import android.support.v4.vo0;
import android.support.v4.w41;
import android.support.v4.wd1;
import android.support.v4.we2;
import com.umeng.analytics.pro.ak;
import freemarker.cache.CacheStorage;
import freemarker.cache.Cbreak;
import freemarker.cache.Celse;
import freemarker.cache.Cimport;
import freemarker.cache.Cnative;
import freemarker.cache.Cswitch;
import freemarker.cache.Cthrow;
import freemarker.cache.Cthrows;
import freemarker.cache.TemplateLoader;
import freemarker.core.ParserConfiguration;
import freemarker.core.c5;
import freemarker.core.d0;
import freemarker.core.d5;
import freemarker.core.h3;
import freemarker.core.j3;
import freemarker.core.k;
import freemarker.core.n;
import freemarker.core.q0;
import freemarker.core.t;
import freemarker.core.u4;
import freemarker.core.v4;
import freemarker.core.y1;
import freemarker.core.y4;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.template.utility.Cconst;
import freemarker.template.utility.Cfinal;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.Cthis;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: freemarker.template.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends t implements Cloneable, ParserConfiguration {
    public static final String A2 = "template_loader";
    private static final String A3 = "freemarker.core._2_4_OrLaterMarker";
    private static final String B1 = "/freemarker/version.properties";
    public static final String B2 = "template_lookup_strategy";
    private static final boolean B3;
    public static final String C1 = "default_encoding";
    private static final Object C3;
    public static final String D2 = "template_lookup_strategy";
    private static volatile Cdo D3 = null;
    public static final String E1 = "default_encoding";
    public static final String E2 = "template_name_format";
    public static final String F1 = "localized_lookup";
    public static final String G2 = "template_name_format";
    public static final String H1 = "localized_lookup";
    public static final String H2 = "template_configurations";
    public static final String I1 = "strict_syntax";
    public static final String J2 = "template_configurations";
    public static final String K1 = "strict_syntax";
    public static final String K2 = "incompatible_improvements";
    public static final String L1 = "whitespace_stripping";
    public static final String L2 = "incompatibleImprovements";
    public static final String M2 = "incompatible_improvements";
    public static final String N1 = "whitespace_stripping";

    @Deprecated
    public static final String N2 = "incompatible_improvements";
    public static final String O1 = "output_format";

    @Deprecated
    public static final String O2 = "incompatible_enhancements";
    public static final String P1 = "outputFormat";
    public static final String P2 = "fallback_on_null_loop_variable";
    public static final String Q1 = "output_format";
    public static final String R1 = "recognize_standard_file_extensions";
    public static final String R2 = "fallback_on_null_loop_variable";
    public static final String T1 = "recognize_standard_file_extensions";
    public static final String U1 = "registered_custom_output_formats";
    private static final Map<String, e91> U2;
    public static final int V2 = 0;
    public static final String W1 = "registered_custom_output_formats";
    public static final int W2 = 1;
    public static final String X1 = "auto_escaping_policy";
    public static final int X2 = 2;
    public static final int Y2 = 20;
    public static final String Z1 = "auto_escaping_policy";
    public static final int Z2 = 21;
    public static final String a2 = "cache_storage";
    public static final int a3 = 22;
    public static final int b3 = 10;
    public static final String c2 = "cache_storage";
    public static final int c3 = 11;
    public static final String d2 = "template_update_delay";
    public static final int d3 = 12;
    public static final int e3 = 20;
    public static final String f2 = "template_update_delay";
    public static final int f3 = 21;
    public static final String g2 = "auto_import";
    public static final int g3 = 22;
    public static final String h2 = "autoImport";
    public static final we2 h3;
    public static final String i2 = "auto_import";
    public static final we2 i3;
    public static final String j2 = "auto_include";
    public static final we2 j3;
    public static final String k2 = "autoInclude";
    public static final we2 k3;
    public static final String l2 = "auto_include";
    public static final we2 l3;
    public static final String m2 = "tag_syntax";
    public static final we2 m3;
    public static final we2 n3;
    public static final String o2 = "tag_syntax";
    public static final we2 o3;
    public static final String p2 = "interpolation_syntax";
    public static final we2 p3;
    public static final we2 q3;
    public static final String r2 = "interpolation_syntax";
    public static final we2 r3;
    public static final String s2 = "naming_convention";
    public static final we2 s3;
    public static final we2 t3;
    public static final String u2 = "naming_convention";

    @Deprecated
    public static final String u3;
    public static final String v2 = "tab_size";

    @Deprecated
    public static final int v3;
    private static final String w3 = "null";
    public static final String x2 = "tab_size";
    private static final String x3 = "default";
    public static final String y2 = "template_loader";
    private static final String y3 = "JVM default";
    private static final we2 z3;
    private boolean U0;
    private volatile boolean V0;
    private boolean W0;
    private int X0;
    private e91 Y0;
    private boolean Z0;
    private Boolean a1;
    private Map<String, ? extends e91> b1;
    private we2 c1;
    private int d1;
    private int e1;
    private int f1;
    private int g1;
    private boolean h1;
    private boolean i1;
    private Cimport j1;
    private boolean k1;
    private boolean l1;
    private boolean m1;
    private boolean n1;
    private boolean o1;
    private boolean p1;
    private boolean q1;
    private boolean r1;
    private boolean s1;
    private boolean t1;
    private boolean u1;
    private boolean v1;
    private HashMap w1;
    private HashMap x1;
    private String y1;
    private ConcurrentMap z1;
    private static final freemarker.log.Cif A1 = freemarker.log.Cif.m29193break("freemarker.cache");
    private static final String[] S2 = {"auto_escaping_policy", "cache_storage", "default_encoding", "fallback_on_null_loop_variable", "incompatible_improvements", "interpolation_syntax", "localized_lookup", "naming_convention", "output_format", "recognize_standard_file_extensions", "registered_custom_output_formats", "strict_syntax", "tab_size", "tag_syntax", "template_configurations", "template_loader", "template_lookup_strategy", "template_name_format", "template_update_delay", "whitespace_stripping"};
    public static final String Y1 = "autoEscapingPolicy";
    public static final String b2 = "cacheStorage";
    public static final String D1 = "defaultEncoding";
    public static final String Q2 = "fallbackOnNullLoopVariable";
    public static final String q2 = "interpolationSyntax";
    public static final String G1 = "localizedLookup";
    public static final String t2 = "namingConvention";
    public static final String S1 = "recognizeStandardFileExtensions";
    public static final String V1 = "registeredCustomOutputFormats";
    public static final String J1 = "strictSyntax";
    public static final String w2 = "tabSize";
    public static final String n2 = "tagSyntax";
    public static final String I2 = "templateConfigurations";
    public static final String z2 = "templateLoader";
    public static final String C2 = "templateLookupStrategy";
    public static final String F2 = "templateNameFormat";
    public static final String e2 = "templateUpdateDelay";
    public static final String M1 = "whitespaceStripping";
    private static final String[] T2 = {Y1, b2, D1, Q2, "incompatibleImprovements", q2, G1, t2, "outputFormat", S1, V1, J1, w2, n2, I2, z2, C2, F2, e2, M1};

    /* renamed from: freemarker.template.do$for, reason: invalid class name */
    public static class Cfor extends Celse {
    }

    /* renamed from: freemarker.template.do$if, reason: invalid class name */
    public static class Cif extends Cthrow {
        private Cif() {
        }
    }

    static {
        Date date;
        HashMap map = new HashMap();
        U2 = map;
        mb2 mb2Var = mb2.f3872do;
        map.put(mb2Var.mo889if(), mb2Var);
        q0 q0Var = q0.f24076do;
        map.put(q0Var.mo889if(), q0Var);
        u4 u4Var = u4.f24242if;
        map.put(u4Var.mo889if(), u4Var);
        v4 v4Var = v4.f24252do;
        map.put(v4Var.mo889if(), v4Var);
        j3 j3Var = j3.f23919do;
        map.put(j3Var.mo889if(), j3Var);
        wd1 wd1Var = wd1.f7501do;
        map.put(wd1Var.mo889if(), wd1Var);
        cf cfVar = cf.f749do;
        map.put(cfVar.mo889if(), cfVar);
        hp0 hp0Var = hp0.f2446do;
        map.put(hp0Var.mo889if(), hp0Var);
        vo0 vo0Var = vo0.f7301do;
        map.put(vo0Var.mo889if(), vo0Var);
        boolean z = false;
        we2 we2Var = new we2(2, 3, 0);
        h3 = we2Var;
        i3 = new we2(2, 3, 19);
        j3 = new we2(2, 3, 20);
        k3 = new we2(2, 3, 21);
        l3 = new we2(2, 3, 22);
        m3 = new we2(2, 3, 23);
        n3 = new we2(2, 3, 24);
        o3 = new we2(2, 3, 25);
        p3 = new we2(2, 3, 26);
        q3 = new we2(2, 3, 27);
        r3 = new we2(2, 3, 28);
        s3 = new we2(2, 3, 29);
        t3 = we2Var;
        u3 = we2Var.toString();
        v3 = we2Var.intValue();
        try {
            Properties propertiesM29284throw = freemarker.template.utility.Cif.m29284throw(Cdo.class, B1);
            String strH1 = H1(propertiesM29284throw, k.f23925continue);
            String strH12 = H1(propertiesM29284throw, "buildTimestamp");
            if (strH12.endsWith("Z")) {
                strH12 = strH12.substring(0, strH12.length() - 1) + "+0000";
            }
            try {
                date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).parse(strH12);
            } catch (ParseException unused) {
                date = null;
            }
            z3 = new we2(strH1, Boolean.valueOf(H1(propertiesM29284throw, "isGAECompliant")), date);
            try {
                Class.forName(A3);
            } catch (LinkageError unused2) {
            } catch (Throwable unused3) {
            }
            z = true;
            B3 = z;
            C3 = new Object();
        } catch (IOException e) {
            throw new RuntimeException("Failed to load and parse /freemarker/version.properties", e);
        }
    }

    @Deprecated
    public Cdo() {
        this(t3);
    }

    private static String A1() {
        return Cconst.m29258for("file.encoding", "utf-8");
    }

    private y1 C1(String str) throws jc2 {
        e91 e91VarD1 = D1(str);
        if (e91VarD1 instanceof y1) {
            return (y1) e91VarD1;
        }
        throw new IllegalArgumentException("The \"" + str + "\" output format can't be used in ...{...} expression, because it's not a markup format.");
    }

    private String C2(String str) {
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return str.substring(0, length);
    }

    private static String H1(Properties properties, String str) {
        String property = properties.getProperty(str);
        if (property != null) {
            return property;
        }
        throw new RuntimeException("Version file is corrupt: \"" + str + "\" property is missing.");
    }

    @Deprecated
    public static void I2(Cdo cdo) {
        synchronized (C3) {
            D3 = cdo;
        }
    }

    private static void P0() {
        if (B3) {
            throw new RuntimeException("Clashing FreeMarker versions (" + z3 + " and some post-2.3.x) detected: found post-2.3.x class " + A3 + ". You probably have two different freemarker.jar-s in the classpath.");
        }
    }

    public static CacheStorage T0(we2 we2Var) {
        return U0(we2Var, null);
    }

    public static CacheStorage U0(we2 we2Var, CacheStorage cacheStorage) {
        return cacheStorage instanceof Cif ? cacheStorage : new Cif();
    }

    public static TemplateLoader V0(we2 we2Var) {
        return W0(we2Var, null);
    }

    private static TemplateLoader W0(we2 we2Var, TemplateLoader templateLoader) {
        if (we2Var.intValue() < ul2.f6937new) {
            if (templateLoader instanceof Cfor) {
                return templateLoader;
            }
            try {
                return new Cfor();
            } catch (Exception e) {
                A1.mo29188private("Couldn't create legacy default TemplateLoader which accesses the current directory. (Use new Configuration(Configuration.VERSION_2_3_21) or higher to avoid this.)", e);
            }
        }
        return null;
    }

    private void X0() {
        Cimport cimport = new Cimport(p1(), e1(), q1(), s1(), null, this);
        this.j1 = cimport;
        cimport.m27734new();
        this.j1.m27735package(Cimport.f23355break);
    }

    private void Y0(d0 d0Var, Cstatic cstatic) throws TemplateException, IOException {
        Map<String, String> mapM28246catch = d0Var.m28246catch();
        Map<String, String> mapM28246catch2 = cstatic.m28246catch();
        boolean zBooleanValue = d0Var.m28243abstract() != null ? d0Var.m28243abstract().booleanValue() : d0Var.m28249continue();
        for (Map.Entry<String, String> entry : m28246catch().entrySet()) {
            String key = entry.getKey();
            if (mapM28246catch2 == null || !mapM28246catch2.containsKey(key)) {
                if (mapM28246catch == null || !mapM28246catch.containsKey(key)) {
                    d0Var.I2(entry.getValue(), key, zBooleanValue);
                }
            }
        }
        if (mapM28246catch2 != null) {
            for (Map.Entry<String, String> entry2 : mapM28246catch2.entrySet()) {
                String key2 = entry2.getKey();
                if (mapM28246catch == null || !mapM28246catch.containsKey(key2)) {
                    d0Var.I2(entry2.getValue(), key2, zBooleanValue);
                }
            }
        }
        if (mapM28246catch != null) {
            for (Map.Entry<String, String> entry3 : mapM28246catch.entrySet()) {
                d0Var.I2(entry3.getValue(), entry3.getKey(), zBooleanValue);
            }
        }
    }

    private void Z0(d0 d0Var, Cstatic cstatic) throws TemplateException, IOException {
        List<String> listM28248const = cstatic.m28248const();
        List<String> listM28248const2 = d0Var.m28248const();
        for (String str : m28248const()) {
            if (listM28248const == null || !listM28248const.contains(str)) {
                if (listM28248const2 == null || !listM28248const2.contains(str)) {
                    d0Var.K2(Q1(str, d0Var.m28268strictfp()));
                }
            }
        }
        if (listM28248const != null) {
            for (String str2 : listM28248const) {
                if (listM28248const2 == null || !listM28248const2.contains(str2)) {
                    d0Var.K2(Q1(str2, d0Var.m28268strictfp()));
                }
            }
        }
        if (listM28248const2 != null) {
            Iterator<String> it = listM28248const2.iterator();
            while (it.hasNext()) {
                d0Var.K2(Q1(it.next(), d0Var.m28268strictfp()));
            }
        }
    }

    private String a1(String str) {
        char cCharAt;
        if (str == null || str.length() == 0 || (cCharAt = str.charAt(str.length() - 1)) == '.' || cCharAt == '!' || cCharAt == '?') {
            return str;
        }
        return str + ".";
    }

    public static we2 a2() {
        return z3;
    }

    private void a3() throws k52 {
        HashMap map = this.x1;
        if (map == null) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            this.w1.put(str, value instanceof TemplateModel ? (TemplateModel) value : m28258implements().wrap(value));
        }
    }

    @Deprecated
    public static String b2() {
        return z3.toString();
    }

    private AttemptExceptionReporter c1() {
        return d1(getIncompatibleImprovements());
    }

    public static AttemptExceptionReporter d1(we2 we2Var) {
        return AttemptExceptionReporter.LOG_ERROR_REPORTER;
    }

    private CacheStorage e1() {
        return U0(getIncompatibleImprovements(), b1());
    }

    @Deprecated
    public static Cdo f1() {
        Cdo cdo = D3;
        if (cdo == null) {
            synchronized (C3) {
                cdo = D3;
                if (cdo == null) {
                    cdo = new Cdo();
                    D3 = cdo;
                }
            }
        }
        return cdo;
    }

    private boolean f2(Cswitch cswitch) {
        return cswitch == Cswitch.f23397do;
    }

    private static String g1() {
        return A1();
    }

    public static Locale i1() {
        return Locale.getDefault();
    }

    private boolean j1() {
        return k1(getIncompatibleImprovements());
    }

    public static boolean k1(we2 we2Var) {
        return true;
    }

    private ObjectWrapper l1() {
        return m1(getIncompatibleImprovements());
    }

    public static ObjectWrapper m1(we2 we2Var) {
        return we2Var.intValue() < ul2.f6937new ? ObjectWrapper.DEFAULT_WRAPPER : new Cbreak(we2Var).m29217strictfp();
    }

    private TemplateExceptionHandler n1() {
        return o1(getIncompatibleImprovements());
    }

    public static TemplateExceptionHandler o1(we2 we2Var) {
        return TemplateExceptionHandler.DEBUG_HANDLER;
    }

    private TemplateLoader p1() {
        return W0(getIncompatibleImprovements(), W1());
    }

    private Cswitch q1() {
        return r1(getIncompatibleImprovements());
    }

    public static Cswitch r1(we2 we2Var) {
        return Cswitch.f23397do;
    }

    private Cthrows s1() {
        return t1(getIncompatibleImprovements());
    }

    private void s2() {
        this.w1.put("capture_output", new freemarker.template.utility.Cdo());
        this.w1.put("compress", Cfinal.f25188new);
        this.w1.put("html_escape", new freemarker.template.utility.Celse());
        this.w1.put("normalize_newlines", new Cthis());
        this.w1.put("xml_escape", new freemarker.template.utility.Cimport());
    }

    public static Cthrows t1(we2 we2Var) {
        return Cthrows.f23404do;
    }

    private void t2() {
        u2(this.j1.m27739while(), this.j1.m27731goto(), this.j1.m27732import(), this.j1.m27733native(), V1());
    }

    public static TimeZone u1() {
        return TimeZone.getDefault();
    }

    private void u2(TemplateLoader templateLoader, CacheStorage cacheStorage, Cswitch cswitch, Cthrows cthrows, Cnative cnative) {
        Cimport cimport = this.j1;
        Cimport cimport2 = new Cimport(templateLoader, cacheStorage, cswitch, cthrows, cnative, this);
        this.j1 = cimport2;
        cimport2.m27734new();
        this.j1.m27735package(cimport.m27738this());
        this.j1.m27736private(this.V0);
    }

    private boolean v1() {
        return w1(getIncompatibleImprovements());
    }

    private String v2(String str) {
        return str.startsWith(on0.f4694final) ? str.substring(1) : str;
    }

    public static boolean w1(we2 we2Var) {
        return false;
    }

    public void A2(String str, Locale locale, String str2) throws IOException {
        z2(str, locale, null, str2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:280:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:298:? A[RETURN, SYNTHETIC] */
    @Override // freemarker.core.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void B0(String str, String str2) throws TemplateException, h3, NumberFormatException {
        String strC2;
        try {
            if ("TemplateUpdateInterval".equalsIgnoreCase(str)) {
                str = "template_update_delay";
            } else if ("DefaultEncoding".equalsIgnoreCase(str)) {
                str = "default_encoding";
            }
            boolean z = true;
            if ("default_encoding".equals(str) || D1.equals(str)) {
                if (y3.equalsIgnoreCase(str2)) {
                    J2(A1());
                } else {
                    J2(str2);
                }
            } else if ("localized_lookup".equals(str) || G1.equals(str)) {
                Q2(Csuper.m29321package(str2));
            } else if ("strict_syntax".equals(str) || J1.equals(str)) {
                c3(Csuper.m29321package(str2));
            } else if ("whitespace_stripping".equals(str) || M1.equals(str)) {
                l3(Csuper.m29321package(str2));
            } else if ("auto_escaping_policy".equals(str) || Y1.equals(str)) {
                if ("enable_if_default".equals(str2) || "enableIfDefault".equals(str2)) {
                    E2(21);
                } else if ("enable_if_supported".equals(str2) || "enableIfSupported".equals(str2)) {
                    E2(22);
                } else {
                    if (!"disable".equals(str2)) {
                        throw p(str, str2);
                    }
                    E2(20);
                }
            } else if ("output_format".equals(str) || "outputFormat".equals(str)) {
                if (str2.equalsIgnoreCase("default")) {
                    s3();
                } else {
                    e91 e91Var = U2.get(str2);
                    if (e91Var == null) {
                        e91Var = (e91) c5.m27894catch(str2, e91.class, true, sl2.m7509if());
                    }
                    S2(e91Var);
                }
            } else if ("registered_custom_output_formats".equals(str) || V1.equals(str)) {
                List list = (List) c5.m27894catch(str2, List.class, true, sl2.m7509if());
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (!(it.next() instanceof e91)) {
                        throw new nl2(m28263package(), "Invalid value for setting ", new fl2(str), ": List items must be " + e91.class.getName() + " instances, in: ", str2);
                    }
                }
                V2(list);
            } else if ("recognize_standard_file_extensions".equals(str) || S1.equals(str)) {
                if (str2.equalsIgnoreCase("default")) {
                    t3();
                } else {
                    U2(Csuper.m29321package(str2));
                }
            } else if ("cache_storage".equals(str) || b2.equals(str)) {
                if (str2.equalsIgnoreCase("default")) {
                    n3();
                }
                if (str2.indexOf(46) == -1) {
                    int i = 0;
                    int i4 = 0;
                    for (Map.Entry entry : Csuper.l(str2, String.valueOf(Integer.MAX_VALUE)).entrySet()) {
                        String str3 = (String) entry.getKey();
                        try {
                            int i5 = Integer.parseInt((String) entry.getValue());
                            if ("soft".equalsIgnoreCase(str3)) {
                                i = i5;
                            } else {
                                if (!"strong".equalsIgnoreCase(str3)) {
                                    throw p(str, str2);
                                }
                                i4 = i5;
                            }
                        } catch (NumberFormatException unused) {
                            throw p(str, str2);
                        }
                    }
                    if (i == 0 && i4 == 0) {
                        throw p(str, str2);
                    }
                    F2(new Cbreak(i4, i));
                } else {
                    F2((CacheStorage) c5.m27894catch(str2, CacheStorage.class, false, sl2.m7509if()));
                }
            } else if ("template_update_delay".equals(str) || e2.equals(str)) {
                long j = 1000;
                if (str2.endsWith("ms")) {
                    j = 1;
                    strC2 = C2(str2.substring(0, str2.length() - 2));
                } else if (str2.endsWith(ak.aB)) {
                    strC2 = C2(str2.substring(0, str2.length() - 1));
                } else if (str2.endsWith("m")) {
                    j = org.apache.commons.lang3.time.Cdo.f28827if;
                    strC2 = C2(str2.substring(0, str2.length() - 1));
                } else if (str2.endsWith("h")) {
                    j = org.apache.commons.lang3.time.Cdo.f28825for;
                    strC2 = C2(str2.substring(0, str2.length() - 1));
                } else {
                    strC2 = str2;
                }
                k3(Integer.parseInt(strC2) * j);
            } else if ("tag_syntax".equals(str) || n2.equals(str)) {
                if ("auto_detect".equals(str2) || "autoDetect".equals(str2)) {
                    e3(0);
                } else if ("angle_bracket".equals(str2) || "angleBracket".equals(str2)) {
                    e3(1);
                } else {
                    if (!"square_bracket".equals(str2) && !"squareBracket".equals(str2)) {
                        throw p(str, str2);
                    }
                    e3(2);
                }
            } else if ("interpolation_syntax".equals(str) || q2.equals(str)) {
                if (FreemarkerServlet.k.equals(str2)) {
                    P2(20);
                } else if ("dollar".equals(str2)) {
                    P2(21);
                } else {
                    if (!"square_bracket".equals(str2) && !"squareBracket".equals(str2)) {
                        throw p(str, str2);
                    }
                    P2(22);
                }
            } else if ("naming_convention".equals(str) || t2.equals(str)) {
                if ("auto_detect".equals(str2) || "autoDetect".equals(str2)) {
                    R2(10);
                } else if (FreemarkerServlet.k.equals(str2)) {
                    R2(11);
                } else {
                    if (!"camel_case".equals(str2) && !"camelCase".equals(str2)) {
                        throw p(str, str2);
                    }
                    R2(12);
                }
            } else if ("tab_size".equals(str) || w2.equals(str)) {
                d3(Integer.parseInt(str2));
            } else if ("incompatible_improvements".equals(str) || "incompatibleImprovements".equals(str)) {
                O2(new we2(str2));
            } else if (O2.equals(str)) {
                N2(str2);
            } else if ("template_loader".equals(str) || z2.equals(str)) {
                if (str2.equalsIgnoreCase("default")) {
                    v3();
                } else {
                    g3((TemplateLoader) c5.m27894catch(str2, TemplateLoader.class, true, sl2.m7509if()));
                }
            } else if ("template_lookup_strategy".equals(str) || C2.equals(str)) {
                if (str2.equalsIgnoreCase("default")) {
                    w3();
                } else {
                    h3((Cswitch) c5.m27894catch(str2, Cswitch.class, false, sl2.m7509if()));
                }
            } else if (!"template_name_format".equals(str) && !F2.equals(str)) {
                if (!"template_configurations".equals(str) && !I2.equals(str)) {
                    if ("fallback_on_null_loop_variable".equals(str) || Q2.equals(str)) {
                        M2(Csuper.m29321package(str2));
                    }
                    if (z) {
                        return;
                    }
                    super.B0(str, str2);
                    return;
                }
                if (str2.equals(w3)) {
                    f3(null);
                } else {
                    f3((Cnative) c5.m27894catch(str2, Cnative.class, false, sl2.m7509if()));
                }
            } else if (str2.equalsIgnoreCase("default")) {
                x3();
            } else if (str2.equalsIgnoreCase("default_2_3_0")) {
                i3(Cthrows.f23404do);
            } else {
                if (!str2.equalsIgnoreCase("default_2_4_0")) {
                    throw p(str, str2);
                }
                i3(Cthrows.f23405if);
            }
            z = false;
            if (z) {
            }
        } catch (Exception e) {
            throw M0(str, str2, e);
        }
    }

    public boolean B1() {
        return this.j1.m27725class();
    }

    public void B2(String str, Locale locale, String str2, boolean z) throws IOException {
        z2(str, locale, null, str2, z);
    }

    public e91 D1(String str) throws jc2 {
        if (str.length() == 0) {
            throw new IllegalArgumentException("0-length format name");
        }
        boolean z = true;
        if (str.charAt(str.length() - 1) == '}') {
            int iIndexOf = str.indexOf(123);
            if (iIndexOf != -1) {
                return new n(str, C1(str.substring(0, iIndexOf)), C1(str.substring(iIndexOf + 1, str.length() - 1)));
            }
            throw new IllegalArgumentException("Missing opening '{' in: " + str);
        }
        e91 e91Var = this.b1.get(str);
        if (e91Var != null) {
            return e91Var;
        }
        Map<String, e91> map = U2;
        e91 e91Var2 = map.get(str);
        if (e91Var2 != null) {
            return e91Var2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unregistered output format name, ");
        sb.append(Csuper.m29330synchronized(str));
        sb.append(". The output formats registered in the Configuration are: ");
        TreeSet<String> treeSet = new TreeSet();
        treeSet.addAll(map.keySet());
        treeSet.addAll(this.b1.keySet());
        for (String str2 : treeSet) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(Csuper.m29330synchronized(str2));
        }
        throw new jc2(sb.toString());
    }

    public void D2(TemplateHashModelEx templateHashModelEx) throws k52 {
        TemplateModelIterator it = templateHashModelEx.keys().iterator();
        TemplateModelIterator it2 = templateHashModelEx.values().iterator();
        while (it.hasNext()) {
            X2(((TemplateScalarModel) it.next()).getAsString(), it2.next());
        }
    }

    @Deprecated
    public int E1() {
        return getIncompatibleImprovements().intValue();
    }

    public void E2(int i) {
        ul2.m8511public(i);
        int autoEscapingPolicy = getAutoEscapingPolicy();
        this.X0 = i;
        if (autoEscapingPolicy != i) {
            S0();
        }
    }

    public boolean F1() {
        return this.i1;
    }

    public void F2(CacheStorage cacheStorage) {
        synchronized (this) {
            if (b1() != cacheStorage) {
                u2(this.j1.m27739while(), cacheStorage, this.j1.m27732import(), this.j1.m27733native(), this.j1.m27737super());
            }
            this.n1 = true;
        }
    }

    @Override // freemarker.core.t
    public void G0(TemplateExceptionHandler templateExceptionHandler) {
        super.G0(templateExceptionHandler);
        this.p1 = true;
    }

    public Collection<? extends e91> G1() {
        return this.b1.values();
    }

    public void G2(Class cls, String str) {
        g3(new freemarker.cache.Cfor((Class<?>) cls, str));
    }

    public void H2(ClassLoader classLoader, String str) {
        g3(new freemarker.cache.Cfor(classLoader, str));
    }

    @Override // freemarker.core.t
    public void I0(TimeZone timeZone) {
        super.I0(timeZone);
        this.v1 = true;
    }

    public TemplateModel I1(String str) {
        return (TemplateModel) this.w1.get(str);
    }

    public Set J1() {
        return new HashSet(this.w1.keySet());
    }

    public void J2(String str) {
        this.y1 = str;
        this.u1 = true;
    }

    public Set K1() {
        return L1(getNamingConvention());
    }

    public void K2(File file) throws IOException {
        TemplateLoader templateLoaderW1 = W1();
        if ((templateLoaderW1 instanceof Celse) && ((Celse) templateLoaderW1).f23323do.getCanonicalPath().equals(file.getCanonicalPath())) {
            return;
        }
        g3(new Celse(file));
    }

    @Override // freemarker.core.t
    public void L0(boolean z) {
        super.L0(z);
        this.s1 = true;
    }

    public Set<String> L1(int i) {
        if (i == 10) {
            return y4.f24314if;
        }
        if (i == 11) {
            return y4.f24313for;
        }
        if (i == 12) {
            return y4.f24315new;
        }
        throw new IllegalArgumentException("Unsupported naming convention constant: " + i);
    }

    public void L2(Locale locale, String str) {
        this.z1.put(locale.toString(), str);
    }

    public Set M1() {
        return N1(getNamingConvention());
    }

    public void M2(boolean z) {
        this.h1 = z;
    }

    public Set<String> N1(int i) {
        return y4.m28375catch(i);
    }

    @Deprecated
    public void N2(String str) {
        O2(new we2(str));
    }

    public Cstatic O1(String str) throws IOException {
        return R1(str, null, null, null, true, false);
    }

    public void O2(we2 we2Var) {
        ul2.m8507if(we2Var);
        if (this.c1.equals(we2Var)) {
            return;
        }
        this.c1 = we2Var;
        if (!this.k1) {
            this.k1 = true;
            v3();
        }
        if (!this.l1) {
            this.l1 = true;
            w3();
        }
        if (!this.m1) {
            this.m1 = true;
            x3();
        }
        if (!this.n1) {
            this.n1 = true;
            n3();
        }
        if (!this.p1) {
            this.p1 = true;
            u3();
        }
        if (!this.q1) {
            this.q1 = true;
            m3();
        }
        if (!this.r1) {
            this.r1 = true;
            q3();
        }
        if (!this.s1) {
            this.s1 = true;
            z3();
        }
        if (!this.o1) {
            this.o1 = true;
            r3();
        }
        t2();
    }

    public Cstatic P1(String str, String str2) throws IOException {
        return R1(str, null, null, str2, true, false);
    }

    public void P2(int i) {
        ul2.m8513static(i);
        this.e1 = i;
    }

    public void Q0() {
        this.z1.clear();
    }

    public Cstatic Q1(String str, Locale locale) throws IOException {
        return R1(str, locale, null, null, true, false);
    }

    public void Q2(boolean z) {
        this.V0 = z;
        this.j1.m27736private(z);
    }

    public void R0() {
        this.w1.clear();
        s2();
    }

    public Cstatic R1(String str, Locale locale, Object obj, String str2, boolean z, boolean z4) throws IOException {
        String str3;
        String str4;
        String str5;
        String str6;
        String string;
        if (locale == null) {
            locale = m28268strictfp();
        }
        Locale locale2 = locale;
        if (str2 == null) {
            str2 = x1(locale2);
        }
        Cimport.Cfor cforM27726const = this.j1.m27726const(str, locale2, obj, str2, z);
        Cstatic cstaticM27741for = cforM27726const.m27741for();
        if (cstaticM27741for != null) {
            return cstaticM27741for;
        }
        if (z4) {
            return null;
        }
        TemplateLoader templateLoaderW1 = W1();
        if (templateLoaderW1 == null) {
            string = "Don't know where to load template " + Csuper.m29330synchronized(str) + " from because the \"template_loader\" FreeMarker setting wasn't set (Configuration.setTemplateLoader), so it's null.";
        } else {
            String strM27740do = cforM27726const.m27740do();
            String strM27742if = cforM27726const.m27742if();
            Cswitch cswitchX1 = X1();
            StringBuilder sb = new StringBuilder();
            sb.append("Template not found for name ");
            sb.append(Csuper.m29330synchronized(str));
            String str7 = "";
            if (strM27740do == null || str == null || v2(str).equals(strM27740do)) {
                str3 = "";
            } else {
                str3 = " (normalized: " + Csuper.m29330synchronized(strM27740do) + ")";
            }
            sb.append(str3);
            if (obj != null) {
                str4 = " and custom lookup condition " + Csuper.m29317instanceof(obj);
            } else {
                str4 = "";
            }
            sb.append(str4);
            sb.append(".");
            if (strM27742if != null) {
                str5 = "\nReason given: " + a1(strM27742if);
            } else {
                str5 = "";
            }
            sb.append(str5);
            sb.append("\nThe name was interpreted by this TemplateLoader: ");
            sb.append(Csuper.A(templateLoaderW1));
            sb.append(".");
            if (f2(cswitchX1)) {
                str6 = "";
            } else {
                str6 = "\n(Before that, the name was possibly changed by this lookup strategy: " + Csuper.A(cswitchX1) + ".)";
            }
            sb.append(str6);
            sb.append(!this.k1 ? "\nWarning: The \"template_loader\" FreeMarker setting wasn't set (Configuration.setTemplateLoader), and using the default value is most certainly not intended and dangerous, and can be the cause of this error." : "");
            if (strM27742if == null && str.indexOf(92) != -1) {
                str7 = "\nWarning: The name contains backslash (\"\\\") instead of slash (\"/\"); template names should use slash only.";
            }
            sb.append(str7);
            string = sb.toString();
        }
        String strM27740do2 = cforM27726const.m27740do();
        if (strM27740do2 != null) {
            str = strM27740do2;
        }
        throw new m52(str, obj, string);
    }

    public void R2(int i) {
        ul2.m8512return(i);
        this.f1 = i;
    }

    public void S0() {
        this.j1.m27734new();
    }

    public Cstatic S1(String str, Locale locale, String str2) throws IOException {
        return R1(str, locale, null, str2, true, false);
    }

    public void S2(e91 e91Var) {
        if (e91Var == null) {
            throw new w41("outputFormat", "You may meant: " + mb2.class.getSimpleName() + ".INSTANCE");
        }
        e91 outputFormat = getOutputFormat();
        this.Y0 = e91Var;
        this.Z0 = true;
        if (outputFormat != e91Var) {
            S0();
        }
    }

    public Cstatic T1(String str, Locale locale, String str2, boolean z) throws IOException {
        return R1(str, locale, null, str2, z, false);
    }

    public void T2(boolean z) {
        this.i1 = z;
    }

    public Cstatic U1(String str, Locale locale, String str2, boolean z, boolean z4) throws IOException {
        return R1(str, locale, null, str2, z, z4);
    }

    public void U2(boolean z) {
        boolean recognizeStandardFileExtensions = getRecognizeStandardFileExtensions();
        this.a1 = Boolean.valueOf(z);
        if (recognizeStandardFileExtensions != z) {
            S0();
        }
    }

    public Cnative V1() {
        Cimport cimport = this.j1;
        if (cimport == null) {
            return null;
        }
        return cimport.m27737super();
    }

    public void V2(Collection<? extends e91> collection) {
        w41.check(collection);
        LinkedHashMap linkedHashMap = new LinkedHashMap((collection.size() * 4) / 3, 1.0f);
        for (e91 e91Var : collection) {
            String strMo889if = e91Var.mo889if();
            if (strMo889if.equals(mb2.f3872do.mo889if())) {
                throw new IllegalArgumentException("The \"" + strMo889if + "\" output format can't be redefined");
            }
            if (strMo889if.equals(wd1.f7501do.mo889if())) {
                throw new IllegalArgumentException("The \"" + strMo889if + "\" output format can't be redefined");
            }
            if (strMo889if.length() == 0) {
                throw new IllegalArgumentException("The output format name can't be 0 long");
            }
            if (!Character.isLetterOrDigit(strMo889if.charAt(0))) {
                throw new IllegalArgumentException("The output format name must start with letter or digit: " + strMo889if);
            }
            if (strMo889if.indexOf(43) != -1) {
                throw new IllegalArgumentException("The output format name can't contain \"+\" character: " + strMo889if);
            }
            if (strMo889if.indexOf(123) != -1) {
                throw new IllegalArgumentException("The output format name can't contain \"{\" character: " + strMo889if);
            }
            if (strMo889if.indexOf(125) != -1) {
                throw new IllegalArgumentException("The output format name can't contain \"}\" character: " + strMo889if);
            }
            e91 e91Var2 = (e91) linkedHashMap.put(e91Var.mo889if(), e91Var);
            if (e91Var2 != null) {
                if (e91Var2 == e91Var) {
                    throw new IllegalArgumentException("Duplicate output format in the collection: " + e91Var);
                }
                throw new IllegalArgumentException("Clashing output format names between " + e91Var2 + " and " + e91Var + ".");
            }
        }
        this.b1 = Collections.unmodifiableMap(linkedHashMap);
        S0();
    }

    public TemplateLoader W1() {
        Cimport cimport = this.j1;
        if (cimport == null) {
            return null;
        }
        return cimport.m27739while();
    }

    public void W2(Object obj, String str) {
        Object[] objArr;
        Class<?>[] clsArr;
        try {
            Class clsM29285try = freemarker.template.utility.Cif.m29285try("freemarker.cache.WebappTemplateLoader");
            Class<?> clsM29285try2 = freemarker.template.utility.Cif.m29285try("javax.servlet.ServletContext");
            if (str == null) {
                clsArr = new Class[]{clsM29285try2};
                objArr = new Object[]{obj};
            } else {
                Class<?>[] clsArr2 = {clsM29285try2, String.class};
                objArr = new Object[]{obj, str};
                clsArr = clsArr2;
            }
            g3((TemplateLoader) clsM29285try.getConstructor(clsArr).newInstance(objArr));
        } catch (Exception e) {
            throw new mc(e);
        }
    }

    public Cswitch X1() {
        Cimport cimport = this.j1;
        if (cimport == null) {
            return null;
        }
        return cimport.m27732import();
    }

    public void X2(String str, TemplateModel templateModel) {
        HashMap map;
        if (this.w1.put(str, templateModel) == null || (map = this.x1) == null) {
            return;
        }
        map.remove(str);
    }

    public Cthrows Y1() {
        Cimport cimport = this.j1;
        if (cimport == null) {
            return null;
        }
        return cimport.m27733native();
    }

    public void Y2(String str, Object obj) throws k52 {
        X2(str, m28258implements().wrap(obj));
    }

    public long Z1() {
        return this.j1.m27738this();
    }

    public void Z2(Map<String, ?> map) throws k52 {
        this.x1 = new HashMap(map);
        this.w1.clear();
        a3();
    }

    public CacheStorage b1() {
        synchronized (this) {
            Cimport cimport = this.j1;
            if (cimport == null) {
                return null;
            }
            return cimport.m27731goto();
        }
    }

    public void b3(Map map) throws k52 {
        Z2(map);
    }

    @Override // freemarker.core.t
    public Set<String> c(boolean z) {
        return new d5(super.c(z), new tl2(z ? T2 : S2));
    }

    public boolean c2() {
        return this.q1;
    }

    @Deprecated
    public void c3(boolean z) {
        this.U0 = z;
    }

    @Override // freemarker.core.t
    /* renamed from: case */
    public void mo28245case(d0 d0Var) throws TemplateException, IOException {
        Cstatic cstaticV1 = d0Var.V1();
        Y0(d0Var, cstaticV1);
        Z0(d0Var, cstaticV1);
    }

    @Override // freemarker.core.t
    public Object clone() {
        try {
            Cdo cdo = (Cdo) super.clone();
            cdo.w1 = new HashMap(this.w1);
            cdo.z1 = new ConcurrentHashMap(this.z1);
            cdo.u2(this.j1.m27739while(), this.j1.m27731goto(), this.j1.m27732import(), this.j1.m27733native(), this.j1.m27737super());
            return cdo;
        } catch (CloneNotSupportedException e) {
            throw new mc("Cloning failed", e);
        }
    }

    public boolean d2() {
        return this.n1;
    }

    public void d3(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("\"tabSize\" must be at least 1, but was " + i);
        }
        if (i <= 256) {
            this.g1 = i;
            return;
        }
        throw new IllegalArgumentException("\"tabSize\" can't be more than 256, but was " + i);
    }

    @Override // freemarker.core.t
    public void e0(AttemptExceptionReporter attemptExceptionReporter) {
        super.e0(attemptExceptionReporter);
        this.q1 = true;
    }

    public boolean e2() {
        return this.u1;
    }

    public void e3(int i) {
        ul2.m8515switch(i);
        this.d1 = i;
    }

    public void f3(Cnative cnative) {
        if (this.j1.m27737super() != cnative) {
            if (cnative != null) {
                cnative.m27746for(this);
            }
            u2(this.j1.m27739while(), this.j1.m27731goto(), this.j1.m27732import(), this.j1.m27733native(), cnative);
        }
    }

    public boolean g2() {
        return this.t1;
    }

    public void g3(TemplateLoader templateLoader) {
        synchronized (this) {
            if (this.j1.m27739while() != templateLoader) {
                u2(templateLoader, this.j1.m27731goto(), this.j1.m27732import(), this.j1.m27733native(), this.j1.m27737super());
            }
            this.k1 = true;
        }
    }

    @Override // freemarker.core.ParserConfiguration
    public int getAutoEscapingPolicy() {
        return this.X0;
    }

    @Override // freemarker.core.ParserConfiguration
    public we2 getIncompatibleImprovements() {
        return this.c1;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getInterpolationSyntax() {
        return this.e1;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getNamingConvention() {
        return this.f1;
    }

    @Override // freemarker.core.ParserConfiguration
    public e91 getOutputFormat() {
        return this.Y0;
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getRecognizeStandardFileExtensions() {
        Boolean bool = this.a1;
        return bool == null ? this.c1.intValue() >= ul2.f6933else : bool.booleanValue();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getStrictSyntaxMode() {
        return this.U0;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTabSize() {
        return this.g1;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTagSyntax() {
        return this.d1;
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getWhitespaceStripping() {
        return this.W0;
    }

    public String h1() {
        return this.y1;
    }

    public boolean h2() {
        return this.r1;
    }

    public void h3(Cswitch cswitch) {
        if (this.j1.m27732import() != cswitch) {
            u2(this.j1.m27739while(), this.j1.m27731goto(), cswitch, this.j1.m27733native(), this.j1.m27737super());
        }
        this.l1 = true;
    }

    public boolean i2() {
        return this.o1;
    }

    public void i3(Cthrows cthrows) {
        if (this.j1.m27733native() != cthrows) {
            u2(this.j1.m27739while(), this.j1.m27731goto(), this.j1.m27732import(), cthrows, this.j1.m27737super());
        }
        this.m1 = true;
    }

    public boolean j2() {
        return this.Z0;
    }

    @Deprecated
    public void j3(int i) {
        this.j1.m27735package(i * 1000);
    }

    public boolean k2() {
        return this.a1 != null;
    }

    public void k3(long j) {
        this.j1.m27735package(j);
    }

    public boolean l2() {
        return this.p1;
    }

    public void l3(boolean z) {
        this.W0 = z;
    }

    public boolean m2() {
        return this.k1;
    }

    public void m3() {
        if (this.q1) {
            e0(c1());
            this.q1 = false;
        }
    }

    public boolean n2() {
        return this.l1;
    }

    public void n3() {
        if (this.n1) {
            F2(e1());
            this.n1 = false;
        }
    }

    public boolean o2() {
        return this.m1;
    }

    public void o3() {
        if (this.u1) {
            J2(g1());
            this.u1 = false;
        }
    }

    public boolean p2() {
        return this.v1;
    }

    public void p3() {
        if (this.t1) {
            t0(i1());
            this.t1 = false;
        }
    }

    public boolean q2() {
        return this.s1;
    }

    public void q3() {
        if (this.r1) {
            u0(j1());
            this.r1 = false;
        }
    }

    public void r2() {
        this.z1.clear();
        this.z1.put("ar", "ISO-8859-6");
        this.z1.put("be", "ISO-8859-5");
        this.z1.put("bg", "ISO-8859-5");
        this.z1.put("ca", "ISO-8859-1");
        this.z1.put("cs", "ISO-8859-2");
        this.z1.put("da", "ISO-8859-1");
        this.z1.put("de", "ISO-8859-1");
        this.z1.put("el", "ISO-8859-7");
        this.z1.put("en", "ISO-8859-1");
        this.z1.put("es", "ISO-8859-1");
        this.z1.put("et", "ISO-8859-1");
        this.z1.put("fi", "ISO-8859-1");
        this.z1.put("fr", "ISO-8859-1");
        this.z1.put("hr", "ISO-8859-2");
        this.z1.put("hu", "ISO-8859-2");
        this.z1.put(ak.ae, "ISO-8859-1");
        this.z1.put("it", "ISO-8859-1");
        this.z1.put("iw", "ISO-8859-8");
        this.z1.put("ja", "Shift_JIS");
        this.z1.put("ko", "EUC-KR");
        this.z1.put("lt", "ISO-8859-2");
        this.z1.put("lv", "ISO-8859-2");
        this.z1.put("mk", "ISO-8859-5");
        this.z1.put("nl", "ISO-8859-1");
        this.z1.put("no", "ISO-8859-1");
        this.z1.put(ak.az, "ISO-8859-2");
        this.z1.put("pt", "ISO-8859-1");
        this.z1.put("ro", "ISO-8859-2");
        this.z1.put("ru", "ISO-8859-5");
        this.z1.put("sh", "ISO-8859-5");
        this.z1.put("sk", "ISO-8859-2");
        this.z1.put("sl", "ISO-8859-2");
        this.z1.put("sq", "ISO-8859-2");
        this.z1.put("sr", "ISO-8859-5");
        this.z1.put("sv", "ISO-8859-1");
        this.z1.put("tr", "ISO-8859-9");
        this.z1.put("uk", "ISO-8859-5");
        this.z1.put("zh", m22.f3824for);
        this.z1.put("zh_TW", "Big5");
    }

    public void r3() {
        if (this.o1) {
            x0(l1());
            this.o1 = false;
        }
    }

    public void s3() {
        this.Y0 = mb2.f3872do;
        this.Z0 = false;
    }

    @Override // freemarker.core.t
    public void t0(Locale locale) {
        super.t0(locale);
        this.t1 = true;
    }

    public void t3() {
        if (this.a1 != null) {
            this.a1 = null;
        }
    }

    @Override // freemarker.core.t
    /* renamed from: throw */
    public String mo28273throw(String str) {
        return ("encoding".equals(str) || "charset".equals(str) || "default_charset".equals(str)) ? "default_encoding" : "defaultCharset".equals(str) ? D1 : super.mo28273throw(str);
    }

    @Override // freemarker.core.t
    public void u0(boolean z) {
        super.u0(z);
        this.r1 = true;
    }

    public void u3() {
        if (this.p1) {
            G0(n1());
            this.p1 = false;
        }
    }

    public void v3() {
        if (this.k1) {
            g3(p1());
            this.k1 = false;
        }
    }

    public void w2(String str) throws IOException {
        Locale localeM28268strictfp = m28268strictfp();
        z2(str, localeM28268strictfp, null, x1(localeM28268strictfp), true);
    }

    public void w3() {
        if (this.l1) {
            h3(q1());
            this.l1 = false;
        }
    }

    @Override // freemarker.core.t
    public void x0(ObjectWrapper objectWrapper) {
        ObjectWrapper objectWrapperM28258implements = m28258implements();
        super.x0(objectWrapper);
        this.o1 = true;
        if (objectWrapper != objectWrapperM28258implements) {
            try {
                a3();
            } catch (k52 e) {
                throw new RuntimeException("Failed to re-wrap earliearly set shared variables with the newly set object wrapper", e);
            }
        }
    }

    public String x1(Locale locale) {
        if (this.z1.isEmpty()) {
            return this.y1;
        }
        w41.check("locale", locale);
        String str = (String) this.z1.get(locale.toString());
        if (str == null) {
            if (locale.getVariant().length() > 0) {
                String str2 = (String) this.z1.get(new Locale(locale.getLanguage(), locale.getCountry()).toString());
                if (str2 != null) {
                    this.z1.put(locale.toString(), str2);
                }
            }
            str = (String) this.z1.get(locale.getLanguage());
            if (str != null) {
                this.z1.put(locale.toString(), str);
            }
        }
        return str != null ? str : this.y1;
    }

    public void x2(String str, String str2) throws IOException {
        z2(str, m28268strictfp(), null, str2, true);
    }

    public void x3() {
        if (this.m1) {
            i3(s1());
            this.m1 = false;
        }
    }

    public boolean y1() {
        return this.h1;
    }

    public void y2(String str, Locale locale) throws IOException {
        z2(str, locale, null, x1(locale), true);
    }

    public void y3() {
        if (this.v1) {
            I0(u1());
            this.v1 = false;
        }
    }

    @Deprecated
    public String z1() {
        return this.c1.toString();
    }

    public void z2(String str, Locale locale, Object obj, String str2, boolean z) throws IOException {
        this.j1.m27727default(str, locale, obj, str2, z);
    }

    public void z3() {
        if (this.s1) {
            L0(v1());
            this.s1 = false;
        }
    }

    public Cdo(we2 we2Var) {
        super(we2Var);
        this.U0 = true;
        this.V0 = true;
        this.W0 = true;
        this.X0 = 21;
        this.Y0 = mb2.f3872do;
        this.b1 = Collections.emptyMap();
        this.d1 = 1;
        this.e1 = 20;
        this.f1 = 10;
        this.g1 = 8;
        this.h1 = true;
        this.w1 = new HashMap();
        this.x1 = null;
        this.y1 = g1();
        this.z1 = new ConcurrentHashMap();
        P0();
        w41.check("incompatibleImprovements", we2Var);
        this.c1 = we2Var;
        X0();
        s2();
    }
}

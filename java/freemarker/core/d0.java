package freemarker.core;

import android.support.v4.fl2;
import android.support.v4.fx0;
import android.support.v4.jl2;
import android.support.v4.k52;
import android.support.v4.kb2;
import android.support.v4.lb2;
import android.support.v4.nl2;
import android.support.v4.ob2;
import android.support.v4.on0;
import android.support.v4.p52;
import android.support.v4.q12;
import android.support.v4.ul2;
import android.support.v4.vl2;
import android.support.v4.xb2;
import freemarker.cache.Cprivate;
import freemarker.core.Csuper;
import freemarker.core.d1;
import freemarker.core.p3;
import freemarker.core.x1;
import freemarker.core.x1.Cdo;
import freemarker.template.Cnative;
import freemarker.template.Creturn;
import freemarker.template.Cstatic;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import freemarker.template.TransformControl;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.DateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.Collator;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class d0 extends t {
    private static final ThreadLocal D1 = new ThreadLocal();
    private static final freemarker.log.Cif E1 = freemarker.log.Cif.m29193break("freemarker.runtime");
    private static final freemarker.log.Cif F1 = freemarker.log.Cif.m29193break("freemarker.runtime.attempt");
    private static final DecimalFormat G1;
    private static final int H1 = 4;
    private static final int I1 = 8;
    private static final int J1 = 16;
    private static final TemplateModel[] K1;
    private static final int L1 = 10;
    private static final Writer M1;
    private boolean A1;
    private boolean B1;
    private IdentityHashMap<Object, Object> C1;
    private final freemarker.template.Cdo U0;
    private final boolean V0;
    private final TemplateHashModel W0;
    private b4[] X0;
    private int Y0;
    private final ArrayList Z0;
    private f4 a1;
    private Map<String, f4> b1;
    private z3[] c1;
    private HashMap<String, z3>[] d1;
    private Boolean e1;
    private NumberFormat f1;
    private DateUtil.DateToISO8601CalendarFactory g1;
    private Collator h1;
    private Writer i1;
    private x1.Cdo j1;
    private v1 k1;
    private final Cthis l1;
    private Cthis m1;
    private Cthis n1;
    private HashMap<String, Cthis> o1;
    private t p1;
    private boolean q1;
    private Throwable r1;
    private TemplateModel s1;
    private HashMap t1;
    private TemplateNodeModel u1;
    private TemplateSequenceModel v1;
    private int w1;
    private String x1;
    private String y1;
    private String z1;

    /* renamed from: freemarker.core.d0$break, reason: invalid class name */
    public final class Cbreak implements TemplateDirectiveBody {

        /* renamed from: do, reason: not valid java name */
        private final b4[] f23574do;

        public /* synthetic */ Cbreak(d0 d0Var, b4[] b4VarArr, Cdo cdo) {
            this(b4VarArr);
        }

        /* renamed from: do, reason: not valid java name */
        public b4[] m27940do() {
            return this.f23574do;
        }

        @Override // freemarker.template.TemplateDirectiveBody
        public void render(Writer writer) throws TemplateException, IOException {
            Writer writer2 = d0.this.i1;
            d0.this.i1 = writer;
            try {
                d0.this.A3(this.f23574do);
            } finally {
                d0.this.i1 = writer2;
            }
        }

        private Cbreak(b4[] b4VarArr) {
            this.f23574do = b4VarArr;
        }
    }

    /* renamed from: freemarker.core.d0$case, reason: invalid class name */
    public enum Ccase {
        UNINITIALIZED,
        INITIALIZING,
        INITIALIZED,
        FAILED
    }

    /* renamed from: freemarker.core.d0$do, reason: invalid class name */
    public class Cdo implements LocalContext {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f23577do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ TemplateModel[] f23579if;

        public Cdo(List list, TemplateModel[] templateModelArr) {
            this.f23577do = list;
            this.f23579if = templateModelArr;
        }

        @Override // freemarker.core.LocalContext
        public TemplateModel getLocalVariable(String str) {
            int iIndexOf = this.f23577do.indexOf(str);
            if (iIndexOf != -1) {
                return this.f23579if[iIndexOf];
            }
            return null;
        }

        @Override // freemarker.core.LocalContext
        public Collection getLocalVariableNames() {
            return this.f23577do;
        }
    }

    /* renamed from: freemarker.core.d0$else, reason: invalid class name */
    public class Celse extends Cthis {
        private final Object customLookupCondition;
        private final String encoding;
        private final Locale locale;
        private Ccase status;
        private final String templateName;

        public /* synthetic */ Celse(d0 d0Var, String str, Cdo cdo) {
            this(str);
        }

        /* renamed from: do, reason: not valid java name */
        private void m27941do() {
            try {
                m27943if();
            } catch (k52 e) {
                throw new RuntimeException(e.getMessage(), e.getCause());
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m27942for() throws TemplateException, IOException {
            setTemplate(d0.this.U0.R1(this.templateName, this.locale, this.customLookupCondition, this.encoding, true, false));
            Locale localeM28268strictfp = d0.this.m28268strictfp();
            try {
                d0.this.t0(this.locale);
                d0.this.M2(this, getTemplate());
            } finally {
                d0.this.t0(localeM28268strictfp);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public void m27943if() throws k52 {
            Ccase ccase;
            Ccase ccase2 = this.status;
            Ccase ccase3 = Ccase.INITIALIZED;
            if (ccase2 == ccase3 || ccase2 == (ccase = Ccase.INITIALIZING)) {
                return;
            }
            if (ccase2 == Ccase.FAILED) {
                throw new k52("Lazy initialization of the imported namespace for " + Csuper.m29330synchronized(this.templateName) + " has already failed earlier; won't retry it.");
            }
            try {
                try {
                    this.status = ccase;
                    m27942for();
                    this.status = ccase3;
                } catch (Exception e) {
                    throw new k52("Lazy initialization of the imported namespace for " + Csuper.m29330synchronized(this.templateName) + " has failed; see cause exception", e);
                }
            } catch (Throwable th) {
                if (this.status != Ccase.INITIALIZED) {
                    this.status = Ccase.FAILED;
                }
                throw th;
            }
        }

        @Override // freemarker.template.Cnative
        public boolean containsKey(String str) {
            m27941do();
            return super.containsKey(str);
        }

        @Override // freemarker.template.Cnative
        public Map copyMap(Map map) {
            m27941do();
            return super.copyMap(map);
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            m27943if();
            return super.get(str);
        }

        @Override // freemarker.core.d0.Cthis
        public Cstatic getTemplate() {
            m27941do();
            return super.getTemplate();
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            m27941do();
            return super.isEmpty();
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx2
        public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() {
            m27941do();
            return super.keyValuePairIterator();
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() {
            m27941do();
            return super.keys();
        }

        @Override // freemarker.template.Cnative
        public void put(String str, Object obj) {
            m27941do();
            super.put(str, obj);
        }

        @Override // freemarker.template.Cnative
        public void putAll(Map map) {
            m27941do();
            super.putAll(map);
        }

        @Override // freemarker.template.Cnative
        public void remove(String str) {
            m27941do();
            super.remove(str);
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public int size() {
            m27941do();
            return super.size();
        }

        @Override // freemarker.template.Cnative
        public Map toMap() throws k52 {
            m27943if();
            return super.toMap();
        }

        @Override // freemarker.template.Cnative
        public String toString() {
            m27941do();
            return super.toString();
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() {
            m27941do();
            return super.values();
        }

        private Celse(String str) {
            super(null);
            this.status = Ccase.UNINITIALIZED;
            this.templateName = str;
            this.locale = d0.this.m28268strictfp();
            this.encoding = d0.this.N1();
            this.customLookupCondition = d0.this.M1();
        }

        @Override // freemarker.template.Cnative
        public void put(String str, boolean z) {
            m27941do();
            super.put(str, z);
        }
    }

    /* renamed from: freemarker.core.d0$for, reason: invalid class name */
    public class Cfor implements TemplateHashModel {
        public Cfor() {
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            TemplateModel templateModel = d0.this.W0.get(str);
            return templateModel != null ? templateModel : d0.this.U0.I1(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return false;
        }
    }

    /* renamed from: freemarker.core.d0$goto, reason: invalid class name */
    public static class Cgoto implements LocalContext {

        /* renamed from: do, reason: not valid java name */
        private final String f23581do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateModel f23582if;

        public Cgoto(String str, TemplateModel templateModel) {
            this.f23581do = str;
            this.f23582if = templateModel;
        }

        @Override // freemarker.core.LocalContext
        public TemplateModel getLocalVariable(String str) throws k52 {
            if (str.equals(this.f23581do)) {
                return this.f23582if;
            }
            return null;
        }

        @Override // freemarker.core.LocalContext
        public Collection getLocalVariableNames() throws k52 {
            return Collections.singleton(this.f23581do);
        }
    }

    /* renamed from: freemarker.core.d0$if, reason: invalid class name */
    public class Cif implements TemplateHashModelEx {
        public Cif() {
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            TemplateModel templateModel = d0.this.W0.get(str);
            return templateModel != null ? templateModel : d0.this.U0.I1(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() throws k52 {
            return false;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() throws k52 {
            return ((TemplateHashModelEx) d0.this.W0).keys();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() throws k52 {
            return ((TemplateHashModelEx) d0.this.W0).size();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() throws k52 {
            return ((TemplateHashModelEx) d0.this.W0).values();
        }
    }

    /* renamed from: freemarker.core.d0$new, reason: invalid class name */
    public class Cnew implements TemplateHashModel {
        public Cnew() {
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            TemplateModel templateModel = d0.this.n1.get(str);
            if (templateModel == null) {
                templateModel = d0.this.W0.get(str);
            }
            return templateModel == null ? d0.this.U0.I1(str) : templateModel;
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return false;
        }
    }

    /* renamed from: freemarker.core.d0$try, reason: invalid class name */
    public static class Ctry extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            if (i2 > 0) {
                throw new IOException("This transform does not allow nested content.");
            }
        }
    }

    static {
        DecimalFormat decimalFormat = new DecimalFormat("0.################", new DecimalFormatSymbols(Locale.US));
        G1 = decimalFormat;
        decimalFormat.setGroupingUsed(false);
        decimalFormat.setDecimalSeparatorAlwaysShown(false);
        K1 = new TemplateModel[0];
        M1 = new Ctry();
    }

    public d0(Cstatic cstatic, TemplateHashModel templateHashModel, Writer writer) {
        super(cstatic);
        this.X0 = new b4[16];
        this.Y0 = 0;
        this.Z0 = new ArrayList();
        this.t1 = new HashMap();
        freemarker.template.Cdo cdoB1 = cstatic.b1();
        this.U0 = cdoB1;
        this.V0 = cdoB1.getIncompatibleImprovements().intValue() >= ul2.f6929catch;
        this.n1 = new Cthis(null);
        Cthis cthis = new Cthis(cstatic);
        this.l1 = cthis;
        this.m1 = cthis;
        this.i1 = writer;
        this.W0 = templateHashModel;
        J2(cstatic);
    }

    private f4 A2(String str, boolean z) throws p52 {
        Map<String, f4> map = this.b1;
        if (map != null) {
            f4 f4Var = map.get(str);
            if (f4Var != null) {
                return f4Var;
            }
        } else if (z) {
            this.b1 = new HashMap();
        }
        f4 f4VarB2 = B2(str, m28268strictfp());
        if (z) {
            this.b1.put(str, f4VarB2);
        }
        return f4VarB2;
    }

    private f4 B2(String str, Locale locale) throws p52 {
        int length = str.length();
        if (length <= 1 || str.charAt(0) != '@' || ((!U2() && !m()) || !Character.isLetter(str.charAt(1)))) {
            return h1.f23812do.mo28039do(str, locale, this);
        }
        int i = 1;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ' ' || cCharAt == '_') {
                break;
            }
            i++;
        }
        String strSubstring = str.substring(1, i);
        String strSubstring2 = i < length ? str.substring(i + 1) : "";
        g4 g4VarM28270switch = m28270switch(strSubstring);
        if (g4VarM28270switch != null) {
            return g4VarM28270switch.mo28039do(strSubstring2, locale, this);
        }
        throw new lb2("No custom number format was defined with name " + Csuper.m29330synchronized(strSubstring));
    }

    private void E2(TemplateException templateException) throws TemplateException {
        if ((templateException instanceof k52) && ((k52) templateException).getReplaceWithCause() && (templateException.getCause() instanceof TemplateException)) {
            templateException = (TemplateException) templateException.getCause();
        }
        if (this.r1 == templateException) {
            throw templateException;
        }
        this.r1 = templateException;
        if (m28277volatile()) {
            freemarker.log.Cif cif = E1;
            if (cif.mo29191while() && !V2()) {
                cif.mo29181else("Error executing FreeMarker template", templateException);
            }
        }
        try {
            if (templateException instanceof q12) {
                throw templateException;
            }
            f().handleTemplateException(templateException, this, this.i1);
        } catch (TemplateException e) {
            if (V2()) {
                m28256goto().report(templateException, this);
            }
            throw e;
        }
    }

    private static x1 G1(b4 b4Var) {
        while (b4Var != null) {
            if (b4Var instanceof x1) {
                return (x1) b4Var;
            }
            b4Var = b4Var.m27847synchronized();
        }
        return null;
    }

    private Cthis G2(String str, Cstatic cstatic, String str2) throws TemplateException, IOException {
        String strM27753do;
        boolean z;
        if (cstatic != null) {
            z = false;
            strM27753do = cstatic.h1();
        } else {
            strM27753do = Cprivate.m27753do(u1().Y1(), str);
            z = true;
        }
        if (this.o1 == null) {
            this.o1 = new HashMap<>();
        }
        Cthis cthis = this.o1.get(strM27753do);
        if (cthis != null) {
            if (str2 != null) {
                u3(str2, cthis);
                if (U2() && this.m1 == this.l1) {
                    this.n1.put(str2, cthis);
                }
            }
            if (!z && (cthis instanceof Celse)) {
                ((Celse) cthis).m27943if();
            }
        } else {
            Cthis celse = z ? new Celse(this, strM27753do, null) : new Cthis(cstatic);
            this.o1.put(strM27753do, celse);
            if (str2 != null) {
                u3(str2, celse);
                if (this.m1 == this.l1) {
                    this.n1.put(str2, celse);
                }
            }
            if (!z) {
                M2(celse, cstatic);
            }
        }
        return this.o1.get(strM27753do);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object M1() {
        return e2().c1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M2(Cthis cthis, Cstatic cstatic) throws TemplateException, IOException {
        Cthis cthis2 = this.m1;
        this.m1 = cthis;
        Writer writer = this.i1;
        this.i1 = freemarker.template.utility.Cbreak.f25160do;
        try {
            K2(cstatic);
        } finally {
            this.i1 = writer;
            this.m1 = cthis2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String N1() {
        String strE1 = e2().e1();
        return strE1 == null ? this.U0.x1(m28268strictfp()) : strE1;
    }

    public static String N2(b4 b4Var) {
        StringBuilder sb = new StringBuilder();
        Z0(b4Var, sb);
        return sb.toString();
    }

    private void Q2(x1 x1Var, Map map, List<? extends h0> list, List<h0> list2, h4 h4Var) throws Throwable {
        boolean z;
        if (x1Var == x1.f24268while) {
            return;
        }
        boolean z2 = true;
        if (this.V0) {
            z = false;
        } else {
            e3(x1Var);
            z = true;
        }
        try {
            x1Var.getClass();
            x1.Cdo cdo = x1Var.new Cdo(this, h4Var, list2);
            s3(cdo, x1Var, map, list);
            if (z) {
                z2 = z;
            } else {
                e3(x1Var);
            }
            try {
                x1.Cdo cdo2 = this.j1;
                this.j1 = cdo;
                v1 v1Var = this.k1;
                this.k1 = null;
                Cthis cthis = this.m1;
                this.m1 = (Cthis) this.t1.get(x1Var);
                try {
                    try {
                        try {
                            cdo.m28345for(this);
                            A3(x1Var.m27837finally());
                            this.j1 = cdo2;
                            this.k1 = v1Var;
                        } catch (TemplateException e) {
                            E2(e);
                            this.j1 = cdo2;
                            this.k1 = v1Var;
                        }
                    } catch (Throwable th) {
                        this.j1 = cdo2;
                        this.k1 = v1Var;
                        this.m1 = cthis;
                        throw th;
                    }
                } catch (p3.Cdo unused) {
                    this.j1 = cdo2;
                    this.k1 = v1Var;
                }
                this.m1 = cthis;
                if (z2) {
                    c3();
                }
            } catch (Throwable th2) {
                th = th2;
                z = z2;
                if (z) {
                    c3();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean T2() {
        return this.U0.getIncompatibleImprovements().intValue() < ul2.f6939try;
    }

    private static boolean X2(Class cls) {
        return cls != Date.class && (cls == java.sql.Date.class || cls == Time.class || (cls != Timestamp.class && (java.sql.Date.class.isAssignableFrom(cls) || Time.class.isAssignableFrom(cls))));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TemplateModel Y1(Cthis cthis, String str, String str2) throws TemplateException {
        TemplateModel templateModel;
        if (str2 == null) {
            templateModel = cthis.get(str);
            if (!(templateModel instanceof x1) && !(templateModel instanceof TemplateTransformModel)) {
                return null;
            }
        } else {
            Cstatic template = cthis.getTemplate();
            String strM1 = template.m1(str2);
            if (strM1 == null) {
                return null;
            }
            if (strM1.length() > 0) {
                templateModel = cthis.get(strM1 + ":" + str);
                if (!(templateModel instanceof x1) && !(templateModel instanceof TemplateTransformModel)) {
                    return null;
                }
            } else if (str2.length() == 0) {
                TemplateModel templateModel2 = cthis.get("N:" + str);
                if (!(templateModel2 instanceof x1) && !(templateModel2 instanceof TemplateTransformModel)) {
                    templateModel2 = null;
                }
                if (str2.equals(template.d1())) {
                    templateModel2 = cthis.get("D:" + str);
                    if (!(templateModel2 instanceof x1) && !(templateModel2 instanceof TemplateTransformModel)) {
                        templateModel2 = null;
                    }
                }
                if (templateModel2 != null) {
                    return templateModel2;
                }
                templateModel = cthis.get(str);
                if (!(templateModel instanceof x1) && !(templateModel instanceof TemplateTransformModel)) {
                    return null;
                }
            }
        }
        return templateModel;
    }

    private Object[] Y2(TemplateNodeModel templateNodeModel, String str, String str2) throws k52 {
        String str3 = "";
        if (str != null) {
            str3 = str.length() > 0 ? " and namespace " : " and no namespace";
        } else {
            str = "";
        }
        return new Object[]{"No macro or directive is defined for node named ", new fl2(templateNodeModel.getNodeName()), str3, str, ", and there is no fallback handler called @", str2, " either."};
    }

    public static void Z0(b4 b4Var, StringBuilder sb) {
        sb.append(b5.m27873strictfp(b4Var.m27834continue(), 40));
        sb.append("  [");
        x1 x1VarG1 = G1(b4Var);
        if (x1VarG1 != null) {
            sb.append(b5.m27858else(x1VarG1, b4Var.f23822for, b4Var.f23823if));
        } else {
            sb.append(b5.m27863goto(b4Var.getTemplate(), b4Var.f23822for, b4Var.f23823if));
        }
        sb.append("]");
    }

    private static boolean Z2(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    private TemplateModel a2(String str, String str2, int i) throws TemplateException {
        int size = this.v1.size();
        TemplateModel templateModelY1 = null;
        while (i < size) {
            try {
                templateModelY1 = Y1((Cthis) this.v1.get(i), str, str2);
                if (templateModelY1 != null) {
                    break;
                }
                i++;
            } catch (ClassCastException unused) {
                throw new nl2(this, "A \"using\" clause should contain a sequence of namespaces or strings that indicate the location of importable macro libraries.");
            }
        }
        if (templateModelY1 != null) {
            this.w1 = i + 1;
            this.x1 = str;
            this.y1 = str2;
        }
        return templateModelY1;
    }

    private final TemplateModel b2(String str) throws k52 {
        v1 v1Var = this.k1;
        if (v1Var != null) {
            for (int iM28339new = v1Var.m28339new() - 1; iM28339new >= 0; iM28339new--) {
                TemplateModel localVariable = this.k1.m28336do(iM28339new).getLocalVariable(str);
                if (localVariable != null) {
                    return localVariable;
                }
            }
        }
        x1.Cdo cdo = this.j1;
        if (cdo == null) {
            return null;
        }
        return cdo.getLocalVariable(str);
    }

    public static void b3(b4[] b4VarArr, boolean z, Writer writer) throws IOException {
        PrintWriter printWriter = (PrintWriter) (writer instanceof PrintWriter ? writer : null);
        try {
            if (b4VarArr == null) {
                writer.write("(The stack was empty)");
                if (printWriter != null) {
                    printWriter.println();
                    return;
                } else {
                    writer.write(10);
                    return;
                }
            }
            int length = b4VarArr.length;
            int i = (!z || length <= 10) ? length : 9;
            boolean z2 = false;
            boolean z3 = true;
            boolean z4 = z && i < length;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i2 < length) {
                b4 b4Var = b4VarArr[i2];
                boolean z5 = (i2 > 0 && (b4Var instanceof Csuper)) || (i2 > 1 && (b4VarArr[i2 + (-1)] instanceof Csuper));
                if (i5 >= i) {
                    i3++;
                } else if (z5 && z4) {
                    i4++;
                } else {
                    writer.write(i2 == 0 ? "\t- Failed at: " : z5 ? "\t~ Reached through: " : "\t- Reached through: ");
                    writer.write(N2(b4Var));
                    if (printWriter != null) {
                        printWriter.println();
                    } else {
                        writer.write(10);
                    }
                    i5++;
                }
                i2++;
            }
            if (i3 > 0) {
                writer.write("\t... (Had ");
                writer.write(String.valueOf(i3 + i4));
                writer.write(" more, hidden for tersenes)");
                z2 = true;
            }
            if (i4 > 0) {
                if (z2) {
                    writer.write(32);
                } else {
                    writer.write(9);
                }
                writer.write("(Hidden " + i4 + " \"~\" lines for terseness)");
                if (printWriter != null) {
                    printWriter.println();
                } else {
                    writer.write(10);
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                if (printWriter != null) {
                    printWriter.println();
                } else {
                    writer.write(10);
                }
            }
        } catch (IOException e) {
            E1.mo29181else("Failed to print FTL stack trace", e);
        }
    }

    private void c3() {
        this.Y0--;
    }

    private void e3(b4 b4Var) {
        int i = this.Y0 + 1;
        this.Y0 = i;
        b4[] b4VarArr = this.X0;
        if (i > b4VarArr.length) {
            b4[] b4VarArr2 = new b4[i * 2];
            for (int i2 = 0; i2 < b4VarArr.length; i2++) {
                b4VarArr2[i2] = b4VarArr[i2];
            }
            this.X0 = b4VarArr2;
            b4VarArr = b4VarArr2;
        }
        b4VarArr[i - 1] = b4Var;
    }

    private void f3(LocalContext localContext) {
        if (this.k1 == null) {
            this.k1 = new v1();
        }
        this.k1.m28337for(localContext);
    }

    private void g1() {
        this.b1 = null;
        this.a1 = null;
        this.c1 = null;
        this.d1 = null;
        this.h1 = null;
        this.z1 = null;
        this.A1 = false;
    }

    private z3 i2(int i, boolean z, boolean z2) throws p52 {
        String strG;
        if (i == 0) {
            throw new xb2();
        }
        int iQ2 = q2(i, z2, z);
        z3[] z3VarArr = this.c1;
        if (z3VarArr == null) {
            z3VarArr = new z3[16];
            this.c1 = z3VarArr;
        }
        z3 z3Var = z3VarArr[iQ2];
        if (z3Var != null) {
            return z3Var;
        }
        if (i == 1) {
            strG = g();
        } else if (i == 2) {
            strG = m28253extends();
        } else {
            if (i != 3) {
                throw new IllegalArgumentException("Invalid date type enum: " + Integer.valueOf(i));
            }
            strG = m28255finally();
        }
        z3 z3VarP2 = p2(strG, i, z, z2, false);
        z3VarArr[iQ2] = z3VarP2;
        return z3VarP2;
    }

    private b4 j3(b4 b4Var) {
        this.X0[this.Y0 - 1] = b4Var;
        return b4Var;
    }

    private d1.Cdo l1(String str) {
        v1 v1VarR1 = R1();
        if (v1VarR1 == null) {
            return null;
        }
        for (int iM28339new = v1VarR1.m28339new() - 1; iM28339new >= 0; iM28339new--) {
            LocalContext localContextM28336do = v1VarR1.m28336do(iM28339new);
            if ((localContextM28336do instanceof d1.Cdo) && (str == null || ((d1.Cdo) localContextM28336do).m27949else(str))) {
                return (d1.Cdo) localContextM28336do;
            }
        }
        return null;
    }

    public static void l3(d0 d0Var) {
        D1.set(d0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private z3 p2(String str, int i, boolean z, boolean z2, boolean z3) throws p52 {
        HashMap<String, z3> map;
        HashMap<String, z3>[] mapArr = this.d1;
        z3 z3Var = null;
        HashMap<String, z3> map2 = null;
        if (mapArr != null) {
            int iQ2 = q2(i, z2, z);
            map = mapArr[iQ2];
            if (map != null) {
                if (z3) {
                    map = new HashMap<>(4);
                    mapArr[iQ2] = map;
                }
                map2 = map;
            } else {
                z3Var = map.get(str);
            }
            if (z3Var != null) {
                return z3Var;
            }
            map2 = map;
        } else if (z3) {
            mapArr = new HashMap[16];
            this.d1 = mapArr;
            int iQ22 = q2(i, z2, z);
            map = mapArr[iQ22];
            if (map != null) {
            }
            if (z3Var != null) {
            }
            map2 = map;
        }
        z3 z3VarR2 = r2(str, i, m28268strictfp(), z ? a() : h(), z2);
        if (z3) {
            map2.put(str, z3VarR2);
        }
        return z3VarR2;
    }

    private int q2(int i, boolean z, boolean z2) {
        return i + (z ? 4 : 0) + (z2 ? 8 : 0);
    }

    private z3 r2(String str, int i, Locale locale, TimeZone timeZone, boolean z) throws p52 {
        a4 a4VarM28265public;
        int length = str.length();
        char cCharAt = length != 0 ? str.charAt(0) : (char) 0;
        if (cCharAt == 'x' && length > 1 && str.charAt(1) == 's') {
            a4VarM28265public = x4.f24284for;
        } else if (cCharAt == 'i' && length > 2 && str.charAt(1) == 's' && str.charAt(2) == 'o') {
            a4VarM28265public = v0.f24248for;
        } else if (cCharAt == '@' && length > 1 && ((U2() || m()) && Character.isLetter(str.charAt(1)))) {
            int i2 = 1;
            while (i2 < length) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == ' ' || cCharAt2 == '_') {
                    break;
                }
                i2++;
            }
            String strSubstring = str.substring(1, i2);
            str = i2 < length ? str.substring(i2 + 1) : "";
            a4VarM28265public = m28265public(strSubstring);
            if (a4VarM28265public == null) {
                throw new lb2("No custom date format was defined with name " + Csuper.m29330synchronized(strSubstring));
            }
        } else {
            a4VarM28265public = f1.f23740do;
        }
        return a4VarM28265public.mo27821do(str, i, locale, timeZone, z, this);
    }

    private void s3(x1.Cdo cdo, x1 x1Var, Map map, List<? extends h0> list) throws TemplateException {
        String strW = x1Var.w();
        Creturn creturn = null;
        Cnative cnative = null;
        if (map != null) {
            if (strW != null) {
                Cnative cnative2 = new Cnative((ObjectWrapper) null);
                cdo.m28347new(strW, cnative2);
                cnative = cnative2;
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                boolean zY = x1Var.y(str);
                if (!zY && strW == null) {
                    Object[] objArr = new Object[5];
                    objArr[0] = x1Var.z() ? "Function " : "Macro ";
                    objArr[1] = new fl2(x1Var.x());
                    objArr[2] = " has no parameter with name ";
                    objArr[3] = new fl2(str);
                    objArr[4] = ".";
                    throw new nl2(this, objArr);
                }
                TemplateModel templateModelM28055throws = ((h0) entry.getValue()).m28055throws(this);
                if (zY) {
                    cdo.m28347new(str, templateModelM28055throws);
                } else {
                    cnative.put(str, templateModelM28055throws);
                }
            }
            return;
        }
        if (list != null) {
            if (strW != null) {
                Creturn creturn2 = new Creturn((ObjectWrapper) null);
                cdo.m28347new(strW, creturn2);
                creturn = creturn2;
            }
            String[] strArrV = x1Var.v();
            int size = list.size();
            if (strArrV.length >= size || strW != null) {
                for (int i = 0; i < size; i++) {
                    TemplateModel templateModelM28055throws2 = list.get(i).m28055throws(this);
                    try {
                        if (i < strArrV.length) {
                            cdo.m28347new(strArrV[i], templateModelM28055throws2);
                        } else {
                            creturn.add(templateModelM28055throws2);
                        }
                    } catch (RuntimeException e) {
                        throw new nl2(e, this);
                    }
                }
                return;
            }
            Object[] objArr2 = new Object[7];
            objArr2[0] = x1Var.z() ? "Function " : "Macro ";
            objArr2[1] = new fl2(x1Var.x());
            objArr2[2] = " only accepts ";
            objArr2[3] = new jl2(strArrV.length);
            objArr2[4] = " parameters, but got ";
            objArr2[5] = new jl2(size);
            objArr2[6] = ".";
            throw new nl2(this, objArr2);
        }
    }

    public static d0 w1() {
        return (d0) D1.get();
    }

    private boolean w3(boolean z) {
        return z && !W2();
    }

    @Override // freemarker.core.t
    public void A0(TimeZone timeZone) {
        TimeZone timeZoneA = a();
        super.A0(timeZone);
        if (Z2(timeZone, timeZoneA)) {
            return;
        }
        if (this.c1 != null) {
            for (int i = 8; i < 16; i++) {
                z3 z3Var = this.c1[i];
                if (z3Var != null && z3Var.mo27981try()) {
                    this.c1[i] = null;
                }
            }
        }
        if (this.d1 != null) {
            for (int i2 = 8; i2 < 16; i2++) {
                this.d1[i2] = null;
            }
        }
        this.e1 = null;
    }

    public Cstatic A1() {
        int i = this.Y0;
        return i == 0 ? V1() : this.X0[i - 1].getTemplate();
    }

    public final void A3(b4[] b4VarArr) throws TemplateException, IOException {
        if (b4VarArr == null) {
            return;
        }
        for (b4 b4Var : b4VarArr) {
            if (b4Var == null) {
                return;
            }
            e3(b4Var);
            try {
                try {
                    b4[] b4VarArrMo27820native = b4Var.mo27820native(this);
                    if (b4VarArrMo27820native != null) {
                        for (b4 b4Var2 : b4VarArrMo27820native) {
                            if (b4Var2 == null) {
                                break;
                            }
                            y3(b4Var2);
                        }
                    }
                } catch (TemplateException e) {
                    E2(e);
                }
            } finally {
                c3();
            }
        }
    }

    public TemplateNodeModel B1() {
        return this.u1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void B3(b4[] b4VarArr, TemplateDirectiveModel templateDirectiveModel, Map map, List list) throws TemplateException, IOException {
        Cbreak cbreak = b4VarArr != null ? new Cbreak(this, b4VarArr, 0 == true ? 1 : 0) : null;
        TemplateModel[] templateModelArr = (list == null || list.isEmpty()) ? K1 : new TemplateModel[list.size()];
        if (templateModelArr.length > 0) {
            f3(new Cdo(list, templateModelArr));
        }
        try {
            try {
                try {
                    try {
                        try {
                            templateDirectiveModel.execute(this, map, templateModelArr, cbreak);
                        } catch (m0 e) {
                            throw e;
                        }
                    } catch (TemplateException e2) {
                        throw e2;
                    }
                } catch (IOException e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                if (f0.m28021return(e4, this)) {
                    throw new nl2(e4, this, "Directive has thrown an unchecked exception; see the cause exception.");
                }
                if (!(e4 instanceof RuntimeException)) {
                    throw new kb2(e4);
                }
                throw ((RuntimeException) e4);
            }
        } finally {
            if (templateModelArr.length > 0) {
                this.k1.m28338if();
            }
        }
    }

    public Object C1(Object obj) {
        IdentityHashMap<Object, Object> identityHashMap = this.C1;
        if (identityHashMap == null) {
            return null;
        }
        return identityHashMap.get(obj);
    }

    public TemplateTransformModel C2(h0 h0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = h0Var.m28055throws(this);
        if (templateModelM28055throws instanceof TemplateTransformModel) {
            return (TemplateTransformModel) templateModelM28055throws;
        }
        if (h0Var instanceof w0) {
            TemplateModel templateModelI1 = this.U0.I1(h0Var.toString());
            if (templateModelI1 instanceof TemplateTransformModel) {
                return (TemplateTransformModel) templateModelI1;
            }
        }
        return null;
    }

    public final void C3(b4[] b4VarArr, Writer writer) throws TemplateException, IOException {
        Writer writer2 = this.i1;
        this.i1 = writer;
        try {
            A3(b4VarArr);
        } finally {
            this.i1 = writer2;
        }
    }

    public TemplateHashModel D1() {
        return this.W0 instanceof TemplateHashModelEx ? new Cif() : new Cfor();
    }

    public TemplateModel D2(String str) throws k52 {
        TemplateModel templateModelB2 = b2(str);
        if (templateModelB2 == null) {
            TemplateModel templateModel = this.m1.get(str);
            return templateModel != null ? templateModel : J1(str);
        }
        if (templateModelB2 != y2.f24308do) {
            return templateModelB2;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void D3(b4[] b4VarArr, TemplateTransformModel templateTransformModel, Map map) throws TemplateException, IOException {
        try {
            Writer writer = templateTransformModel.getWriter(this.i1, map);
            if (writer == null) {
                writer = M1;
            }
            TransformControl transformControl = writer instanceof TransformControl ? (TransformControl) writer : null;
            Writer writer2 = this.i1;
            this.i1 = writer;
            if (transformControl != null) {
                try {
                    if (transformControl.onStart() != 0) {
                        do {
                            A3(b4VarArr);
                            if (transformControl == null) {
                                break;
                            }
                        } while (transformControl.afterBody() == 0);
                    }
                    this.i1 = writer2;
                    if (writer2 == writer) {
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        if (transformControl != null) {
                            try {
                                try {
                                    if (!(th instanceof m0) || u1().getIncompatibleImprovements().intValue() < ul2.f6927break) {
                                        transformControl.onError(th);
                                        this.i1 = writer2;
                                        if (writer2 == writer) {
                                            return;
                                        }
                                    }
                                } catch (TemplateException e) {
                                    throw e;
                                } catch (Error e2) {
                                    throw e2;
                                }
                            } catch (IOException e3) {
                                throw e3;
                            } catch (Throwable th2) {
                                if (f0.m28021return(th2, this)) {
                                    throw new nl2(th2, this, "Transform has thrown an unchecked exception; see the cause exception.");
                                }
                                if (!(th2 instanceof RuntimeException)) {
                                    throw new kb2(th2);
                                }
                                throw th2;
                            }
                        }
                        throw th;
                    } catch (Throwable th3) {
                        this.i1 = writer2;
                        if (writer2 != writer) {
                            writer.close();
                        }
                        throw th3;
                    }
                }
            }
            writer.close();
        } catch (TemplateException e4) {
            E2(e4);
        }
    }

    public String E1() {
        return this.m1.getTemplate().d1();
    }

    public void E3(Ccatch ccatch, b4 b4Var, m3 m3Var) throws TemplateException, IOException {
        Writer writer = this.i1;
        StringWriter stringWriter = new StringWriter();
        this.i1 = stringWriter;
        boolean zO3 = o3(false);
        boolean z = this.q1;
        try {
            this.q1 = true;
            y3(b4Var);
            this.q1 = z;
            o3(zO3);
            this.i1 = writer;
            e = null;
        } catch (TemplateException e) {
            e = e;
            this.q1 = z;
            o3(zO3);
            this.i1 = writer;
        } catch (Throwable th) {
            this.q1 = z;
            o3(zO3);
            this.i1 = writer;
            throw th;
        }
        if (e == null) {
            this.i1.write(stringWriter.toString());
            return;
        }
        freemarker.log.Cif cif = F1;
        if (cif.mo29190throw()) {
            cif.mo29186new("Error in attempt block " + ccatch.m28066class(), e);
        }
        try {
            this.Z0.add(e);
            y3(m3Var);
        } finally {
            ArrayList arrayList = this.Z0;
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public String F1() {
        if (!this.A1) {
            String strK = k();
            this.z1 = strK;
            if (strK == null) {
                this.z1 = m28260instanceof();
            }
            this.A1 = true;
        }
        return this.z1;
    }

    public Cthis F2(Cstatic cstatic, String str) throws TemplateException, IOException {
        return G2(null, cstatic, str);
    }

    public boolean F3(d1.Cdo cdo) throws TemplateException, IOException {
        boolean zM27948do;
        f3(cdo);
        try {
            try {
                zM27948do = cdo.m27948do(this);
            } catch (TemplateException e) {
                E2(e);
                zM27948do = true;
            }
            return zM27948do;
        } finally {
            this.k1.m28338if();
        }
    }

    @Override // freemarker.core.t
    public void G0(TemplateExceptionHandler templateExceptionHandler) {
        super.G0(templateExceptionHandler);
        this.r1 = null;
    }

    public void G3(x1 x1Var) {
        this.t1.put(x1Var, this.m1);
        this.m1.put(x1Var.x(), x1Var);
    }

    @Override // freemarker.core.t
    public void H0(String str) {
        String strG = g();
        super.H0(str);
        if (str.equals(strG) || this.c1 == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.c1[i + 1] = null;
        }
    }

    public boolean H1() {
        return this.B1;
    }

    public Cthis H2(String str, String str2) throws TemplateException, IOException {
        return I2(str, str2, m28249continue());
    }

    @Override // freemarker.core.t
    public void I0(TimeZone timeZone) {
        TimeZone timeZoneH = h();
        super.I0(timeZone);
        if (timeZone.equals(timeZoneH)) {
            return;
        }
        if (this.c1 != null) {
            for (int i = 0; i < 8; i++) {
                z3 z3Var = this.c1[i];
                if (z3Var != null && z3Var.mo27981try()) {
                    this.c1[i] = null;
                }
            }
        }
        if (this.d1 != null) {
            for (int i2 = 0; i2 < 8; i2++) {
                this.d1[i2] = null;
            }
        }
        this.e1 = null;
    }

    public Cthis I1() {
        return this.n1;
    }

    public Cthis I2(String str, String str2, boolean z) throws TemplateException, IOException {
        return z ? G2(str, null, str2) : G2(null, s2(str), str2);
    }

    public TemplateModel J1(String str) throws k52 {
        TemplateModel templateModel = this.n1.get(str);
        if (templateModel == null) {
            templateModel = this.W0.get(str);
        }
        return templateModel == null ? this.U0.I1(str) : templateModel;
    }

    public void J2(Cstatic cstatic) {
        Iterator it = cstatic.g1().values().iterator();
        while (it.hasNext()) {
            G3((x1) it.next());
        }
    }

    @Override // freemarker.core.t
    public void K0(String str) {
        this.A1 = false;
        super.K0(str);
    }

    public TemplateHashModel K1() {
        return new Cnew();
    }

    public void K2(Cstatic cstatic) throws TemplateException, IOException {
        boolean zT2 = T2();
        Cstatic cstaticE2 = e2();
        if (zT2) {
            z0(cstatic);
        } else {
            this.p1 = cstatic;
        }
        J2(cstatic);
        try {
            y3(cstatic.o1());
            if (zT2) {
                z0(cstaticE2);
            } else {
                this.p1 = cstaticE2;
            }
        } catch (Throwable th) {
            if (zT2) {
                z0(cstaticE2);
            } else {
                this.p1 = cstaticE2;
            }
            throw th;
        }
    }

    public DateUtil.DateToISO8601CalendarFactory L1() {
        if (this.g1 == null) {
            this.g1 = new DateUtil.Cfor();
        }
        return this.g1;
    }

    public void L2(String str, String str2, boolean z) throws TemplateException, IOException {
        K2(t2(str, str2, z));
    }

    public b4[] O1() {
        int i = this.Y0;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            b4 b4Var = this.X0[i3];
            if (i3 == i - 1 || b4Var.h()) {
                i2++;
            }
        }
        if (i2 == 0) {
            return null;
        }
        b4[] b4VarArr = new b4[i2];
        int i4 = i2 - 1;
        for (int i5 = 0; i5 < i; i5++) {
            b4 b4Var2 = this.X0[i5];
            if (i5 == i - 1 || b4Var2.h()) {
                b4VarArr[i4] = b4Var2;
                i4--;
            }
        }
        return b4VarArr;
    }

    public TemplateModel O2(d0 d0Var, x1 x1Var, List<? extends h0> list, h4 h4Var) throws TemplateException {
        d0Var.q3(null);
        if (!x1Var.z()) {
            throw new nl2(d0Var, "A macro cannot be called in an expression. (Functions can be.)");
        }
        Writer writerC2 = d0Var.c2();
        try {
            try {
                d0Var.t3(freemarker.template.utility.Cbreak.f25160do);
                d0Var.P2(x1Var, null, list, null, h4Var);
                d0Var.t3(writerC2);
                return d0Var.Q1();
            } catch (IOException e) {
                throw new TemplateException("Unexpected exception during function execution", (Exception) e, d0Var);
            }
        } catch (Throwable th) {
            d0Var.t3(writerC2);
            throw th;
        }
    }

    public Object P0(String str) throws k52 {
        return freemarker.ext.beans.Ctry.m28685super().unwrap(D2(str));
    }

    public Set P1() throws k52 {
        Set setJ1 = this.U0.J1();
        TemplateHashModel templateHashModel = this.W0;
        if (templateHashModel instanceof TemplateHashModelEx) {
            TemplateModelIterator it = ((TemplateHashModelEx) templateHashModel).keys().iterator();
            while (it.hasNext()) {
                setJ1.add(((TemplateScalarModel) it.next()).getAsString());
            }
        }
        TemplateModelIterator it2 = this.n1.keys().iterator();
        while (it2.hasNext()) {
            setJ1.add(((TemplateScalarModel) it2.next()).getAsString());
        }
        TemplateModelIterator it3 = this.m1.keys().iterator();
        while (it3.hasNext()) {
            setJ1.add(((TemplateScalarModel) it3.next()).getAsString());
        }
        x1.Cdo cdo = this.j1;
        if (cdo != null) {
            setJ1.addAll(cdo.getLocalVariableNames());
        }
        v1 v1Var = this.k1;
        if (v1Var != null) {
            for (int iM28339new = v1Var.m28339new() - 1; iM28339new >= 0; iM28339new--) {
                setJ1.addAll(this.k1.m28336do(iM28339new).getLocalVariableNames());
            }
        }
        return setJ1;
    }

    public void P2(x1 x1Var, Map map, List<? extends h0> list, List list2, h4 h4Var) throws Throwable {
        Q2(x1Var, map, list, list2, h4Var);
    }

    public void Q0(String str, Object obj) throws TemplateException {
        p3(str, m28258implements().wrap(obj));
    }

    public TemplateModel Q1() {
        return this.s1;
    }

    public v1 R1() {
        return this.k1;
    }

    public void R2(Csuper.Cdo cdo) throws TemplateException, IOException {
        x1.Cdo cdoX1 = x1();
        v1 v1Var = this.k1;
        h4 h4Var = cdoX1.f24278if;
        b4[] b4VarArrM27837finally = h4Var instanceof b4 ? ((b4) h4Var).m27837finally() : null;
        if (b4VarArrM27837finally != null) {
            this.j1 = cdoX1.f24274case;
            this.m1 = cdoX1.f24277for;
            boolean zT2 = T2();
            t tVarM28271synchronized = m28271synchronized();
            if (zT2) {
                z0(this.m1.getTemplate());
            } else {
                this.p1 = this.m1.getTemplate();
            }
            this.k1 = cdoX1.f24280try;
            if (cdoX1.f24279new != null) {
                f3(cdo);
            }
            try {
                A3(b4VarArrM27837finally);
            } finally {
                if (cdoX1.f24279new != null) {
                    this.k1.m28338if();
                }
                this.j1 = cdoX1;
                this.m1 = T1(cdoX1.m28346if());
                if (zT2) {
                    z0(tVarM28271synchronized);
                } else {
                    this.p1 = tVarM28271synchronized;
                }
                this.k1 = v1Var;
            }
        }
    }

    public TemplateModel S1(String str) throws k52 {
        TemplateModel templateModelB2 = b2(str);
        if (templateModelB2 != y2.f24308do) {
            return templateModelB2;
        }
        return null;
    }

    public void S2(TemplateNodeModel templateNodeModel, TemplateSequenceModel templateSequenceModel) throws TemplateException, IOException {
        if (this.v1 == null) {
            Creturn creturn = new Creturn(1);
            creturn.add(this.m1);
            this.v1 = creturn;
        }
        int i = this.w1;
        String str = this.x1;
        String str2 = this.y1;
        TemplateSequenceModel templateSequenceModel2 = this.v1;
        TemplateNodeModel templateNodeModel2 = this.u1;
        this.u1 = templateNodeModel;
        if (templateSequenceModel != null) {
            this.v1 = templateSequenceModel;
        }
        try {
            TemplateModel templateModelZ1 = Z1(templateNodeModel);
            if (templateModelZ1 instanceof x1) {
                P2((x1) templateModelZ1, null, null, null, null);
            } else if (templateModelZ1 instanceof TemplateTransformModel) {
                D3(null, (TemplateTransformModel) templateModelZ1, null);
            } else {
                String nodeType = templateNodeModel.getNodeType();
                if (nodeType == null) {
                    throw new nl2(this, Y2(templateNodeModel, templateNodeModel.getNodeNamespace(), "default"));
                }
                if (nodeType.equals("text") && (templateNodeModel instanceof TemplateScalarModel)) {
                    this.i1.write(((TemplateScalarModel) templateNodeModel).getAsString());
                } else if (nodeType.equals("document")) {
                    g3(templateNodeModel, templateSequenceModel);
                } else if (!nodeType.equals("pi") && !nodeType.equals("comment") && !nodeType.equals("document_type")) {
                    throw new nl2(this, Y2(templateNodeModel, templateNodeModel.getNodeNamespace(), nodeType));
                }
            }
        } finally {
            this.u1 = templateNodeModel2;
            this.w1 = i;
            this.x1 = str;
            this.y1 = str2;
            this.v1 = templateSequenceModel2;
        }
    }

    public Cthis T1(x1 x1Var) {
        return (Cthis) this.t1.get(x1Var);
    }

    public Cthis U1() {
        return this.l1;
    }

    public boolean U2() {
        return this.U0.getIncompatibleImprovements().intValue() >= ul2.f6933else;
    }

    public Cstatic V1() {
        return this.l1.getTemplate();
    }

    public boolean V2() {
        return this.q1;
    }

    public Cthis W1(String str) {
        if (str.startsWith(on0.f4694final)) {
            str = str.substring(1);
        }
        HashMap<String, Cthis> map = this.o1;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public boolean W2() {
        if (this.e1 == null) {
            this.e1 = Boolean.valueOf(a() == null || a().equals(h()));
        }
        return this.e1.booleanValue();
    }

    public String X1(String str) {
        return this.m1.getTemplate().i1(str);
    }

    public TemplateModel Z1(TemplateNodeModel templateNodeModel) throws TemplateException {
        String nodeName = templateNodeModel.getNodeName();
        if (nodeName == null) {
            throw new nl2(this, "Node name is null.");
        }
        TemplateModel templateModelA2 = a2(nodeName, templateNodeModel.getNodeNamespace(), 0);
        if (templateModelA2 != null) {
            return templateModelA2;
        }
        String nodeType = templateNodeModel.getNodeType();
        if (nodeType == null) {
            nodeType = "default";
        }
        return a2("@" + nodeType, null, 0);
    }

    public boolean a1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28006break(templateModel, 1, templateModel2, this);
    }

    public void a3(PrintWriter printWriter) throws IOException {
        b3(O1(), false, printWriter);
        printWriter.flush();
    }

    public boolean b1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28009class(templateModel, 1, templateModel2, this);
    }

    public boolean c1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28006break(templateModel, 4, templateModel2, this);
    }

    public Writer c2() {
        return this.i1;
    }

    public boolean d1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28006break(templateModel, 3, templateModel2, this);
    }

    public String d2(String str) {
        return this.m1.getTemplate().m1(str);
    }

    public void d3() throws TemplateException, IOException {
        ThreadLocal threadLocal = D1;
        Object obj = threadLocal.get();
        threadLocal.set(this);
        try {
            try {
                mo28245case(this);
                y3(e2().o1());
                if (m28272this()) {
                    this.i1.flush();
                }
                threadLocal.set(obj);
            } finally {
                g1();
            }
        } catch (Throwable th) {
            D1.set(obj);
            throw th;
        }
    }

    public boolean e1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28006break(templateModel, 5, templateModel2, this);
    }

    @Deprecated
    public Cstatic e2() {
        return (Cstatic) m28271synchronized();
    }

    public boolean f1(TemplateModel templateModel, TemplateModel templateModel2) throws TemplateException {
        return f0.m28006break(templateModel, 6, templateModel2, this);
    }

    public Cstatic f2() {
        Cstatic cstatic = (Cstatic) this.p1;
        return cstatic != null ? cstatic : e2();
    }

    public z3 g2(int i, Class<? extends Date> cls) throws p52 {
        boolean zX2 = X2(cls);
        return i2(i, w3(zX2), zX2);
    }

    public void g3(TemplateNodeModel templateNodeModel, TemplateSequenceModel templateSequenceModel) throws TemplateException, IOException {
        if (templateNodeModel == null && (templateNodeModel = B1()) == null) {
            throw new vl2("The target node of recursion is missing or null.");
        }
        TemplateSequenceModel childNodes = templateNodeModel.getChildNodes();
        if (childNodes == null) {
            return;
        }
        int size = childNodes.size();
        for (int i = 0; i < size; i++) {
            TemplateNodeModel templateNodeModel2 = (TemplateNodeModel) childNodes.get(i);
            if (templateNodeModel2 != null) {
                S2(templateNodeModel2, templateSequenceModel);
            }
        }
    }

    public void h1() {
        this.s1 = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public z3 h2(int i, Class<? extends Date> cls, h0 h0Var, boolean z) throws TemplateException {
        String strG;
        String str;
        String str2;
        try {
            return g2(i, cls);
        } catch (xb2 e) {
            throw b5.m27865import(h0Var, e);
        } catch (p52 e2) {
            String str3 = "???";
            if (i == 1) {
                strG = g();
                str = "time_format";
            } else if (i == 2) {
                strG = m28253extends();
                str = "date_format";
            } else {
                if (i != 3) {
                    str2 = "???";
                    z4 z4Var = new z4("The value of the \"", str3, "\" FreeMarker configuration setting is a malformed date/time/datetime format string: ", new fl2(str2), ". Reason given: ", e2.getMessage());
                    if (z) {
                        throw new nl2(e2, z4Var);
                    }
                    throw new vl2(e2, z4Var);
                }
                strG = m28255finally();
                str = "datetime_format";
            }
            String str4 = strG;
            str3 = str;
            str2 = str4;
            z4 z4Var2 = new z4("The value of the \"", str3, "\" FreeMarker configuration setting is a malformed date/time/datetime format string: ", new fl2(str2), ". Reason given: ", e2.getMessage());
            if (z) {
            }
        }
    }

    public String h3(b4 b4Var) throws TemplateException, IOException {
        Writer writer = this.i1;
        try {
            StringWriter stringWriter = new StringWriter();
            this.i1 = stringWriter;
            y3(b4Var);
            return stringWriter.toString();
        } finally {
            this.i1 = writer;
        }
    }

    public TemplateModel i1(h0 h0Var, String str, TemplateModel templateModel) throws TemplateException {
        f3(new Cgoto(str, templateModel));
        try {
            return h0Var.m28055throws(this);
        } finally {
            this.k1.m28338if();
        }
    }

    public void i3(b4 b4Var) {
        this.X0[this.Y0 - 1] = b4Var;
    }

    public void j1() throws Throwable {
        TemplateModel templateModelA2 = a2(this.x1, this.y1, this.w1);
        if (templateModelA2 instanceof x1) {
            P2((x1) templateModelA2, null, null, null, null);
        } else if (templateModelA2 instanceof TemplateTransformModel) {
            D3(null, (TemplateTransformModel) templateModelA2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z3 j2(TemplateDateModel templateDateModel, h0 h0Var, boolean z) throws TemplateException {
        return h2(templateDateModel.getDateType(), f0.m28026while(templateDateModel, h0Var).getClass(), h0Var, z);
    }

    public d1.Cdo k1() {
        return l1(null);
    }

    public z3 k2(String str, int i, Class<? extends Date> cls) throws p52 {
        boolean zX2 = X2(cls);
        return p2(str, i, w3(zX2), zX2, true);
    }

    public String k3(String str) throws fx0 {
        return Cprivate.m27755if(this.U0.Y1(), str);
    }

    public z3 l2(String str, int i, Class<? extends Date> cls, h0 h0Var, h0 h0Var2, boolean z) throws TemplateException {
        try {
            return k2(str, i, cls);
        } catch (xb2 e) {
            throw b5.m27865import(h0Var, e);
        } catch (p52 e2) {
            z4 z4VarM28401if = new z4("Can't create date/time/datetime format based on format string ", new fl2(str), ". Reason given: ", e2.getMessage()).m28401if(h0Var2);
            if (z) {
                throw new vl2(e2, z4VarM28401if);
            }
            throw new nl2(e2, z4VarM28401if);
        }
    }

    public d1.Cdo m1(String str) {
        return l1(str);
    }

    public z3 m2(String str, int i, Class<? extends Date> cls, Locale locale) throws p52 {
        boolean zX2 = X2(cls);
        return o2(str, i, locale, w3(zX2) ? a() : h(), zX2);
    }

    public void m3(TemplateNodeModel templateNodeModel) {
        this.u1 = templateNodeModel;
    }

    public String n1(TemplateDateModel templateDateModel, h0 h0Var, boolean z) throws TemplateException {
        z3 z3VarJ2 = j2(templateDateModel, h0Var, z);
        try {
            return f0.m28016if(z3VarJ2.mo27979for(templateDateModel));
        } catch (p52 e) {
            throw b5.m27877throw(z3VarJ2, h0Var, e, z);
        }
    }

    public z3 n2(String str, int i, Class<? extends Date> cls, Locale locale, TimeZone timeZone, TimeZone timeZone2) throws p52 {
        boolean zX2 = X2(cls);
        return o2(str, i, locale, w3(zX2) ? timeZone2 : timeZone, zX2);
    }

    public Object n3(Object obj, Object obj2) {
        IdentityHashMap<Object, Object> identityHashMap = this.C1;
        if (identityHashMap == null) {
            identityHashMap = new IdentityHashMap<>();
            this.C1 = identityHashMap;
        }
        return identityHashMap.put(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String o1(TemplateDateModel templateDateModel, String str, h0 h0Var, h0 h0Var2, boolean z) throws TemplateException {
        z3 z3VarL2 = l2(str, templateDateModel.getDateType(), f0.m28026while(templateDateModel, h0Var).getClass(), h0Var, h0Var2, z);
        try {
            return f0.m28016if(z3VarL2.mo27979for(templateDateModel));
        } catch (p52 e) {
            throw b5.m27877throw(z3VarL2, h0Var, e, z);
        }
    }

    public z3 o2(String str, int i, Locale locale, TimeZone timeZone, boolean z) throws p52 {
        if (locale.equals(m28268strictfp())) {
            char c = timeZone.equals(h()) ? (char) 1 : timeZone.equals(a()) ? (char) 2 : (char) 0;
            if (c != 0) {
                return p2(str, i, c == 2, z, true);
            }
        }
        return r2(str, i, locale, timeZone, z);
    }

    public boolean o3(boolean z) {
        boolean z2 = this.B1;
        this.B1 = z;
        return z2;
    }

    @Override // freemarker.core.t
    public void p0(String str) {
        String strM28253extends = m28253extends();
        super.p0(str);
        if (str.equals(strM28253extends) || this.c1 == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.c1[i + 2] = null;
        }
    }

    public String p1(TemplateNumberModel templateNumberModel, h0 h0Var, boolean z) throws TemplateException {
        return q1(templateNumberModel, w2(h0Var, z), h0Var, z);
    }

    public void p3(String str, TemplateModel templateModel) {
        this.n1.put(str, templateModel);
    }

    @Override // freemarker.core.t
    public void q0(String str) {
        String strM28255finally = m28255finally();
        super.q0(str);
        if (str.equals(strM28255finally) || this.c1 == null) {
            return;
        }
        for (int i = 0; i < 16; i += 4) {
            this.c1[i + 3] = null;
        }
    }

    public String q1(TemplateNumberModel templateNumberModel, f4 f4Var, h0 h0Var, boolean z) throws TemplateException {
        try {
            return f0.m28016if(f4Var.mo28033for(templateNumberModel));
        } catch (p52 e) {
            throw b5.m27880while(f4Var, h0Var, e, z);
        }
    }

    public void q3(TemplateModel templateModel) {
        this.s1 = templateModel;
    }

    public String r1(Number number, Cconst cconst, h0 h0Var) throws nl2, k52 {
        try {
            return cconst.mo27939case(number);
        } catch (ob2 e) {
            throw new nl2(h0Var, e, this, "Failed to format number with ", new fl2(cconst.mo5485do()), ": ", e.getMessage());
        }
    }

    public void r3(String str, TemplateModel templateModel) {
        x1.Cdo cdo = this.j1;
        if (cdo == null) {
            throw new IllegalStateException("Not executing macro body");
        }
        cdo.m28347new(str, templateModel);
    }

    public NumberFormat s1() {
        if (this.f1 == null) {
            this.f1 = (DecimalFormat) G1.clone();
        }
        return this.f1;
    }

    public Cstatic s2(String str) throws IOException {
        return t2(str, null, true);
    }

    @Override // freemarker.core.t
    public void t0(Locale locale) {
        Locale localeM28268strictfp = m28268strictfp();
        super.t0(locale);
        if (locale.equals(localeM28268strictfp)) {
            return;
        }
        this.b1 = null;
        f4 f4Var = this.a1;
        if (f4Var != null && f4Var.mo28035new()) {
            this.a1 = null;
        }
        if (this.c1 != null) {
            for (int i = 0; i < 16; i++) {
                z3 z3Var = this.c1[i];
                if (z3Var != null && z3Var.mo27980new()) {
                    this.c1[i] = null;
                }
            }
        }
        this.d1 = null;
        this.h1 = null;
    }

    public Collator t1() {
        if (this.h1 == null) {
            this.h1 = Collator.getInstance(m28268strictfp());
        }
        return this.h1;
    }

    public Cstatic t2(String str, String str2, boolean z) throws IOException {
        return u2(str, str2, z, false);
    }

    public void t3(Writer writer) {
        this.i1 = writer;
    }

    public freemarker.template.Cdo u1() {
        return this.U0;
    }

    public Cstatic u2(String str, String str2, boolean z, boolean z2) throws IOException {
        freemarker.template.Cdo cdo = this.U0;
        Locale localeM28268strictfp = m28268strictfp();
        Object objM1 = M1();
        if (str2 == null) {
            str2 = N1();
        }
        return cdo.R1(str, localeM28268strictfp, objM1, str2, z, z2);
    }

    public void u3(String str, TemplateModel templateModel) {
        this.m1.put(str, templateModel);
    }

    public DirectiveCallPlace v1() {
        int i = this.Y0;
        if (i == 0) {
            return null;
        }
        b4[] b4VarArr = this.X0;
        b4 b4Var = b4VarArr[i - 1];
        if (b4Var instanceof s4) {
            return (s4) b4Var;
        }
        if ((b4Var instanceof x1) && i > 1) {
            int i2 = i - 2;
            if (b4VarArr[i2] instanceof s4) {
                return (s4) b4VarArr[i2];
            }
        }
        return null;
    }

    public f4 v2() throws p52 {
        f4 f4Var = this.a1;
        if (f4Var != null) {
            return f4Var;
        }
        f4 f4VarA2 = A2(m28275transient(), false);
        this.a1 = f4VarA2;
        return f4VarA2;
    }

    public boolean v3(Class cls) {
        return (cls == Date.class || W2() || !X2(cls)) ? false : true;
    }

    @Override // freemarker.core.t
    public void w0(String str) {
        super.w0(str);
        this.a1 = null;
    }

    public f4 w2(h0 h0Var, boolean z) throws TemplateException {
        try {
            return v2();
        } catch (p52 e) {
            z4 z4VarM28401if = new z4("Failed to get number format object for the current number format string, ", new fl2(m28275transient()), ": ", e.getMessage()).m28401if(h0Var);
            if (z) {
                throw new vl2(e, this, z4VarM28401if);
            }
            throw new nl2(e, this, z4VarM28401if);
        }
    }

    public x1.Cdo x1() {
        return this.j1;
    }

    public f4 x2(String str) throws p52 {
        return A2(str, true);
    }

    public String x3(String str, String str2) throws fx0 {
        return (y() || str == null) ? str2 : Cprivate.m27754for(this.U0.Y1(), str, str2);
    }

    @Override // freemarker.core.t
    public void y0(String str) {
        this.A1 = false;
        super.y0(str);
    }

    public Cthis y1() {
        return this.m1;
    }

    public f4 y2(String str, h0 h0Var, boolean z) throws TemplateException {
        try {
            return x2(str);
        } catch (p52 e) {
            z4 z4VarM28401if = new z4("Failed to get number format object for the ", new fl2(str), " number format string: ", e.getMessage()).m28401if(h0Var);
            if (z) {
                throw new vl2(e, this, z4VarM28401if);
            }
            throw new nl2(e, this, z4VarM28401if);
        }
    }

    public void y3(b4 b4Var) throws TemplateException, IOException {
        e3(b4Var);
        try {
            try {
                b4[] b4VarArrMo27820native = b4Var.mo27820native(this);
                if (b4VarArrMo27820native != null) {
                    for (b4 b4Var2 : b4VarArrMo27820native) {
                        if (b4Var2 == null) {
                            break;
                        }
                        y3(b4Var2);
                    }
                }
            } catch (TemplateException e) {
                E2(e);
            }
        } finally {
            c3();
        }
    }

    public String z1() throws TemplateException {
        if (this.Z0.isEmpty()) {
            throw new nl2(this, ".error is not available outside of a #recover block");
        }
        return ((Throwable) this.Z0.get(r0.size() - 1)).getMessage();
    }

    public f4 z2(String str, Locale locale) throws p52 {
        if (locale.equals(m28268strictfp())) {
            x2(str);
        }
        return B2(str, locale);
    }

    @Deprecated
    public void z3(b4 b4Var, TemplateDirectiveModel templateDirectiveModel, Map map, List list) throws TemplateException, IOException {
        B3(new b4[]{b4Var}, templateDirectiveModel, map, list);
    }

    /* renamed from: freemarker.core.d0$this, reason: invalid class name */
    public class Cthis extends Cnative {
        private Cstatic template;

        public Cthis() {
            this.template = d0.this.e2();
        }

        public Cstatic getTemplate() {
            Cstatic cstatic = this.template;
            return cstatic == null ? d0.this.e2() : cstatic;
        }

        public void setTemplate(Cstatic cstatic) {
            this.template = cstatic;
        }

        public Cthis(Cstatic cstatic) {
            this.template = cstatic;
        }
    }
}

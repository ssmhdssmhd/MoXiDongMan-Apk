package freemarker.cache;

import android.support.v4.fx0;
import android.support.v4.h52;
import android.support.v4.i52;
import android.support.v4.kb2;
import android.support.v4.mc;
import android.support.v4.on0;
import android.support.v4.ul2;
import android.support.v4.w41;
import android.support.v4.we2;
import freemarker.cache.Ccatch;
import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.StringTokenizer;

/* renamed from: freemarker.cache.import, reason: invalid class name */
/* loaded from: classes.dex */
public class Cimport {

    /* renamed from: break, reason: not valid java name */
    public static final long f23355break = 5000;

    /* renamed from: catch, reason: not valid java name */
    private static final String f23356catch = "*";

    /* renamed from: class, reason: not valid java name */
    private static final char f23357class = '*';

    /* renamed from: const, reason: not valid java name */
    private static final char f23358const = '/';

    /* renamed from: final, reason: not valid java name */
    private static final String f23359final = "_";

    /* renamed from: super, reason: not valid java name */
    private static final freemarker.log.Cif f23360super = freemarker.log.Cif.m29193break("freemarker.cache");

    /* renamed from: throw, reason: not valid java name */
    private static final Method f23361throw = m27711catch();

    /* renamed from: case, reason: not valid java name */
    private final boolean f23362case;

    /* renamed from: do, reason: not valid java name */
    private final TemplateLoader f23363do;

    /* renamed from: else, reason: not valid java name */
    private long f23364else;

    /* renamed from: for, reason: not valid java name */
    private final Cswitch f23365for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f23366goto;

    /* renamed from: if, reason: not valid java name */
    private final CacheStorage f23367if;

    /* renamed from: new, reason: not valid java name */
    private final Cthrows f23368new;

    /* renamed from: this, reason: not valid java name */
    private freemarker.template.Cdo f23369this;

    /* renamed from: try, reason: not valid java name */
    private final Cnative f23370try;

    /* renamed from: freemarker.cache.import$if, reason: invalid class name */
    public static final class Cif implements Cloneable, Serializable {
        private static final long serialVersionUID = 1;
        public long lastChecked;
        public long lastModified;
        public Object source;
        public Object templateOrException;

        private Cif() {
        }

        public Cif cloneCachedTemplate() {
            try {
                return (Cif) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new kb2(e);
            }
        }
    }

    /* renamed from: freemarker.cache.import$new, reason: invalid class name */
    public class Cnew extends Creturn {
        public Cnew(String str, Locale locale, Object obj) {
            super(str, Cimport.this.f23366goto ? locale : null, obj);
        }

        @Override // freemarker.cache.Creturn
        /* renamed from: case, reason: not valid java name */
        public Cstatic mo27743case(String str, Locale locale) throws IOException {
            if (locale == null) {
                return mo27744try(str);
            }
            int iLastIndexOf = str.lastIndexOf(46);
            String strSubstring = iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
            String strSubstring2 = iLastIndexOf == -1 ? "" : str.substring(iLastIndexOf);
            String strSubstring3 = Cimport.f23359final + locale.toString();
            StringBuilder sb = new StringBuilder(str.length() + strSubstring3.length());
            sb.append(strSubstring);
            while (true) {
                sb.setLength(strSubstring.length());
                sb.append(strSubstring3);
                sb.append(strSubstring2);
                Cstatic cstaticMo27744try = mo27744try(sb.toString());
                if (cstaticMo27744try.mo27765try()) {
                    return cstaticMo27744try;
                }
                int iLastIndexOf2 = strSubstring3.lastIndexOf(95);
                if (iLastIndexOf2 == -1) {
                    return m27757do();
                }
                strSubstring3 = strSubstring3.substring(0, iLastIndexOf2);
            }
        }

        @Override // freemarker.cache.Creturn
        /* renamed from: try, reason: not valid java name */
        public Cstatic mo27744try(String str) throws IOException {
            if (!str.startsWith(on0.f4694final)) {
                return Cimport.this.m27719static(str);
            }
            throw new IllegalArgumentException("Non-normalized name, starts with \"/\": " + str);
        }
    }

    /* renamed from: freemarker.cache.import$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final String f23376do;

        /* renamed from: for, reason: not valid java name */
        private final Object f23377for;

        /* renamed from: if, reason: not valid java name */
        private final Locale f23378if;

        /* renamed from: new, reason: not valid java name */
        private final String f23379new;

        /* renamed from: try, reason: not valid java name */
        private final boolean f23380try;

        public Ctry(String str, Locale locale, Object obj, String str2, boolean z) {
            this.f23376do = str;
            this.f23378if = locale;
            this.f23377for = obj;
            this.f23379new = str2;
            this.f23380try = z;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m27745do(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            if (obj2 != null) {
                return obj.equals(obj2);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Ctry)) {
                return false;
            }
            Ctry ctry = (Ctry) obj;
            return this.f23380try == ctry.f23380try && this.f23376do.equals(ctry.f23376do) && this.f23378if.equals(ctry.f23378if) && m27745do(this.f23377for, ctry.f23377for) && this.f23379new.equals(ctry.f23379new);
        }

        public int hashCode() {
            int iHashCode = (this.f23376do.hashCode() ^ this.f23378if.hashCode()) ^ this.f23379new.hashCode();
            Object obj = this.f23377for;
            return (iHashCode ^ (obj != null ? obj.hashCode() : 0)) ^ Boolean.valueOf(!this.f23380try).hashCode();
        }
    }

    @Deprecated
    public Cimport() {
        this(ul2.m8510new(freemarker.template.Cdo.h3));
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m27708abstract(Ctry ctry, Cif cif) {
        if (this.f23362case) {
            this.f23367if.put(ctry, cif);
            return;
        }
        synchronized (this.f23367if) {
            this.f23367if.put(ctry, cif);
        }
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static String m27709break(d0 d0Var, String str, String str2) {
        try {
            return d0Var.x3(str, str2);
        } catch (fx0 e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public static TemplateLoader m27710case() {
        return ul2.m8510new(freemarker.template.Cdo.h3);
    }

    /* renamed from: catch, reason: not valid java name */
    private static final Method m27711catch() {
        try {
            return Throwable.class.getMethod("initCause", Throwable.class);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    private void m27712continue(Ctry ctry, Cif cif, Exception exc) {
        cif.templateOrException = exc;
        cif.source = null;
        cif.lastModified = 0L;
        m27708abstract(ctry, cif);
    }

    /* renamed from: else, reason: not valid java name */
    private Object m27714else(String str) throws IOException {
        Object objFindTemplateSource = this.f23363do.findTemplateSource(str);
        freemarker.log.Cif cif = f23360super;
        if (cif.mo29190throw()) {
            StringBuilder sb = new StringBuilder();
            sb.append("TemplateLoader.findTemplateSource(");
            sb.append(Csuper.m29330synchronized(str));
            sb.append("): ");
            sb.append(objFindTemplateSource == null ? "Not found" : "Found");
            cif.mo29183for(sb.toString());
        }
        return m27721switch(objFindTemplateSource);
    }

    /* renamed from: for, reason: not valid java name */
    private String m27715for(String str, Locale locale, Object obj, String str2, boolean z) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(Csuper.b(str));
        sb.append("(");
        sb.append(Csuper.a(locale));
        if (obj != null) {
            str3 = ", cond=" + Csuper.a(obj);
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", ");
        sb.append(str2);
        sb.append(z ? ", parsed)" : ", unparsed]");
        return sb.toString();
    }

    /* renamed from: public, reason: not valid java name */
    private Cstatic m27717public(TemplateLoader templateLoader, Object obj, String str, String str2, Locale locale, Object obj2, String str3, boolean z) throws IOException {
        Locale localeM28268strictfp;
        String str4;
        Cstatic cstatic;
        Reader reader;
        try {
            Cnative cnative = this.f23370try;
            h52 h52VarMo27697do = cnative != null ? cnative.mo27697do(str2, obj) : null;
            if (h52VarMo27697do != null) {
                String strR0 = h52VarMo27697do.W0() ? h52VarMo27697do.R0() : str3;
                if (h52VarMo27697do.H()) {
                    str4 = strR0;
                    localeM28268strictfp = h52VarMo27697do.m28268strictfp();
                } else {
                    localeM28268strictfp = locale;
                    str4 = strR0;
                }
            } else {
                localeM28268strictfp = locale;
                str4 = str3;
            }
            if (z) {
                try {
                    reader = templateLoader.getReader(obj, str4);
                    try {
                        cstatic = new Cstatic(str, str2, reader, this.f23369this, h52VarMo27697do, str4);
                        reader.close();
                    } finally {
                    }
                } catch (Cstatic.Cif e) {
                    String templateSpecifiedEncoding = e.getTemplateSpecifiedEncoding();
                    freemarker.log.Cif cif = f23360super;
                    if (cif.mo29190throw()) {
                        cif.mo29183for("Initial encoding \"" + str4 + "\" was incorrect, re-reading with \"" + templateSpecifiedEncoding + "\". Template: " + str2);
                    }
                    try {
                        cstatic = new Cstatic(str, str2, templateLoader.getReader(obj, templateSpecifiedEncoding), this.f23369this, h52VarMo27697do, templateSpecifiedEncoding);
                    } finally {
                    }
                }
            } else {
                StringWriter stringWriter = new StringWriter();
                char[] cArr = new char[4096];
                reader = templateLoader.getReader(obj, str4);
                while (true) {
                    try {
                        int i = reader.read(cArr);
                        if (i > 0) {
                            stringWriter.write(cArr, 0, i);
                        } else if (i < 0) {
                            break;
                        }
                    } finally {
                    }
                }
                reader.close();
                cstatic = Cstatic.l1(str, str2, stringWriter.toString(), this.f23369this);
                cstatic.y1(str4);
            }
            if (h52VarMo27697do != null) {
                h52VarMo27697do.P0(cstatic);
            }
            cstatic.t0(localeM28268strictfp);
            cstatic.x1(obj2);
            return cstatic;
        } catch (i52 e2) {
            throw m27723throws("Error while getting TemplateConfiguration; see cause exception.", e2);
        }
    }

    /* renamed from: return, reason: not valid java name */
    private Cstatic m27718return(String str, Locale locale, Object obj) throws IOException {
        Cstatic cstaticMo27767do = this.f23365for.mo27767do(new Cnew(str, locale, obj));
        Objects.requireNonNull(cstaticMo27767do, "Lookup result shouldn't be null");
        return cstaticMo27767do;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public Cstatic m27719static(String str) throws IOException {
        if (str.indexOf(42) == -1) {
            return Cstatic.m27762if(str, m27714else(str));
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, on0.f4694final);
        ArrayList arrayList = new ArrayList();
        int size = -1;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals("*")) {
                if (size != -1) {
                    arrayList.remove(size);
                }
                size = arrayList.size();
            }
            arrayList.add(strNextToken);
        }
        if (size == -1) {
            return Cstatic.m27762if(str, m27714else(str));
        }
        String strM27724try = m27724try(arrayList, 0, size);
        String strM27724try2 = m27724try(arrayList, size + 1, arrayList.size());
        if (strM27724try2.endsWith(on0.f4694final)) {
            strM27724try2 = strM27724try2.substring(0, strM27724try2.length() - 1);
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append(strM27724try);
        int length = strM27724try.length();
        while (true) {
            sb.append(strM27724try2);
            String string = sb.toString();
            Object objM27714else = m27714else(string);
            if (objM27714else != null) {
                return Cstatic.m27762if(string, objM27714else);
            }
            if (length == 0) {
                return Cstatic.m27761do();
            }
            length = strM27724try.lastIndexOf(47, length - 2) + 1;
            sb.setLength(length);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m27720strictfp(Throwable th) throws IOException {
        throw m27723throws("There was an error loading the template on an earlier attempt; see cause exception.", th);
    }

    /* renamed from: switch, reason: not valid java name */
    private Object m27721switch(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.f23369this.getIncompatibleImprovements().intValue() < ul2.f6937new) {
            return obj;
        }
        if (obj instanceof Cfinally) {
            Cfinally cfinally = (Cfinally) obj;
            if (cfinally.m27687for() == null) {
                cfinally.m27690try(false);
            }
        } else if (obj instanceof Ccatch.Cdo) {
            m27721switch(((Ccatch.Cdo) obj).m27664new());
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x021d A[Catch: all -> 0x0224, IOException -> 0x0228, RuntimeException -> 0x022d, TRY_LEAVE, TryCatch #16 {IOException -> 0x0228, RuntimeException -> 0x022d, all -> 0x0224, blocks: (B:98:0x01f7, B:101:0x021d), top: B:169:0x01f7 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0291 A[Catch: all -> 0x019e, TRY_ENTER, TryCatch #21 {all -> 0x019e, blocks: (B:16:0x0041, B:19:0x004d, B:20:0x0061, B:24:0x006a, B:26:0x006e, B:28:0x0072, B:34:0x0085, B:35:0x00a3, B:143:0x0291, B:144:0x0294, B:32:0x007e, B:38:0x00a7, B:40:0x00aa, B:146:0x0297, B:147:0x029a, B:83:0x01aa, B:84:0x01c3, B:85:0x01c8), top: B:162:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0297 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:16:0x0041, B:19:0x004d, B:20:0x0061, B:24:0x006a, B:26:0x006e, B:28:0x0072, B:34:0x0085, B:35:0x00a3, B:143:0x0291, B:144:0x0294, B:32:0x007e, B:38:0x00a7, B:40:0x00aa, B:146:0x0297, B:147:0x029a, B:83:0x01aa, B:84:0x01c3, B:85:0x01c8), top: B:162:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Cstatic m27722throw(String str, Locale locale, Object obj, String str2, boolean z) throws Throwable {
        Cif cif;
        Cif cifCloneCachedTemplate;
        boolean z2;
        Cstatic cstaticM27718return;
        Cstatic cstatic;
        Cif cif2;
        long lastModified;
        Cstatic cstatic2;
        Object objMo27763for;
        freemarker.log.Cif cif3 = f23360super;
        boolean zMo29190throw = cif3.mo29190throw();
        Cstatic cstatic3 = null;
        Object[] objArr = 0;
        String strM27715for = zMo29190throw ? m27715for(str, locale, obj, str2, z) : null;
        Ctry ctry = new Ctry(str, locale, obj, str2, z);
        if (this.f23362case) {
            cifCloneCachedTemplate = (Cif) this.f23367if.get(ctry);
        } else {
            synchronized (this.f23367if) {
                cif = (Cif) this.f23367if.get(ctry);
            }
            cifCloneCachedTemplate = cif;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                try {
                    if (cifCloneCachedTemplate == null) {
                        if (zMo29190throw) {
                            cif3.mo29183for("Couldn't find template in cache for " + strM27715for + "; will try to load it.");
                        }
                        Cif cif4 = new Cif();
                        try {
                            cif4.lastChecked = jCurrentTimeMillis;
                            cstaticM27718return = m27718return(str, locale, obj);
                        } catch (IOException e) {
                            e = e;
                        } catch (RuntimeException e2) {
                            e = e2;
                        }
                        try {
                            if (!cstaticM27718return.mo27765try()) {
                                m27712continue(ctry, cif4, null);
                                if (cstaticM27718return.mo27765try()) {
                                    this.f23363do.closeTemplateSource(cstaticM27718return.mo27763for());
                                }
                                return null;
                            }
                            cif4.lastModified = Long.MIN_VALUE;
                            cstatic = cstaticM27718return;
                            cif2 = cif4;
                            lastModified = Long.MIN_VALUE;
                            objMo27763for = cstatic.mo27763for();
                            cif2.source = objMo27763for;
                            if (zMo29190throw) {
                            }
                            if (lastModified == Long.MIN_VALUE) {
                            }
                            long j = lastModified;
                            cstatic2 = cstatic;
                            Cstatic cstaticM27717public = m27717public(this.f23363do, objMo27763for, str, cstatic.mo27764new(), locale, obj, str2, z);
                            cif2.templateOrException = cstaticM27717public;
                            cif2.lastModified = j;
                            m27708abstract(ctry, cif2);
                            if (cstatic2.mo27765try()) {
                            }
                            return cstaticM27717public;
                        } catch (IOException e3) {
                            e = e3;
                            cifCloneCachedTemplate = cif4;
                            z2 = false;
                            if (!z2) {
                            }
                            throw e;
                        } catch (RuntimeException e4) {
                            e = e4;
                            cifCloneCachedTemplate = cif4;
                            if (cifCloneCachedTemplate != null) {
                            }
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            cstatic3 = cstaticM27718return;
                            if (cstatic3 != null) {
                            }
                            throw th;
                        }
                    }
                    if (jCurrentTimeMillis - cifCloneCachedTemplate.lastChecked < this.f23364else) {
                        if (zMo29190throw) {
                            cif3.mo29183for(strM27715for + " cached copy not yet stale; using cached.");
                        }
                        Object obj2 = cifCloneCachedTemplate.templateOrException;
                        if (!(obj2 instanceof Cstatic) && obj2 != null) {
                            try {
                                if (!(obj2 instanceof RuntimeException)) {
                                    if (obj2 instanceof IOException) {
                                        try {
                                            m27720strictfp((IOException) obj2);
                                            z2 = true;
                                        } catch (IOException e5) {
                                            e = e5;
                                            z2 = true;
                                        }
                                    }
                                    throw new mc("t is " + obj2.getClass().getName());
                                }
                                m27720strictfp((RuntimeException) obj2);
                                throw new mc("t is " + obj2.getClass().getName());
                            } catch (IOException e6) {
                                e = e6;
                            }
                            z2 = false;
                        }
                        return (Cstatic) obj2;
                    }
                    cifCloneCachedTemplate = cifCloneCachedTemplate.cloneCachedTemplate();
                    cifCloneCachedTemplate.lastChecked = jCurrentTimeMillis;
                    Cstatic cstaticM27718return2 = m27718return(str, locale, obj);
                    try {
                        if (!cstaticM27718return2.mo27765try()) {
                            if (zMo29190throw) {
                                cif3.mo29183for(strM27715for + " no source found.");
                            }
                            m27712continue(ctry, cifCloneCachedTemplate, null);
                            if (cstaticM27718return2.mo27765try()) {
                                this.f23363do.closeTemplateSource(cstaticM27718return2.mo27763for());
                            }
                            return null;
                        }
                        Object objMo27763for2 = cstaticM27718return2.mo27763for();
                        lastModified = this.f23363do.getLastModified(objMo27763for2);
                        boolean z3 = lastModified == cifCloneCachedTemplate.lastModified;
                        boolean zEquals = objMo27763for2.equals(cifCloneCachedTemplate.source);
                        if (z3 && zEquals) {
                            if (zMo29190throw) {
                                cif3.mo29183for(strM27715for + ": using cached since " + objMo27763for2 + " hasn't changed.");
                            }
                            m27708abstract(ctry, cifCloneCachedTemplate);
                            Cstatic cstatic4 = (Cstatic) cifCloneCachedTemplate.templateOrException;
                            if (cstaticM27718return2.mo27765try()) {
                                this.f23363do.closeTemplateSource(cstaticM27718return2.mo27763for());
                            }
                            return cstatic4;
                        }
                        if (zMo29190throw) {
                            if (!zEquals) {
                                cif3.mo29183for("Updating source because: sourceEquals=" + zEquals + ", newlyFoundSource=" + Csuper.a(objMo27763for2) + ", cached.source=" + Csuper.a(cifCloneCachedTemplate.source));
                            } else if (!z3) {
                                cif3.mo29183for("Updating source because: lastModifiedNotChanged=" + z3 + ", cached.lastModified=" + cifCloneCachedTemplate.lastModified + " != source.lastModified=" + lastModified);
                            }
                        }
                        cif2 = cifCloneCachedTemplate;
                        cstatic = cstaticM27718return2;
                        try {
                            objMo27763for = cstatic.mo27763for();
                            cif2.source = objMo27763for;
                            if (zMo29190throw) {
                                try {
                                    cif3.mo29183for("Loading template for " + strM27715for + " from " + Csuper.a(objMo27763for));
                                } catch (IOException e7) {
                                    e = e7;
                                    cifCloneCachedTemplate = cif2;
                                    z2 = false;
                                    if (!z2) {
                                    }
                                    throw e;
                                } catch (RuntimeException e8) {
                                    e = e8;
                                    cifCloneCachedTemplate = cif2;
                                    if (cifCloneCachedTemplate != null) {
                                        m27712continue(ctry, cifCloneCachedTemplate, e);
                                    }
                                    throw e;
                                } catch (Throwable th2) {
                                    th = th2;
                                    cstatic3 = cstatic;
                                    if (cstatic3 != null && cstatic3.mo27765try()) {
                                        this.f23363do.closeTemplateSource(cstatic3.mo27763for());
                                    }
                                    throw th;
                                }
                            }
                            if (lastModified == Long.MIN_VALUE) {
                                lastModified = this.f23363do.getLastModified(objMo27763for);
                            }
                            long j2 = lastModified;
                            cstatic2 = cstatic;
                        } catch (IOException e9) {
                            e = e9;
                            cstatic2 = cstatic;
                        } catch (RuntimeException e10) {
                            e = e10;
                            cstatic2 = cstatic;
                        } catch (Throwable th3) {
                            th = th3;
                            cstatic2 = cstatic;
                        }
                        try {
                            Cstatic cstaticM27717public2 = m27717public(this.f23363do, objMo27763for, str, cstatic.mo27764new(), locale, obj, str2, z);
                            cif2.templateOrException = cstaticM27717public2;
                            cif2.lastModified = j2;
                            m27708abstract(ctry, cif2);
                            if (cstatic2.mo27765try()) {
                                this.f23363do.closeTemplateSource(cstatic2.mo27763for());
                            }
                            return cstaticM27717public2;
                        } catch (IOException e11) {
                            e = e11;
                            cifCloneCachedTemplate = cif2;
                            z2 = false;
                            if (!z2) {
                            }
                            throw e;
                        } catch (RuntimeException e12) {
                            e = e12;
                            cifCloneCachedTemplate = cif2;
                            if (cifCloneCachedTemplate != null) {
                            }
                            throw e;
                        } catch (Throwable th4) {
                            th = th4;
                            cstatic3 = cstatic2;
                            if (cstatic3 != null) {
                                this.f23363do.closeTemplateSource(cstatic3.mo27763for());
                            }
                            throw th;
                        }
                    } catch (IOException e13) {
                        e = e13;
                        z2 = false;
                        if (!z2) {
                        }
                        throw e;
                    } catch (RuntimeException e14) {
                        e = e14;
                        if (cifCloneCachedTemplate != null) {
                        }
                        throw e;
                    } catch (Throwable th5) {
                        th = th5;
                        cstatic3 = cstaticM27718return2;
                        if (cstatic3 != null) {
                        }
                        throw th;
                    }
                } catch (RuntimeException e15) {
                    e = e15;
                }
            } catch (IOException e16) {
                e = e16;
            }
            if (!z2) {
                m27712continue(ctry, cifCloneCachedTemplate, e);
            }
            throw e;
        } catch (Throwable th6) {
            th = th6;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private IOException m27723throws(String str, Throwable th) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (th == null) {
            return new IOException(str);
        }
        Method method = f23361throw;
        if (method != null) {
            IOException iOException = new IOException(str);
            try {
                method.invoke(iOException, th);
                return iOException;
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new kb2(e2);
            }
        }
        return new IOException(str + "\nCaused by: " + th.getClass().getName() + ": " + th.getMessage());
    }

    /* renamed from: try, reason: not valid java name */
    private String m27724try(List list, int i, int i2) {
        StringBuilder sb = new StringBuilder((i2 - i) * 16);
        while (i < i2) {
            sb.append(list.get(i));
            sb.append('/');
            i++;
        }
        return sb.toString();
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m27725class() {
        boolean z;
        synchronized (this) {
            z = this.f23366goto;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: const, reason: not valid java name */
    public Cfor m27726const(String str, Locale locale, Object obj, String str2, boolean z) throws IOException {
        w41.check("name", str);
        w41.check("locale", locale);
        w41.check("encoding", str2);
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        try {
            String strMo27777try = this.f23368new.mo27777try(str);
            if (this.f23363do == null) {
                return new Cfor(strMo27777try, "The TemplateLoader was null.");
            }
            Cstatic cstaticM27722throw = m27722throw(strMo27777try, locale, obj, str2, z);
            return cstaticM27722throw != null ? new Cfor(cstaticM27722throw) : new Cfor(strMo27777try, (String) (objArr4 == true ? 1 : 0));
        } catch (fx0 e) {
            if (this.f23368new != Cthrows.f23404do || this.f23369this.getIncompatibleImprovements().intValue() >= ul2.f6931const) {
                throw e;
            }
            return new Cfor((String) (objArr2 == true ? 1 : 0), e);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m27727default(String str, Locale locale, Object obj, String str2, boolean z) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Argument \"name\" can't be null");
        }
        if (locale == null) {
            throw new IllegalArgumentException("Argument \"locale\" can't be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Argument \"encoding\" can't be null");
        }
        String strMo27777try = this.f23368new.mo27777try(str);
        if (strMo27777try == null || this.f23363do == null) {
            return;
        }
        freemarker.log.Cif cif = f23360super;
        boolean zMo29190throw = cif.mo29190throw();
        String strM27715for = zMo29190throw ? m27715for(strMo27777try, locale, obj, str2, z) : null;
        Ctry ctry = new Ctry(strMo27777try, locale, obj, str2, z);
        if (this.f23362case) {
            this.f23367if.remove(ctry);
        } else {
            synchronized (this.f23367if) {
                this.f23367if.remove(ctry);
            }
        }
        if (zMo29190throw) {
            cif.mo29183for(strM27715for + " was removed from the cache, if it was there");
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void m27728extends(String str, Locale locale, String str2, boolean z) throws IOException {
        m27727default(str, locale, null, str2, z);
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public Cstatic m27729final(String str, Locale locale, String str2, boolean z) throws IOException {
        return m27726const(str, locale, null, str2, z).m27741for();
    }

    @Deprecated
    /* renamed from: finally, reason: not valid java name */
    public void m27730finally(freemarker.template.Cdo cdo) {
        this.f23369this = cdo;
        m27734new();
    }

    /* renamed from: goto, reason: not valid java name */
    public CacheStorage m27731goto() {
        return this.f23367if;
    }

    /* renamed from: import, reason: not valid java name */
    public Cswitch m27732import() {
        return this.f23365for;
    }

    /* renamed from: native, reason: not valid java name */
    public Cthrows m27733native() {
        return this.f23368new;
    }

    /* renamed from: new, reason: not valid java name */
    public void m27734new() {
        synchronized (this.f23367if) {
            this.f23367if.clear();
            TemplateLoader templateLoader = this.f23363do;
            if (templateLoader instanceof StatefulTemplateLoader) {
                ((StatefulTemplateLoader) templateLoader).resetState();
            }
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m27735package(long j) {
        synchronized (this) {
            this.f23364else = j;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m27736private(boolean z) {
        synchronized (this) {
            if (this.f23366goto != z) {
                this.f23366goto = z;
                m27734new();
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public Cnative m27737super() {
        return this.f23370try;
    }

    /* renamed from: this, reason: not valid java name */
    public long m27738this() {
        long j;
        synchronized (this) {
            j = this.f23364else;
        }
        return j;
    }

    /* renamed from: while, reason: not valid java name */
    public TemplateLoader m27739while() {
        return this.f23363do;
    }

    @Deprecated
    public Cimport(TemplateLoader templateLoader) {
        this(templateLoader, (freemarker.template.Cdo) null);
    }

    /* renamed from: freemarker.cache.import$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final Cstatic f23371do;

        /* renamed from: for, reason: not valid java name */
        private final String f23372for;

        /* renamed from: if, reason: not valid java name */
        private final String f23373if;

        /* renamed from: new, reason: not valid java name */
        private final fx0 f23374new;

        /* renamed from: do, reason: not valid java name */
        public String m27740do() {
            return this.f23373if;
        }

        /* renamed from: for, reason: not valid java name */
        public Cstatic m27741for() {
            return this.f23371do;
        }

        /* renamed from: if, reason: not valid java name */
        public String m27742if() {
            String str = this.f23372for;
            if (str != null) {
                return str;
            }
            fx0 fx0Var = this.f23374new;
            if (fx0Var != null) {
                return fx0Var.getMalformednessDescription();
            }
            return null;
        }

        private Cfor(Cstatic cstatic) {
            this.f23371do = cstatic;
            this.f23373if = null;
            this.f23372for = null;
            this.f23374new = null;
        }

        private Cfor(String str, fx0 fx0Var) {
            this.f23371do = null;
            this.f23373if = str;
            this.f23372for = null;
            this.f23374new = fx0Var;
        }

        private Cfor(String str, String str2) {
            this.f23371do = null;
            this.f23373if = str;
            this.f23372for = str2;
            this.f23374new = null;
        }
    }

    @Deprecated
    public Cimport(TemplateLoader templateLoader, CacheStorage cacheStorage) {
        this(templateLoader, cacheStorage, null);
    }

    public Cimport(TemplateLoader templateLoader, freemarker.template.Cdo cdo) {
        this(templateLoader, ul2.m8505for(freemarker.template.Cdo.h3), cdo);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Cimport(TemplateLoader templateLoader, CacheStorage cacheStorage, freemarker.template.Cdo cdo) {
        we2 we2Var = freemarker.template.Cdo.h3;
        this(templateLoader, cacheStorage, ul2.m8499catch(we2Var), ul2.m8500class(we2Var), cdo);
    }

    public Cimport(TemplateLoader templateLoader, CacheStorage cacheStorage, Cswitch cswitch, Cthrows cthrows, freemarker.template.Cdo cdo) {
        this(templateLoader, cacheStorage, cswitch, cthrows, null, cdo);
    }

    public Cimport(TemplateLoader templateLoader, CacheStorage cacheStorage, Cswitch cswitch, Cthrows cthrows, Cnative cnative, freemarker.template.Cdo cdo) {
        this.f23364else = f23355break;
        this.f23366goto = true;
        this.f23363do = templateLoader;
        w41.check(freemarker.template.Cdo.b2, cacheStorage);
        this.f23367if = cacheStorage;
        this.f23362case = (cacheStorage instanceof ConcurrentCacheStorage) && ((ConcurrentCacheStorage) cacheStorage).isConcurrent();
        w41.check(freemarker.template.Cdo.C2, cswitch);
        this.f23365for = cswitch;
        w41.check(freemarker.template.Cdo.F2, cthrows);
        this.f23368new = cthrows;
        this.f23370try = cnative;
        this.f23369this = cdo;
    }
}

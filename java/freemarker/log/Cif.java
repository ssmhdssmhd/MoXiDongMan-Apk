package freemarker.log;

import java.io.PrintStream;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

/* renamed from: freemarker.log.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif {

    /* renamed from: break, reason: not valid java name */
    @Deprecated
    public static final String f25052break = "Avalon";

    /* renamed from: case, reason: not valid java name */
    public static final String f25053case = "none";

    /* renamed from: catch, reason: not valid java name */
    public static final int f25054catch = 3;

    /* renamed from: class, reason: not valid java name */
    public static final String f25055class = "Log4j";

    /* renamed from: const, reason: not valid java name */
    public static final int f25056const = 4;

    /* renamed from: default, reason: not valid java name */
    private static final Map f25057default;

    /* renamed from: do, reason: not valid java name */
    public static final String f25058do = "org.freemarker.loggerLibrary";

    /* renamed from: else, reason: not valid java name */
    public static final int f25059else = 1;

    /* renamed from: final, reason: not valid java name */
    public static final String f25060final = "CommonsLogging";

    /* renamed from: for, reason: not valid java name */
    private static final int f25061for = -1;

    /* renamed from: goto, reason: not valid java name */
    public static final String f25062goto = "JUL";

    /* renamed from: if, reason: not valid java name */
    public static final int f25063if = -1;

    /* renamed from: import, reason: not valid java name */
    private static final String f25064import = "org.apache.log4j.FileAppender";

    /* renamed from: native, reason: not valid java name */
    private static final String f25065native = "freemarker.log._Log4jOverSLF4JTester";

    /* renamed from: new, reason: not valid java name */
    public static final String f25066new = "auto";

    /* renamed from: public, reason: not valid java name */
    private static final String[] f25067public;

    /* renamed from: return, reason: not valid java name */
    private static int f25068return = 0;

    /* renamed from: static, reason: not valid java name */
    private static LoggerFactory f25069static = null;

    /* renamed from: super, reason: not valid java name */
    public static final int f25070super = 5;

    /* renamed from: switch, reason: not valid java name */
    private static boolean f25071switch = false;

    /* renamed from: this, reason: not valid java name */
    @Deprecated
    public static final int f25072this = 2;

    /* renamed from: throw, reason: not valid java name */
    public static final String f25073throw = "SLF4J";

    /* renamed from: throws, reason: not valid java name */
    private static String f25074throws = null;

    /* renamed from: try, reason: not valid java name */
    public static final int f25075try = 0;

    /* renamed from: while, reason: not valid java name */
    private static final int f25076while = 5;

    /* renamed from: freemarker.log.if$do, reason: invalid class name */
    public static class Cdo implements PrivilegedAction {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f25077do;

        public Cdo(String str) {
            this.f25077do = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(this.f25077do, null);
        }
    }

    static {
        String[] strArr = {null, f25062goto, "org.apache.log.Logger", f25052break, "org.apache.log4j.Logger", f25055class, "org.apache.commons.logging.Log", f25060final, "org.slf4j.Logger", f25073throw};
        f25067public = strArr;
        if (strArr.length / 2 != 5) {
            throw new AssertionError();
        }
        f25074throws = "";
        f25057default = new HashMap();
    }

    /* renamed from: break, reason: not valid java name */
    public static Cif m29193break(String str) {
        Cif logger;
        if (f25074throws.length() != 0) {
            str = f25074throws + str;
        }
        Map map = f25057default;
        synchronized (map) {
            logger = (Cif) map.get(str);
            if (logger == null) {
                m29208try(false);
                logger = f25069static.getLogger(str);
                map.put(str, logger);
            }
        }
        return logger;
    }

    /* renamed from: catch, reason: not valid java name */
    private static String m29194catch(String str) {
        try {
            return (String) AccessController.doPrivileged(new Cdo(str));
        } catch (AccessControlException unused) {
            m29205switch("Insufficient permissions to read system property \"" + str + "\".");
            return null;
        } catch (Throwable th) {
            m29202return("Failed to read system property \"" + str + "\".", th);
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m29195class() throws ClassNotFoundException {
        try {
            Class.forName(m29200goto(3));
            Class.forName(m29200goto(5));
            try {
                Class.forName(f25064import);
                return false;
            } catch (ClassNotFoundException unused) {
                return ((Boolean) Class.forName("freemarker.log.else").getMethod("test", new Class[0]).invoke(null, new Object[0])).booleanValue();
            }
        } catch (Throwable unused2) {
            return false;
        }
    }

    @Deprecated
    /* renamed from: default, reason: not valid java name */
    public static void m29196default(String str) {
        synchronized (Cif.class) {
            try {
                if (str == null) {
                    throw new IllegalArgumentException();
                }
                f25074throws = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static LoggerFactory m29197do(int i) throws ClassNotFoundException {
        if (i != -1) {
            return m29201if(i);
        }
        int i2 = 5;
        while (i2 >= -1) {
            if (m29204super(i2)) {
                if (i2 == 3 && m29195class()) {
                    i2 = 5;
                }
                try {
                    return m29201if(i2);
                } catch (ClassNotFoundException unused) {
                    continue;
                } catch (Throwable th) {
                    m29202return("Unexpected error when initializing logging for \"" + m29206this(i2) + "\".", th);
                }
            }
            i2--;
        }
        m29205switch("Auto detecton couldn't set up any logger libraries; FreeMarker logging suppressed.");
        return new Cgoto();
    }

    /* renamed from: extends, reason: not valid java name */
    private static synchronized void m29198extends(int i) throws ClassNotFoundException {
        f25069static = m29197do(i);
        f25068return = i;
    }

    /* renamed from: finally, reason: not valid java name */
    private static String m29199finally(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.toString();
        } catch (Throwable unused) {
            return obj.getClass().getName();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m29200goto(int i) {
        if (i == -1 || i == 0) {
            return null;
        }
        return f25067public[(i - 1) * 2];
    }

    /* renamed from: if, reason: not valid java name */
    private static LoggerFactory m29201if(int i) throws ClassNotFoundException {
        String strM29200goto = m29200goto(i);
        if (strM29200goto == null) {
            if (i == 1) {
                return new Ctry();
            }
            if (i == 0) {
                return new Cgoto();
            }
            throw new RuntimeException("Bug");
        }
        Class.forName(strM29200goto);
        String strM29206this = m29206this(i);
        try {
            return (LoggerFactory) Class.forName("freemarker.log._" + strM29206this + "LoggerFactory").newInstance();
        } catch (Exception e) {
            throw new RuntimeException("Unexpected error when creating logger factory for \"" + strM29206this + "\".", e);
        }
    }

    /* renamed from: return, reason: not valid java name */
    private static void m29202return(String str, Throwable th) {
        m29203static(true, str, th);
    }

    /* renamed from: static, reason: not valid java name */
    private static void m29203static(boolean z, String str, Throwable th) {
        boolean z2;
        boolean z3;
        synchronized (Cif.class) {
            LoggerFactory loggerFactory = f25069static;
            z2 = false;
            z3 = (loggerFactory == null || (loggerFactory instanceof Cgoto)) ? false : true;
        }
        if (z3) {
            try {
                Cif cifM29193break = m29193break("freemarker.logger");
                if (z) {
                    cifM29193break.mo29179case(str);
                } else {
                    cifM29193break.mo29187package(str);
                }
                z2 = z3;
            } catch (Throwable unused) {
            }
        } else {
            z2 = z3;
        }
        if (z2) {
            return;
        }
        PrintStream printStream = System.err;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "ERROR" : "WARN");
        sb.append(Cclass.f28652do);
        sb.append(LoggerFactory.class.getName());
        sb.append(": ");
        sb.append(str);
        printStream.println(sb.toString());
        if (th != null) {
            System.err.println("\tException: " + m29199finally(th));
            while (th.getCause() != null) {
                th = th.getCause();
                System.err.println("\tCaused by: " + m29199finally(th));
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m29204super(int i) {
        return (i == -1 || i == 0 || i == 5 || i == 4) ? false : true;
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m29205switch(String str) {
        m29203static(false, str, null);
    }

    /* renamed from: this, reason: not valid java name */
    private static String m29206this(int i) {
        return i == -1 ? f25066new : i == 0 ? "none" : f25067public[((i - 1) * 2) + 1];
    }

    @Deprecated
    /* renamed from: throws, reason: not valid java name */
    public static void m29207throws(int i) throws ClassNotFoundException {
        if (i < -1 || i > 5) {
            throw new IllegalArgumentException("Library enum value out of range");
        }
        synchronized (Cif.class) {
            boolean z = f25069static != null;
            if (!z || i != f25068return) {
                m29208try(true);
                if (!f25071switch || f25069static == null) {
                    int i2 = f25068return;
                    m29198extends(i);
                    f25057default.clear();
                    if (z) {
                        m29205switch("Logger library was already set earlier to \"" + m29206this(i2) + "\"; change to \"" + m29206this(i) + "\" won't effect loggers created earlier.");
                    }
                } else if (i != f25068return) {
                    m29205switch("Ignored " + Cif.class.getName() + ".selectLoggerLibrary(\"" + m29206this(i) + "\") call, because the \"" + f25058do + "\" system property is set to \"" + m29206this(f25068return) + "\".");
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m29208try(boolean z) {
        RuntimeException runtimeException;
        if (f25069static != null) {
            return;
        }
        synchronized (Cif.class) {
            if (f25069static != null) {
                return;
            }
            String strM29194catch = m29194catch(f25058do);
            int i = -1;
            boolean z2 = true;
            if (strM29194catch != null) {
                strM29194catch = strM29194catch.trim();
                int i2 = -1;
                boolean z3 = false;
                do {
                    if (strM29194catch.equalsIgnoreCase(m29206this(i2))) {
                        z3 = true;
                    } else {
                        i2++;
                    }
                    if (i2 > 5) {
                        break;
                    }
                } while (!z3);
                if (!z3) {
                    m29205switch("Ignored invalid \"org.freemarker.loggerLibrary\" system property value: \"" + strM29194catch + "\"");
                    if (z) {
                        return;
                    }
                }
                if (z3) {
                    i = i2;
                }
            } else if (z) {
                return;
            }
            try {
                m29198extends(i);
                if (strM29194catch != null) {
                    f25071switch = true;
                }
            } finally {
                if (z2) {
                    try {
                    } catch (ClassNotFoundException e) {
                    }
                }
            }
        }
    }

    /* renamed from: case */
    public abstract void mo29179case(String str);

    /* renamed from: const */
    public abstract void mo29180const(String str);

    /* renamed from: else */
    public abstract void mo29181else(String str, Throwable th);

    /* renamed from: final */
    public abstract void mo29182final(String str, Throwable th);

    /* renamed from: for */
    public abstract void mo29183for(String str);

    /* renamed from: import */
    public abstract boolean mo29184import();

    /* renamed from: native */
    public abstract boolean mo29185native();

    /* renamed from: new */
    public abstract void mo29186new(String str, Throwable th);

    /* renamed from: package */
    public abstract void mo29187package(String str);

    /* renamed from: private */
    public abstract void mo29188private(String str, Throwable th);

    /* renamed from: public */
    public abstract boolean mo29189public();

    /* renamed from: throw */
    public abstract boolean mo29190throw();

    /* renamed from: while */
    public abstract boolean mo29191while();
}
